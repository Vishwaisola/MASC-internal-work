---
marp: true
theme: default
paginate: true
header: ''
style: |
  :root { --navy:#0B2A4A; --accent:#2E7DD1; --ink:#1b1b1b; --muted:#5b6670; }
  section {
    font-family: 'Noto Sans', 'Helvetica Neue', Arial, sans-serif;
    font-size: 22px; line-height: 1.5; color: var(--ink);
    font-variant-ligatures: none;
    padding: 66px 76px 110px 76px;
    justify-content: flex-start !important;
    align-content: flex-start !important;
    background-image: url('assets/techio-logo.png'), url('assets/masc-logo.png');
    background-repeat: no-repeat, no-repeat;
    background-position: 50px calc(100% - 34px), calc(100% - 48px) 26px;
    background-size: 56px, 92px;
  }
  h1 { color: var(--navy); font-size: 44px; font-weight: 700; letter-spacing: -0.022em; line-height: 1.15; }
  h2 {
    color: var(--navy); font-size: 34px; font-weight: 700; letter-spacing: -0.015em;
    border-bottom: 3px solid var(--accent); padding-bottom: 10px; margin: 0 0 26px;
  }
  h3 { color: var(--accent); font-size: 23px; font-weight: 700; margin-bottom: 4px; }
  p { margin: 0 0 15px; }
  strong { color: var(--accent); font-weight: 700; }
  em { color: var(--muted); font-style: normal; }
  ul, ol { margin: 0 0 15px; }
  li { margin-bottom: 14px; }
  table {
    font-size: 18px; border-collapse: collapse;
    width: 100% !important; min-width: 100%; table-layout: fixed;
  }
  th, td { padding: 13px 17px; vertical-align: top; }
  th { font-weight: 700 !important; color: var(--navy); text-align: left; }
  td { font-weight: 400 !important; }
  th:first-child, td:first-child { font-weight: 700 !important; color: var(--navy); }
  section.team {
    display: grid; grid-template-columns: 1.55fr 1fr; column-gap: 28px;
    grid-template-rows: auto auto auto 1fr; align-content: start !important;
  }
  section.team h2 { grid-column: 1 / -1; }
  section.team table { grid-column: 1; grid-row: 2 / span 3; align-self: start; }
  section.team blockquote {
    grid-column: 2; margin: 0 0 18px; padding: 14px 22px 6px;
    background: #fff; border: 1px solid #DCE6F2; border-radius: 12px;
    box-shadow: 0 2px 8px rgba(11,42,74,.08); font-size: 18px; line-height: 1.4;
  }
  section.team blockquote + blockquote { background: #EAF2FB; }
  section.team blockquote p { color: var(--navy); font-weight: 700; font-size: 20px; margin: 0 0 6px; }
  section.team blockquote ul { padding-left: 22px; margin: 0 0 8px; }
  section.team blockquote li { margin-bottom: 5px; font-size: 18px; }
  section.team table { font-size: 18px; }
  section.team th, section.team td { padding: 8px 14px; }
  section.team th:nth-child(1), section.team td:nth-child(1) { width: 58%; }
  section.ws table { font-size: 18px; }
  section.ws th, section.ws td { padding: 6px 12px; line-height: 1.35; }
  section.ws th:nth-child(1), section.ws td:nth-child(1) { width: 72px; }
  section.ws th:nth-child(2), section.ws td:nth-child(2) { width: 440px; }
  section.ws th:nth-child(3), section.ws td:nth-child(3) { width: 300px; }
  section.ws th:nth-child(4), section.ws td:nth-child(4) { width: 316px; }
  section.gates table { font-size: 18px; }
  section.gates th, section.gates td { padding: 8px 14px; }
  section.gates th:nth-child(1), section.gates td:nth-child(1) { width: 24%; }
  section.risk table { font-size: 16px; }
  section.risk th, section.risk td { padding: 8px 13px; line-height: 1.3; }
  section.risk th:nth-child(1), section.risk td:nth-child(1) { width: 33%; }
  section.risk th:nth-child(2), section.risk td:nth-child(2) { width: 11%; }
  section.risk th:nth-child(4), section.risk td:nth-child(4) { width: 15%; }
  section.context { line-height: 1.38; }
  section.context li { margin-bottom: 6px; }
  section.context p em:only-child { margin: 0 0 16px; padding: 12px 18px; }
  section.why ul, section.cards3 ul {
    list-style: none; padding: 0; margin: 8px 0 0;
    display: grid; grid-template-columns: repeat(3, 1fr); gap: 22px;
  }
  section.why li, section.cards3 li {
    margin: 0; padding: 20px 22px 18px; min-height: 150px;
    background: #F4F8FD; border-radius: 6px; font-size: 19px; line-height: 1.35; color: var(--muted);
  }
  section.why li strong, section.cards3 li strong { display: block; color: var(--navy); font-size: 23px; margin-bottom: 6px; }
  section.why li::before { content: ''; display: block; width: 44px; height: 44px; margin-bottom: 12px; background-size: contain; background-repeat: no-repeat; }
  section.why li:nth-child(1)::before { background-image: url('assets/icon-people.svg'); }
  section.why li:nth-child(2)::before { background-image: url('assets/icon-shield.svg'); }
  section.why li:nth-child(3)::before { background-image: url('assets/icon-pillars.svg'); }
  section.why li:nth-child(4)::before { background-image: url('assets/icon-cycle.svg'); }
  section.why li:nth-child(5)::before { background-image: url('assets/icon-cloud.svg'); }
  section.why li:nth-child(6)::before { background-image: url('assets/icon-clock.svg'); }
  section.cards3 ul { grid-template-columns: repeat(auto-fit, minmax(230px, 1fr)); }
  section.cards3 li { min-height: 0; }
  section.stats ul {
    list-style: none; padding: 0; margin: 20px 0 0;
    display: grid; grid-template-columns: repeat(4, 1fr); gap: 20px;
  }
  section.stats li { margin: 0; text-align: center; padding: 0 8px; }
  section.stats .num { display: block; font-size: 54px; font-weight: 700; color: var(--accent); line-height: 1; }
  section.stats .label { display: block; color: var(--navy); font-weight: 700; font-size: 17px; margin-top: 10px; }
  section.stats .desc { display: block; color: var(--muted); font-size: 14px; margin-top: 4px; line-height: 1.3; }
  section.next h3 { margin: 0 0 4px; }
  section.next h3 + p { margin: 0 0 14px; padding-bottom: 14px; border-bottom: 1px solid #E6EBF1; }
  section.next h3:last-of-type + p { border-bottom: 0; }
  section.steps li { margin-bottom: 12px; }
  section.steps li::marker { color: var(--accent); font-weight: 700; }
  section.figure img { display: block; margin: 0 auto; }
  section.lead { justify-content: center !important; align-content: center !important; text-align: center; }
  section.statement h1 { font-size: 84px; letter-spacing: -0.03em; margin: 0; }
  section::after { color: var(--muted); font-size: 15px; }
  section.agenda ol { line-height: 1.34; padding-left: 34px; margin-top: 2px; }
  section.agenda > ol > li { padding-left: 8px; margin-bottom: 8px; }
  section.agenda li::marker { color: var(--accent); font-weight: 700; }
  section p em:only-child {
    display: block;
    background: #EAF2FB;
    border-left: 5px solid var(--accent);
    border-radius: 9px;
    color: var(--navy); font-weight: 700; font-style: normal;
    font-size: 17px; line-height: 1.45;
    padding: 13px 18px; margin: 18px 0 0;
  }
  section.title {
    background-image: none;
    justify-content: center !important; align-content: center !important;
    text-align: center; padding: 56px 84px;
  }
  section.title h1 { font-size: 52px; margin: 0 0 16px; }
  section.title h3 {
    color: var(--muted); font-weight: 400; font-size: 25px;
    letter-spacing: 0; margin: 0 0 56px;
  }
  section.title img { vertical-align: middle; margin: 0 30px; }
  section.title p { margin: 0; font-size: 20px; color: var(--muted); line-height: 1.6; }
  section.title p:last-of-type { margin-top: 56px; }
---

<!-- _class: title -->
<!-- _paginate: false -->

# MASC Client.Api Modernization

### Status Update — Prepared for MASC · Executive discussion

![h:84](assets/masc-logo.png) ![h:84](assets/techio-logo.png)

TechIO<br>Thursday, October 8, 2026

---

<!-- _class: agenda -->

## Agenda

1. **The Approach: Modernization Agents** — a specialized agent for each job, not one black box
2. **Humans in the Loop** — TechioSoft's Tech Lead makes the risky calls
3. **Stage Gates & Risks** — nothing risky merges without passing a gate
4. **The Loop: Prompts → Outputs → Refinement** — how a request becomes a reviewed change
5. **Reviews, Quality & Security** — real-data testing found what compilers couldn't
6. **Progress, Timeline & What's Next** — ahead of plan; deployment and sign-off remain

---

<!-- _class: why -->

## At a Glance

*Specialized agents build; the TechioSoft Tech Lead decides every risky call.*

- **Agents & skills**
  A specialized agent for each job, not one black box
- **Human-gated**
  TechioSoft's Tech Lead makes every risky call
- **Stage gates**
  Nothing risky merges without passing a gate
- **Iterative loop**
  Prompt, output, refine — every step leaves an artifact
- **Cloud-ready**
  Hardened security, ready for Azure deployment
- **Ahead of plan**
  34% faster, with deployment and sign-off remaining

<!--
This slide previews the agenda. Each card maps to one of the six sections that follow.
-->

---

## The Approach: Modernization Agents

A specialized agent for each job — not one black box. The TechioSoft Tech Lead prompts, agents execute, and the Tech Lead reviews and approves.

| Agent / Skill | Role |
|---|---|
| Modernization Lead | Orchestrates the plan, one unit at a time |
| State Tracker | Single source of truth — live progress dashboard |
| Branch & PR Orchestrator | One branch/PR per unit, with a self-healing build loop |
| Vertical-Slice / Parity Validator | Generates and checks each feature slice |
| Security Review | Vulnerability and dependency scanning |

---

<!-- _class: ws -->

## Agent Skills in Detail

Five skills, each with a narrow job and a built-in guardrail. TechIO reviews what each one produces.

| Skill | What it does | Guardrail built in | What TechIO reviews |
|---|---|---|---|
| Modernization Lead | Orchestrates the plan: decides what, when, who and on which branch. | Never writes production source code. | A reviewable PR for every stage, with auto-generated docs |
| State Tracker | Single source of truth for all 14 slices. Powers the live progress dashboard. | A validation gate enforces slicing rules R1–R10 before any phase or slice moves. | Live progress dashboard |
| Branch & PR Orchestrator | Opens one branch and one PR per stage. Runs the self-healing build loop. | No silent commits to main. Up to 5 fix retries, then a draft PR with the failure log. | PR summary, test and parity reports, self-healing log, state diff |
| Vertical Slice / Parity Validator | Generates and checks each feature slice end to end, from domain to web and tests. | Slices come from analysis of the legacy app. One owner per slice, with parity sign-off. | Parity report for each slice |
| Security Review | Scans code and dependencies for vulnerabilities. | Runs as a gate in the workflow. Security changes need a human to merge. | Scan findings — e.g., a vulnerable Graph dependency pinned away from a known CVE |

---

<!-- _class: steps -->

## Humans in the Loop

People make the risky calls. Agents do the repeatable work.

1. **Tech Lead prompts** — the TechioSoft Tech Lead sets the intent for each stage.
2. **Agents build** — branch, code, tests and the self-healing loop.
3. **Tech Lead approves** — the TechioSoft Tech Lead reviews the PR and parity reports.
4. **MASC reviews** — MASC reviews the PR and demo, and confirms parity before Phase 4.

*Human gates: data-parity sign-off against Azure SQL, authentication and live-token validation, and live-Azure deployment steps. Agents cannot merge a database or security change alone.*

---

## Good Practices We Follow

- One branch and one PR per stage. Nothing merges to main until UAT passes.
- Golden master captured on .NET 4.8 before any code changes.
- We work inside MASC's environment: your VM, Azure DevOps repos and Dev database.
- MASC confirms data and auth parity before Phase 4 starts.

---

<!-- _class: team -->

## Our Delivery Team & Cadence

| TechIO | Role |
|---|---|
| Sparsh Dutta | Tech Lead — full-stack development, testing and QA |
| Dinakara Kaushik Dhulipala | DevOps |
| Vishwa Isola | PMO and delivery oversight |

> Cadence with MASC
>
> - **Demo:** 1-hour session as each phase completes
> - **Technical sync:** weekly, 30 minutes
> - **Status report:** weekly

> Escalation path
>
> - Vishwa Isola → Munish Saldhi → Project Sponsors

---

<!-- _class: cards3 -->

## Stage Gates & Governance

The agent can't merge a database or security change on its own — those are gated to the TechioSoft Tech Lead. Governance is built into the workflow.

- **Phase gates (L0–L5)**
  Foundation must be green before any feature work begins
- **Slicing rules (R1–R10)**
  Anchor-first, size caps, frozen data models — small, reviewable changes with a full audit trail
- **Human gates (L3)**
  Data parity, authentication and live-Azure steps are agent-scaffolded but validated by the TechioSoft Tech Lead

---

<!-- _class: gates -->

## Phase Gates at a Glance

14 slices pass through five gates. Every slice clears eight checks: Domain · App · Infra · Web · Unit · Integration · E2E · Parity. L3 is a human gate.

| Gate | Scope |
|---|---|
| L0 — Foundation | 9 slices: shared libraries, settings, auth and MVC base |
| L2 — Host | 1 slice: API host, 20 controllers, dependency injection |
| L3 — Data & identity | 3 slices: EF Core data access, MSAL token validation — human gate |
| L4 — Observability | 1 slice: observability and the Linux container |
| L5 — CI/CD | Pipeline must be done before reporting slices start |

---

<!-- _class: risk -->

## Key Risks & Controls

Each known risk has a control and a gate that catches it.

| Risk | Severity | How we control it | Gate |
|---|---|---|---|
| EF6 → EF Core query and behavior drift | High | Validate data parity against Azure SQL before any tuning | L3 human gate |
| OWIN → ASP.NET Core port, the biggest single rewrite | High | Golden-master tests on auth flows | L0 foundation |
| B2C token validation regression (ADAL → MSAL) | Medium | Explicit authorization tests, reviewed by the TechioSoft Tech Lead | L3 human gate |
| Contract drift across 20 controllers | Medium | Golden master captured on .NET 4.8 before code changes | L2 host |
| A reference labeled "dead" was still registered | Resolved | Caught on self-heal iteration 2 — lesson: check "dead" code with a real build, not grep alone | Build + closure trace |

---

<!-- _class: next -->

## The Loop: Prompts → Outputs → Refinement

Human intent in, reviewed change out — iteratively. It's a conversation: the Tech Lead asks, the agent produces a reviewable PR, and we refine. Every step leaves a documented artifact.

### Prompt

"Port the 20 controllers to ASP.NET Core."

### Output

20 controllers migrated, with 59 endpoints reconciled 1:1 with the legacy app.

### Refinement

Review caught runtime parity bugs a green build missed — model binding and ambiguous routes — and they were fixed.

### Artifacts produced along the way

Endpoint inventory · contract-parity test harness · live progress dashboard · access checklist · local-run guide

---

<!-- _class: stats -->

## Reviews & Quality: Real Bugs Caught

AI review and real-data testing found what compilers couldn't. These are subtle behavioral bugs that would have hit production — caught early by actually running the app, not just compiling it.

<ul>
<li><span class="num">8</span><span class="label">EF6 → EF Core parity bugs</span><span class="desc">Surfaced by running the modern app against the real database — all fixed</span></li>
<li><span class="num">6</span><span class="label">Self-healing fix cycles</span><span class="desc">100% converged, averaging 2 iterations</span></li>
<li><span class="num">2</span><span class="label">Runtime-only defects</span><span class="desc">An independent code-review agent caught defects a passing build hid</span></li>
<li><span class="num">22</span><span class="label">Endpoints</span><span class="desc">The modern API now returns real client data from the Dev database</span></li>
</ul>

---

<!-- _class: cards3 -->

## Security by Design

We didn't just port the code — we removed deprecated auth libraries, eliminated in-code secrets, and closed a dependency vulnerability. Modernization hardened the security posture.

- **Legacy auth retired**
  ADAL → MSAL; B2C bearer-token validation rebuilt on ASP.NET Core
- **No secrets in code**
  Azure Key Vault and Managed Identity (DefaultAzureCredential)
- **Security review as a gate**
  Dependency and vulnerability scanning built into the workflow
- **Vulnerable dependency avoided**
  Pinned Microsoft Graph to dodge a known CVE in Kiota 1.x

---

<!-- _class: next -->

## Progress & What's Next

Application code is feature-complete; deployment and sign-off remain.

### Done & merged

Modern host with 20 controllers and dependency injection, the EF Core data layer, authentication (S13), and observability.

### Parity testing

The modernized app runs today against the real Dev database and returns real data.

### Human-gated next

Data-parity sign-off · live-token auth validation · Azure deployment and CI/CD · security scan.

*Target: 2nd week of October 2026.*

---

<!-- _class: figure -->

## Project Timeline

![w:1090](assets/project-timeline.png)

*Ahead of plan: Phases 0–3 complete. AI agents cut our timeline by 34% — 34 planned business days down to 23.*

<!--
How the percentage is calculated: the plan's build work (Phase 0 start Sep 10 to Phase 6 end Oct 29)
is 34 business days (BC statutory holidays excluded). Completing all work by Oct 10 is 21 business
days: 1 - 21/34 = 38%. Calendar days give the same result: 31 vs 50 days. If demo and UAT handover
(Nov 2) were counted in the baseline, it would be 42%.
Note: the source deck's headline states 34%, but this note computes 38%, and the body text names
both Oct 10 and Oct 12 as the target date — confirm which figures to use before presenting.
-->

---

<!-- _class: lead statement -->
<!-- _paginate: false -->

# Thank You

### Questions and discussion
