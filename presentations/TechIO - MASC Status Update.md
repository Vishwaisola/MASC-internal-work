---
marp: true
theme: default
paginate: true
header: ''
style: |
  @import url('https://fonts.googleapis.com/css2?family=PT+Sans:ital,wght@0,400;0,700;0,900;1,400&display=swap');
  :root { --navy:#194722; --accent:#37782C; --ink:#1b1b1b; --muted:#5B6B5C; }
  section {
    font-family: 'PT Sans', 'Myriad Pro', 'Helvetica Neue', Arial, sans-serif;
    font-size: 24px; line-height: 1.5; color: var(--ink);
    font-variant-ligatures: none;
    padding: 66px 76px 110px 76px;
    justify-content: flex-start !important;
    align-content: flex-start !important;
    background-color: #F6F9F2;
    border-top: 6px solid var(--accent);
    background-image: url('assets/techio-logo.png'), url('assets/masc-logo.png');
    background-repeat: no-repeat, no-repeat;
    background-position: 50px calc(100% - 34px), calc(100% - 48px) 26px;
    background-size: 56px, 92px;
  }
  h1 { color: var(--navy); font-size: 48px; font-weight: 700; letter-spacing: -0.022em; line-height: 1.15; }
  h2 {
    color: var(--navy); font-size: 38px; font-weight: 700; letter-spacing: -0.015em;
    border-bottom: 3px solid var(--accent); padding-bottom: 10px; margin: 0 0 26px;
  }
  h3 { color: var(--accent); font-size: 25px; font-weight: 700; margin-bottom: 4px; }
  p { margin: 0 0 15px; }
  strong { color: var(--accent); font-weight: 700; }
  em { color: var(--muted); font-style: normal; }
  ul, ol { margin: 0 0 15px; }
  li { margin-bottom: 14px; }
  table {
    font-size: 20px; border-collapse: collapse;
    width: 100% !important; min-width: 100%; table-layout: fixed;
    border: 1px solid #E8C530;
  }
  th, td { padding: 13px 17px; vertical-align: top; border: 1px solid #E8C530; background: #FFFBE5; }
  th { font-weight: 700 !important; color: var(--navy); text-align: left; background: #FFEE94; }
  td { font-weight: 400 !important; }
  tr:nth-child(even) td { background: #FFF3B8; }
  th:first-child, td:first-child { font-weight: 700 !important; color: var(--navy); }
  section.team {
    display: grid; grid-template-columns: 1.55fr 1fr; column-gap: 28px;
    grid-template-rows: auto auto auto 1fr; align-content: start !important;
  }
  section.team h2 { grid-column: 1 / -1; }
  section.team table { grid-column: 1; grid-row: 2 / span 3; align-self: start; }
  section.team blockquote {
    grid-column: 2; margin: 0 0 18px; padding: 14px 22px 6px;
    background: #fff; border: 1px solid #D7E6C9; border-radius: 12px;
    box-shadow: 0 2px 8px rgba(25,71,34,.08); font-size: 19px; line-height: 1.4;
  }
  section.team blockquote + blockquote { background: #E8F1DE; }
  section.team blockquote p { color: var(--navy); font-weight: 700; font-size: 21px; margin: 0 0 6px; }
  section.team blockquote ul { padding-left: 22px; margin: 0 0 8px; }
  section.team blockquote li { margin-bottom: 5px; font-size: 19px; }
  section.team table { font-size: 19px; }
  section.team th, section.team td { padding: 8px 14px; }
  section.team th:nth-child(1), section.team td:nth-child(1) { width: 58%; }
  section.ws table { font-size: 19px; }
  section.ws th, section.ws td { padding: 5px 10px; line-height: 1.3; }
  section.ws th:nth-child(1), section.ws td:nth-child(1) { width: 112px; }
  section.ws th:nth-child(2), section.ws td:nth-child(2) { width: 408px; }
  section.ws th:nth-child(3), section.ws td:nth-child(3) { width: 300px; }
  section.ws th:nth-child(4), section.ws td:nth-child(4) { width: 308px; }
  section.gates table { font-size: 20px; }
  section.gates th, section.gates td { padding: 8px 14px; }
  section.gates th:nth-child(1), section.gates td:nth-child(1) { width: 24%; }
  section.risk table { font-size: 17px; }
  section.risk th, section.risk td { padding: 8px 13px; line-height: 1.3; }
  section.risk th:nth-child(1), section.risk td:nth-child(1) { width: 33%; }
  section.risk th:nth-child(2), section.risk td:nth-child(2) { width: 11%; }
  section.risk th:nth-child(4), section.risk td:nth-child(4) { width: 15%; }
  section.phases table { font-size: 19px; }
  section.phases th, section.phases td { padding: 8px 14px; line-height: 1.3; }
  section.phases th:nth-child(1), section.phases td:nth-child(1) { width: 9%; }
  section.phases th:nth-child(2), section.phases td:nth-child(2) { width: 20%; }
  section.phases th:nth-child(3), section.phases td:nth-child(3) { width: 11%; }
  section.phases th:nth-child(4), section.phases td:nth-child(4) { width: 60%; }
  section.context { line-height: 1.38; }
  section.context li { margin-bottom: 6px; }
  section.context p em:only-child { margin: 0 0 16px; padding: 12px 18px; }
  section.why ul, section.cards3 ul {
    list-style: none; padding: 0; margin: 8px 0 0;
    display: grid; grid-template-columns: repeat(3, 1fr); gap: 22px;
  }
  section.why li, section.cards3 li {
    margin: 0; padding: 20px 22px 18px; min-height: 150px;
    background: #EFF6E9; border-radius: 6px; font-size: 20px; line-height: 1.35; color: var(--muted);
  }
  section.why li strong, section.cards3 li strong { display: block; color: var(--navy); font-size: 24px; margin-bottom: 6px; }
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
  section.stats .num { display: block; font-size: 58px; font-weight: 700; color: var(--accent); line-height: 1; }
  section.stats .label { display: block; color: var(--navy); font-weight: 700; font-size: 18px; margin-top: 10px; }
  section.stats .desc { display: block; color: var(--muted); font-size: 15px; margin-top: 4px; line-height: 1.3; }
  section.next h3 { margin: 0 0 4px; }
  section.next h3 + p { margin: 0 0 14px; padding-bottom: 14px; border-bottom: 1px solid #DCE8D3; }
  section.next h3:last-of-type + p { border-bottom: 0; }
  section.steps li { margin-bottom: 12px; }
  section.steps li::marker { color: var(--accent); font-weight: 700; }
  section.figure img { display: block; margin: 0 auto; }
  .legend { margin: 2px 0 0; font-size: 15px; color: var(--muted); }
  .legend .sw { display: inline-block; width: 12px; height: 12px; border-radius: 2px; margin: 0 6px -1px 18px; vertical-align: middle; }
  .legend .sw:first-child { margin-left: 0; }
  .legend .sw.done { background: #8EBF3F; border: 1px solid var(--accent); }
  .legend .sw.planned { background: var(--accent); }
  .legend .sw.target { background: #2E7DD1; border-radius: 50%; }
  section.lead { justify-content: center !important; align-content: center !important; text-align: center; }
  section.statement h1 { font-size: 90px; letter-spacing: -0.03em; margin: 0; }
  section::after { color: var(--muted); font-size: 16px; }
  section.agenda ol { line-height: 1.34; padding-left: 34px; margin-top: 2px; }
  section.agenda > ol > li { padding-left: 8px; margin-bottom: 8px; }
  section.agenda li::marker { color: var(--accent); font-weight: 700; }
  section p em:only-child {
    display: block;
    background: #E8F1DE;
    border-left: 5px solid var(--accent);
    border-radius: 9px;
    color: var(--navy); font-weight: 700; font-style: normal;
    font-size: 18px; line-height: 1.45;
    padding: 11px 18px; margin: 12px 0 0;
  }
  section.title {
    background-image: none;
    justify-content: center !important; align-content: center !important;
    text-align: center; padding: 56px 84px;
  }
  section.title h1 { font-size: 56px; margin: 0 0 16px; }
  section.title h3 {
    color: var(--muted); font-weight: 400; font-size: 27px;
    letter-spacing: 0; margin: 0 0 56px;
  }
  section.title img { vertical-align: middle; margin: 0 30px; }
  section.title p { margin: 0; font-size: 22px; color: var(--muted); line-height: 1.6; }
  section.title p:last-of-type { margin-top: 56px; }
---

<!-- _class: title -->
<!-- _paginate: false -->

# MASC Client.Api Modernization

![h:84](assets/masc-logo.png) ![h:84](assets/techio-logo.png)

TechIO<br>Friday, October 16, 2026

---

<!-- _class: agenda -->

## Agenda

1. **Introductions**
2. **Project Phases & Key Deliverables**
3. **Modernization Approach & Agents**
4. **Humans in the Loop & Governance**
5. **The Loop: Prompts → Outputs → Refinement**
6. **Reviews, Parity & Security**
7. **Progress, Timeline & What's Next**

---

<!-- _class: team -->

## Introductions

| TechIO | Role |
|---|---|
| Sparsh Dutta | Tech Lead, also performs QA checks |
| Dinakara Kaushik Dhulipala | Senior DevOps Engineer |
| Vishwa Isola | Technical Program Manager |
| Munish Saldhi (Executive Sponsor) | Director of Business Development and Customer Success |

> Decision authority
>
> - **Operational:** TPM
> - **Technical direction:** Tech Lead
> - **Scope and acceptance:** Executive Sponsor

> Escalation path
>
> - **L1:** Technical team ↔ workstream SME
> - **L2:** Project Manager ↔ Tech Lead
> - **L3:** Executive Sponsors, both sides

---

<!-- _class: phases -->

## Project Phases & Key Deliverables

| Phase | Description | Status | Key Activities |
|---|---|---|---|
| Phase 0 | Dependency Pruning | Complete | Removed dead references; migrated legacy dependencies to .NET 10 |
| Phase 1 | Foundation & Config | Complete | New Client.Api foundation, scaffolded with dependency injection and modern config and secrets |
| Phase 2 | Host & Framework | Complete | Hosting migrated to Kestrel/ASP.NET Core; routing and controllers preserved |
| Phase 3 | Data & Identity | Complete | EF6 migrated to EF Core 10; ADAL retired for MSAL; token parity validated |
| Phase 4 | Observability | Complete | Performance checks; Azure Monitor and App Insights integrated |
| Phase 5 | Cloud Deployment | Complete | CI/CD, secrets and monitoring wired up; staging deployment complete |
| Phase 6 | Integration & QA | Complete | Full integration testing, security scan and documentation complete |
| Phase 7 | UAT Handover | Not Started | UAT execution and sign-off; handover to MASC |

---

<!-- _class: why -->

## Modernization Approach

- **Agents & skills**
  A specialized agent for each job, not one black box
- **Human-gated**
  TechioSoft's Tech Lead makes every risky call
- **Stage gates**
  Nothing risky merges without passing a gate
- **Iterative loop**
  Prompt, output, refine. Every step leaves an artifact
- **Cloud-ready**
  Hardened security, ready for Azure deployment
- **Ahead of plan**
  34% faster, with demo and sign-off remaining

<!--
Specialized agents build; the TechioSoft Tech Lead decides every risky call.
This slide previews the agenda. Each card maps to one of the six sections that follow.
-->

---

<!-- _class: steps -->

## Agents

Two .NET agents carry the work, in order.

1. **.NET Discovery Agent:** analyzes the legacy app and produces the endpoint inventory and slicing plan.
2. **.NET Modernizing Agent:** turns that plan into reviewed code, one unit at a time, not a black box.

### How the Modernizing Agent works

- **Input:** the slicing plan and endpoint inventory from the Discovery Agent.
- **Process:** the Modernization Lead orchestrates the build, test and self-healing fix loop, without writing production code itself.
- **Output:** a reviewable PR for every stage; the TechioSoft Tech Lead reviews and approves before anything merges.

---

<!-- _class: ws -->

## Modernizing Agent Skills in Detail

**Modernization Lead's** four skills, each with a guardrail and a TechIO review.

| Skill | What it does | Guardrail built in | What TechIO reviews |
|---|---|---|---|
| State Tracker | Single source of truth for 14 slices; powers the live dashboard. | Validation gate enforces slicing rules R1–R10. | Live progress dashboard |
| Branch & PR Orchestrator | One branch/PR per stage; runs the self-healing build loop. | No silent commits; up to 5 fix retries, then a draft PR with the failure log. | PR summary, test and parity reports, self-healing log, state diff |
| Vertical Slice / Parity Validator | Generates and checks each slice end to end, domain to web and tests. | One owner per slice, with parity sign-off. | Parity report for each slice |
| Security Review | Scans code and dependencies for vulnerabilities. | Gate in the workflow; security changes need a human to merge. | Scan findings, e.g., a CVE-pinned Graph dependency |

---

<!-- _class: steps -->

## Humans in the Loop

People make the risky calls. Agents do the repeatable work.

1. **Tech Lead prompts:** the TechioSoft Tech Lead sets the intent for each stage.
2. **Agents build:** branch, code, tests and the self-healing loop.
3. **Tech Lead approves:** the TechioSoft Tech Lead reviews the PR and parity reports.
4. **MASC reviews:** MASC reviews the PR and demo, and confirms parity before Phase 4.

---

## Good Practices We Followed

- One branch and one PR per stage. Nothing merges to main until UAT passes.
- Golden master captured on .NET 4.8 before any code changes.
- We work inside MASC's environment: your VM, Azure DevOps repos and Dev database.
- MASC confirms data parity in Dev before deployment to test, ahead of final UAT.

---

<!-- _class: cards3 -->

## Stage Gates & Governance

Database and security changes are gated to the TechioSoft Tech Lead.

- **Phase gates (L0–L5)**
  Foundation must be green before feature work begins
- **Slicing rules (R1–R10)**
  Small, reviewable changes with a full audit trail
- **Human gates (L3)**
  Data parity and live-Azure steps need TechioSoft sign-off

---

<!-- _class: next -->

## The Loop: Prompts → Outputs → Refinement

Human intent in, reviewed change out, iteratively. It's a conversation: the Tech Lead asks, the agent produces a reviewable PR, and we refine. Every step leaves a documented artifact.

### Prompt

"Port the 20 controllers to ASP.NET Core."

### Output

20 controllers migrated, with 59 endpoints reconciled 1:1 with the legacy app.

### Refinement

Review caught runtime parity bugs a green build missed (model binding and ambiguous routes), and they were fixed.

### Artifacts produced along the way

Endpoint inventory · contract-parity test harness · live progress dashboard · access checklist · local-run guide

---

<!-- _class: stats -->

## Reviews & Quality: Real Bugs Caught

AI review and real-data testing found what compilers couldn't. These are subtle behavioral bugs that would have hit production, caught early by actually running the app, not just compiling it.

<ul>
<li><span class="num">8</span><span class="label">EF6 → EF Core parity bugs</span><span class="desc">Surfaced by running the modern app against the real database, all fixed</span></li>
<li><span class="num">6</span><span class="label">Self-healing fix cycles</span><span class="desc">100% converged, averaging 2 iterations</span></li>
<li><span class="num">2</span><span class="label">Runtime-only defects</span><span class="desc">An independent code-review agent caught defects a passing build hid</span></li>
<li><span class="num">22</span><span class="label">Endpoints</span><span class="desc">The modern API now returns real client data from the Dev database</span></li>
</ul>

---

<!-- _class: stats -->

## Parity Check Report

We selected 59 endpoints for parity testing against the real Dev database. Out of those 59, here are the results.

<ul>
<li><span class="num">59</span><span class="label">Endpoints tested</span><span class="desc">Live against real data, every endpoint exercised</span></li>
<li><span class="num">57/59</span><span class="label">Verified green</span><span class="desc">All 32 High and 13 Medium priority endpoints pass</span></li>
<li><span class="num">11</span><span class="label">Bugs found & fixed</span><span class="desc">EF Core port issues caught only by running real data</span></li>
<li><span class="num">0</span><span class="label">Open defects</span><span class="desc">Remaining 2 are low-priority, email-triggering endpoints, held for the test environment</span></li>
</ul>

---

## Security Scan

<!--
Placeholder slide. Content to be added.
-->

---

<!-- _class: next -->

## Progress & What's Next

Application code is feature-complete and deployed; demo and sign-off remain.

### Done & merged

Modern host with 20 controllers and dependency injection, the EF Core data layer, authentication (S13), and observability.

### Parity testing

The modernized app runs today against the real Dev database and returns real data.

### Human-gated next

Data-parity sign-off · live-token auth validation · client demo · security scan.

---

<!-- _class: figure -->

## Project Timeline

*Ahead of plan: full test environment deployment and handover targeted for October 13. AI agents cut our timeline by 34%: 34 planned business days down to 23.*

![w:940](assets/project-timeline.png)

<p class="legend"><span class="sw done"></span>Complete<span class="sw planned"></span>Planned<span class="sw target"></span>Accelerated target date</p>

<!--
How the percentage is calculated: the plan's build work (Phase 0 start Sep 10 to Phase 6 end Oct 29)
is 34 business days (BC statutory holidays excluded). Completing all work by Oct 10 is 21 business
days: 1 - 21/34 = 38%. Calendar days give the same result: 31 vs 50 days. If demo and UAT handover
(Nov 2) were counted in the baseline, it would be 42%.
Note: the source deck's headline states 34%, but this note computes 38%, and the body text names
both Oct 10 and Oct 12 as the target date; confirm which figures to use before presenting.
-->

---

<!-- _class: lead statement -->
<!-- _paginate: false -->

# Thank You

### Questions and discussion
