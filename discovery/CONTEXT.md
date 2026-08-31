# Pipeline: Market discovery

Goal: answer with evidence **who pays, for what pain, and how much**.
One run = one validation cycle for one hypothesis (one segment).
Stages: `01_hypotheses` → `02_interviews` → `03_synthesis`, with human review between each.
Output to the world: from the approved synthesis, derive whatever documents apply
(`_config/output-catalog.md`); a validated synthesis can also trigger `/new-project`. No
external payload destination is configured today (see `_config/decisions.md`).
Pipeline rule: one interviewee's opinion validates nothing; what counts is behavior and
commitment (time, money, data, letter of intent).
