# Pipeline: Market discovery

Goal: answer with evidence **who pays, for what pain, and how much**.
One run = one validation cycle for one hypothesis (one segment).
Stages: `01_hypotheses` → `02_interviews` → `03_synthesis`, with human review between each.
Evidence for stage 02 can come through two channels: interviews (`02_interviews`) or a field
pilot (`02b_pilot`, concierge MVP). Both feed the same synthesis; the pilot channel was added
2026-09-04 when cold-email outreach stopped converting.
Output to the world: from the approved synthesis, derive `docmost-page` (memory) and
`jira-tasks` (next steps) into `outputs/`; a validated synthesis can also trigger `/new-project`.
Pipeline rule: one interviewee's opinion validates nothing; what counts is behavior and
commitment (time, money, data, letter of intent).
