# MASC presentations

Decks are written as Marp Markdown in this folder and edited in VS Code. Pushing to `main`
builds each deck into an editable PowerPoint and a PDF and attaches both to a GitHub release.
Nothing is built by hand, and built files are never committed.

## Editing a deck

1. Open the `.md` file in VS Code. The **Marp for VS Code** extension gives a live preview
   that matches the built slides; install it once from the Extensions pane.
2. Edit the Markdown. `---` on its own line starts a new slide.
3. Commit and push. The **Build presentations** workflow runs on every push to `main` and on
   every pull request that touches this folder.
4. Download the result from the release on the repository's Releases page, or, for a pull
   request, from the run's artifacts.

Every build is stamped. The stamp appears in the filename and in the bottom-right corner of
the title slide, so any downloaded file can be traced back to the commit it came from.

## Slide classes

The theme lives in the frontmatter of each deck. A slide picks a layout with a class comment
directly under its `---`:

```markdown
---

<!-- _class: ws -->

## Workstreams and owners
```

| Class | Use it for |
|---|---|
| `title` | Cover slide. Drops the corner logos and centres everything. |
| `agenda` | Numbered agenda with accent-coloured markers. |
| `team` | Roster table on the left, cadence and escalation cards on the right. |
| `why` | Six icon cards in a 3x2 grid. Icons come from `assets/icon-*.svg`, in list order. |
| `cards3` | Icon-free cards in a grid that flexes from 2 to 4+ columns — stage-gate or pillar summaries. |
| `stats` | Big-number stat callouts in a row (`<ul><li><span class="num">…</span><span class="label">…</span><span class="desc">…</span></li></ul>`). |
| `ws` | Wide four-column table (e.g. a skill/behaviour/guardrail/review breakdown). |
| `gates` | Narrow-first-column, two-column reference table (e.g. gate name and scope). |
| `risk` | Four-column risk table: item, severity, control, and the gate that catches it. |
| `deliver` | Deliverables table, narrow first and last columns. |
| `map` | Three-column reference table. |
| `gov` | Cadence table. |
| `steps` | Numbered procedure with accent markers. |
| `next` | Heading-and-paragraph pairs separated by rules. |
| `figure` | Centres a single image. |
| `lead statement` | Oversized centred statement, used for the closing Thank You / Q&A slide. |

A slide with no class gets the default layout: heading, body text, bullets and tables.

Two conventions worth knowing:

- Italic text alone on a line renders as the blue callout box.
- An HTML comment inside a slide becomes speaker notes and is carried into the PowerPoint
  notes pane. The `_class` and `_paginate` comments are directives, not notes.

## Assets

Everything the slides reference lives in `assets/` and is referenced by a relative path.

- `masc-logo.png` — client logo. It sits in the top-right corner of every slide and on the
  cover. Replacing this file and the client name in the deck is all a new client needs.
- `techio-logo.png` — TechIO logo, bottom-left corner and cover.
- `icon-*.svg` — the six icons for the `why` layout (`icon-people`, `icon-shield`, `icon-pillars`,
  `icon-cycle`, `icon-cloud`, `icon-clock`), in that order.
- `project-timeline.mmd` — the Gantt chart source. **Edit the `.mmd`, never the `.png`.**
  The build re-renders every `.mmd` in this folder to a PNG of the same name before the slides
  are generated, so an edited `.mmd` that was not re-rendered locally still produces a correct
  deck in CI. Re-render locally with:

  ```bash
  npx @mermaid-js/mermaid-cli@11 -i assets/project-timeline.mmd -o assets/project-timeline.png -w 1300 -s 2 -b white
  ```

  Commit the regenerated PNG so the deck previews correctly in VS Code and on GitHub.

## Building locally

CI is the source of truth, and a local build is optional. It needs Marp, Mermaid and the exact
LibreOffice version pinned in `scripts/libreoffice-version` — LibreOffice is what produces the
editable PowerPoint, and other versions render bordered boxes and shadows differently. With all
three installed, run `scripts/build-presentations.sh` from the repository root; it writes to
`dist/`, which is ignored by Git. A version mismatch warns locally and fails the pipeline.

## Adding a deck

Copy an existing `.md` file and rename it. The filename becomes the name of the built files, so
use the name the deck should ship under. The build picks up every `.md` in this folder whose
frontmatter contains `marp: true`; this README has none, so it is skipped.
