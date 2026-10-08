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
    background-image: url('assets/techio-logo.png'), url('assets/ecomm-logo.png');
    background-repeat: no-repeat, no-repeat;
    background-position: 50px calc(100% - 34px), calc(100% - 48px) 34px;
    background-size: 56px, 170px;
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
  section.deliver table { font-size: 18px; }
  section.deliver th, section.deliver td { padding: 10px 14px; }
  section.deliver th:nth-child(1), section.deliver td:nth-child(1) { width: 5%; }
  section.deliver th:nth-child(2), section.deliver td:nth-child(2) { width: 31%; }
  section.deliver th:nth-child(4), section.deliver td:nth-child(4) { width: 13%; }
  section.gov table { font-size: 18px; }
  section.gov th, section.gov td { padding: 6px 14px; }
  section.gov th:nth-child(1), section.gov td:nth-child(1) { width: 26%; }
  section.gov th:nth-child(2), section.gov td:nth-child(2) { width: 27%; }
  section.map table { font-size: 18px; }
  section.map th, section.map td { padding: 6px 14px; }
  section.map th:nth-child(1), section.map td:nth-child(1) { width: 100px; }
  section.map th:nth-child(2), section.map td:nth-child(2) { width: 860px; }
  section.map th:nth-child(3), section.map td:nth-child(3) { width: 168px; }
  section.ws table { font-size: 18px; }
  section.ws th, section.ws td { padding: 6px 12px; line-height: 1.35; }
  section.ws th:nth-child(1), section.ws td:nth-child(1) { width: 72px; }
  section.ws th:nth-child(2), section.ws td:nth-child(2) { width: 440px; }
  section.ws th:nth-child(3), section.ws td:nth-child(3) { width: 300px; }
  section.ws th:nth-child(4), section.ws td:nth-child(4) { width: 316px; }
  section.context { line-height: 1.38; }
  section.context li { margin-bottom: 6px; }
  section.context p em:only-child { margin: 0 0 16px; padding: 12px 18px; }
  section.why ul { list-style: none; padding: 0; margin: 8px 0 0; display: grid; grid-template-columns: repeat(3, 1fr); gap: 22px; }
  section.why li { margin: 0; padding: 20px 22px 18px; min-height: 170px; background: #F4F8FD; border-top: 4px solid var(--accent); border-radius: 6px; font-size: 19px; line-height: 1.35; color: var(--muted); }
  section.why li::before { content: ''; display: block; width: 44px; height: 44px; margin-bottom: 12px; background-size: contain; background-repeat: no-repeat; }
  section.why li strong { display: block; color: var(--navy); font-size: 23px; margin-bottom: 6px; }
  section.why li:nth-child(1)::before { background-image: url('assets/why-support.svg'); }
  section.why li:nth-child(2)::before { background-image: url('assets/why-security.svg'); }
  section.why li:nth-child(3)::before { background-image: url('assets/why-continuity.svg'); }
  section.why li:nth-child(4)::before { background-image: url('assets/why-resilience.svg'); }
  section.why li:nth-child(5)::before { background-image: url('assets/why-cloud.svg'); }
  section.why li:nth-child(6)::before { background-image: url('assets/why-skills.svg'); }
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

# Phase 1 Discovery Kickoff

### E-Comm 9-1-1 Cloud Migration

![w:400](assets/ecomm-logo.png) ![h:84](assets/techio-logo.png)

TechIO<br>Tuesday, October 13, 2026

---

<!-- _class: agenda -->

## Agenda

1. Introductions
2. Why this program
3. Phase 1 Discovery Workstreams and Owners
4. Phase 1 Discovery timeline
5. Phase 1 Discovery deliverables
6. Discovery approach
7. Success criteria
8. Governance and communication cadence
9. Access and readiness
10. Confirming our next steps and Q&A

---

<!-- _class: team -->

## TechIO introduction

| TechIO | Role |
|---|---|
| Munish Saldhi (Executive Sponsor) | Program Director |
| Sidhartha Thapar (Executive Sponsor) | Delivery Head |
| Ahmad Obay | Technical Lead |
| Naga Srivatsa | Identity Specialist |
| Dinakara Kaushik Dhulipala | Cloud Engineer |
| Vishwa Isola | Technical Program Manager |
| Phillip Basran | PMO Lead |
| Yaroslav Morkvin | Principal Architect |

> Decision authority
>
> - **Operational:** Technical Program Manager
> - **Technical direction:** Technical Lead
> - **Scope and acceptance:** Executive Sponsor

> Escalation path
>
> - **L1:** Technical team, with the E-Comm 9-1-1 workstream SME
> - **L2:** Project Manager, with the E-Comm 9-1-1 Project Manager
> - **L3:** Executive Sponsors, both sides

---

<!-- _class: team -->

## E-Comm 9-1-1 introduction

| E-Comm 9-1-1 | Role |
|---|---|
| Tony Gilligan (Executive Sponsor) | VP Technology |
| Jennifer Strutt (Project Sponsor) | Director, Technology Services |
| Jeremy Wong | Project Manager |
| Darryl Tourond | Program Manager (TSTx) |
| Tom Ly | Business Analyst |

> Decision authority
>
> - **Operational:** Project Manager
> - **Scope and acceptance:** Executive Sponsor

> Escalation path
>
> - **L1:** Workstream SME, with the TechIO technical team
> - **L2:** Project Manager, with the TechIO Project Manager
> - **L3:** Executive Sponsors, both sides

---

<!-- _class: why -->

## Why this program

*Modernizing the environment to sustain the service levels E-Comm 9-1-1 requires.*

- **Out-of-support systems**
  A planned path to supported platforms
- **Security exposure**
  Patch levels brought to current standards
- **Business continuity**
  Stronger recovery capability
- **Site-independent resilience**
  No reliance on any single site
- **Cloud operating benefits**
  Operational excellence on Azure
- **Skills and capability**
  Processes and skills for hybrid operations

<!--
Opening: E-Comm 9-1-1's current environment has reached a point where modernization is needed to sustain the service levels the organization requires. Phase 1 develops a clear, shared understanding of each area on this slide, using read-only access. Remediation is planned for later phases.

Out-of-support systems: a significant part of the estate is approaching or has reached vendor end of support, and needs a planned path to supported platforms.

Security exposure: bringing patch levels across the estate up to current standards is a priority to reduce exposure to known vulnerabilities.

Business continuity: service delivery is closely tied to the primary data center, and recovery capability needs to be strengthened.

Site-independent resilience: critical services need greater redundancy so they can continue to operate independently of any single site.

Cloud operating benefits: moving to Azure brings operational excellence, on-demand scalability, built-in security and resilience, and clearer cost visibility and control.

Skills and capability: operating a hybrid environment calls for updated processes and skills, building on the team's existing on-premises expertise.
-->

---

<!-- _class: ws -->

## Phase 1 Discovery Workstreams and Owners

| WS # | Workstream | E-Comm 9-1-1 | TechIO |
|---|---|---|---|
| WS1 | Azure Landing Zone Review | Harshith Pingili, Bahram Maleki | Ahmad Obay, Dinakara Dhulipala |
| WS2 | Azure Governance and Policy Compliance | Harshith Pingili, Bahram Maleki | Naga Srivatsa, Ahmad Obay |
| WS3 | On-Premises Infrastructure Discovery | Kevin Gilmore, Michael Day | Ahmad Obay, Dinakara Dhulipala |
| WS4 | Network, Connectivity and Virtual Desktop Review | Saqib Mahmood, Bahram Maleki | Ahmad Obay, Yaroslav Morkvin |
| WS5 | Identity and Active Directory Review | Darren Grant, John Christensen | Naga Srivatsa |
| WS6 | Application, Product, Vendor and Database Review | Kevin Gilmore, Ken Garces | Ahmad Obay, Dinakara Dhulipala |
| WS7 | Security, Resilience and Recovery Posture Review | John Christensen, Kevin Gilmore | Ahmad Obay, Yaroslav Morkvin |
| WS8 | Process and Capability Assessment | Kevin Gilmore, Darren Grant | Ahmad Obay |
| WS9 | Cost, Roadmap, Findings Synthesis and Executive Readout | Jeremy Wong, Tom Ly | Ahmad Obay |

---

<!-- _class: figure -->

## Phase 1 Discovery timeline

![w:1090](assets/phase1-kickoff-schedule.png)

*Phase 1 Discovery runs for ten weeks, from October 13 to December 21, 2026. The contractual delivery window is twelve weeks, to January 5, 2027.*

---

<!-- _class: deliver -->

## Phase 1 Discovery deliverables

| # | Report | What E-Comm receives | SOW ref |
|---|---|---|---|
| 1 | Azure Landing Zone and Governance Review Report | Current-state review, policy and governance posture, a reuse, remediate or rebuild recommendation, and a remediation backlog. | D01, D02 |
| 2 | Identity and Active Directory Review Report | Directory and authentication architecture, cloud-integration readiness, and dependencies. | D05 |
| 3 | Application and Infrastructure Discovery, Rationalization and Cost Estimation Report | Consolidated inventory, dependency map, a disposition for each workload, and a cost estimate for the target Azure hosting. | D03, D06 |
| 4 | Network and Connectivity Review Report | Topology, segmentation, hybrid connectivity, addressing, and multicast and UDP dependencies. | D04 |
| 5 | Virtual Desktop Review Report | Citrix baseline, Azure Virtual Desktop suitability, exceptions, and transition recommendations. | D04 |

---

<!-- _class: deliver -->

## Phase 1 Discovery deliverables

| # | Report | What E-Comm receives | SOW ref |
|---|---|---|---|
| 6 | Security Posture Review Report | Legacy exposure, patch and vulnerability posture, and prioritized follow-up actions. | D07 |
| 7 | Resilience and Recovery Review Report | High availability and disaster recovery posture for each application, against business-defined RPO and RTO. | D07 |
| 8 | Operating Model and Capability Review Report | Current operating model, skills review, and the capabilities needed to run the target environment. | D08 |
| 9 | Consolidated Findings, Roadmap and Cost Report | Executive-level consolidation of reports 1 to 8. | D09 |
| 10 | Executive Readout Presentation | Presentation of report 9, with next-phase scoping inputs and the recommended engagement structure. | D10, D11 |

*Reports 9 and 10 are handed over together at the executive readout.*

---

<!-- _class: map -->

## How the reports map to the Statement of Work

| SOW | Statement of Work deliverable | Timeline |
|---|---|---|
| D01 | Azure Landing Zone Review Report  | Nov 2 |
| D02 | Azure Governance and Policy Discovery Baseline  | Nov 2 |
| D03 | Validated Infrastructure Inventory and Classification  | Nov 10 |
| D04 | Network, Connectivity and Virtual Desktop Review  | Nov 2 |
| D05 | Identity and Active Directory Review  | Nov 2 |
| D06 | Application, Product, Vendor and Database Review  | Nov 30 |
| D07 | Security, Resilience and Recovery Posture Review  | Nov 30 |
| D08 | Operating Model, Capability and Knowledge Transfer Baseline  | Dec 15 |
| D09 | Consolidated Phase 1 Findings, Roadmap and Cost Review  | Dec 21 |
| D10 | Executive Readout Presentation  | Dec 21 |
| D11 | Next-Phase Scoping Inputs and Recommended Engagement Structure  | Dec 21 |

---

<!-- _class: steps -->

## Discovery approach

WS1, WS2, WS3, WS6 and WS9 are delivered through the steps below.

1. **Consolidate the inventory** from RVTools, Azure Migrate, Dr. Migrate and the E-Comm inventory export.
2. **Identify the applications** running on each server and the business value each one provides.
3. **Validate with the owners** through a questionnaire and an interview with each application owner.
4. **Map the dependencies** between applications, databases and other systems.
5. **Rationalize** each workload into a disposition: retire, retain, rehost, replatform or rebuild.
6. **Define the target** hosting for each workload that moves to Azure.
7. **Estimate the cost** of the target hosting.

*WS4, WS5, WS7 and WS8 each have their own individual review, with findings consolidated into WS9.*

---

## Success criteria

At the close of Phase 1, E-Comm knows:

- **Where the estate stands today:** validated findings, risks and dependencies across the current environment.
- **What is being built:** a disposition and target direction for each workload.
- **What it will cost:** a directional estimate for the target Azure hosting.
- **How long it will take:** an indicative roadmap for the phases that follow.

---

<!-- _class: gov -->

## Governance and communication cadence

| Mechanism | Cadence | Purpose |
|---|---|---|
| Weekly status review | Twice a week, Tuesday and Thursday at 10 am (1 hour) | Progress, findings to date, risks, dependencies and decisions required. |
| Weekly status report | Weekly, Tuesday morning, covering the previous week | Project status and executive summary, milestones, work completed, and work planned for the next week. |
| PM cadence with E-Comm counterpart | Once a week | Project-level alignment between the TechIO Project Manager and the E-Comm counterpart. |
| Steering committee | Monthly | Executive stakeholders on both sides are updated on status and aligned in person. |
| Discovery workshops | As required | Working sessions with E-Comm owners to gather and validate findings. |
| Workstream checkpoints | As each workstream closes | Each workstream is reviewed with its E-Comm owners. |
| Architecture alignment | As required | Alignment on architecture topics and decisions. |

---

## Access and readiness

### In place

- Azure reader, security reader and cost management access; Azure Migrate and Dr. Migrate.
- Citrix and management server access; Azure DevOps repositories.
- Project documentation and the inventory list in the hybrid cloud SharePoint.
- AD FS configuration and certificate services exports.
- Microsoft on-demand assessments for the directory review, led by E-Comm 9-1-1 subject matter experts with TechIO support.

---

<!-- _class: next -->

## Confirming our next steps

### Launch the discovery workstreams

Confirm owners and readiness to start workstreams 1 to 5 in parallel on October 13.

### Establish the delivery cadence

Confirm the weekly status review (Tuesday and Thursday, 10 am) and owners for outstanding access items.

---

<!-- _class: lead statement -->
<!-- _paginate: false -->

# Q&A
