#!/usr/bin/env bash
# Builds every Marp deck in presentations/ into dist/ as an editable PowerPoint and a PDF.
# The pipeline runs this script; it also runs locally when marp and LibreOffice are installed.
#
# Every output carries a build stamp so a downloaded file can be traced to its release:
#   - in the filename:      "<deck> - build-<number>_<date>_<commit>.pptx"
#   - on the title slide:   "Build <number> · <date> · <commit>" in the bottom-right corner
# BUILD_NUMBER and BUILD_SHA come from the pipeline. A local build is stamped "local".
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
out="$root/dist"
mkdir -p "$out"
cd "$root/presentations"

build_number="${BUILD_NUMBER:-local}"
build_date="$(date -u +%Y-%m-%d)"
build_sha="${BUILD_SHA:-$(git -C "$root" rev-parse HEAD)}"
build_sha="${build_sha:0:7}"
build_id="build-${build_number}_${build_date}_${build_sha}"
build_label="Build ${build_number} · ${build_date} · ${build_sha}"
echo "==> $build_label"
if [ -n "${GITHUB_OUTPUT:-}" ]; then
  {
    echo "build_id=$build_id"
    echo "build_label=$build_label"
  } >> "$GITHUB_OUTPUT"
fi

# LibreOffice produces the editable PowerPoint, and different versions produce visibly
# different slides. Every build uses the version pinned in scripts/libreoffice-version.
# A mismatch fails the pipeline and warns locally.
pinned_lo="$(tr -d '[:space:]' < "$root/scripts/libreoffice-version")"
soffice="${SOFFICE_PATH:-$(command -v soffice || true)}"
actual_lo="$("${soffice:-soffice}" --version 2>/dev/null </dev/null | awk '{print $2}' || true)"
if [ "$actual_lo" != "$pinned_lo" ]; then
  msg="LibreOffice ${actual_lo:-not found} is installed, but scripts/libreoffice-version pins $pinned_lo; the PowerPoint will not match the pipeline's"
  if [ -n "${GITHUB_ACTIONS:-}" ]; then
    echo "ERROR: $msg" >&2
    exit 1
  fi
  echo "WARNING: $msg" >&2
fi
echo "==> LibreOffice $actual_lo"

if command -v mmdc >/dev/null 2>&1; then
  mermaid=(mmdc)
else
  mermaid=(npx --yes @mermaid-js/mermaid-cli@11)
fi

# Render each Mermaid diagram source to the PNG the slides reference.
for diagram in assets/*.mmd; do
  [ -e "$diagram" ] || continue
  echo "==> diagram: $diagram"
  "${mermaid[@]}" -i "$diagram" -o "${diagram%.mmd}.png" -w 1300 -s 2 -b white \
    ${PUPPETEER_CONFIG:+-p "$PUPPETEER_CONFIG"} </dev/null
done

# The stamped copy sits beside the deck so its relative asset paths still resolve.
stamped=".build-stamped.md"
trap 'rm -f "$stamped"' EXIT

built=0
for deck in *.md; do
  [ -e "$deck" ] || continue
  grep -q '^marp: true' "$deck" || continue
  name="${deck%.md}"
  target="$out/$name - $build_id"
  echo "==> deck: $name"

  cp "$deck" "$stamped"
  cat >> "$stamped" <<STAMP

<style>
section[id="1"]::before {
  content: '$build_label';
  position: absolute; right: 44px; bottom: 26px;
  font-size: 13px; font-weight: 400; color: #5b6670;
}
</style>
STAMP

  marp "$stamped" -o "$target.pptx" --pptx --pptx-editable --allow-local-files </dev/null
  marp "$stamped" -o "$target.pdf" --pdf --allow-local-files </dev/null

  # An editable deck is a few hundred kilobytes. Several megabytes means the
  # slides were rendered as images and cannot be edited.
  size=$(wc -c < "$target.pptx")
  if [ "$size" -gt 2500000 ]; then
    echo "ERROR: $name.pptx is $size bytes; it was built as images, not editable slides" >&2
    exit 1
  fi
  built=$((built + 1))
done

if [ "$built" -eq 0 ]; then
  echo "ERROR: no Marp decks found in presentations/" >&2
  exit 1
fi

echo "==> built $built deck(s) into dist/"
ls -l "$out"
