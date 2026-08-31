# Pipeline: Business plan

Goal: an investor-reviewable document. Runs = versions (`plan-vN.md`).
Stages: `01_research` → `02_draft` → `03_review`.
Output to the world: from the approved plan, derive whatever's needed — `docmost-page`, `jira-tasks`
(closing `[PENDING]` items), `architecture`, `bmc`/`lean-canvas` for `projects/keeis/` — all
via the `derive` skill into its sector, and `activate` for anything external. The PDF and the
send to the investor remain a human act outside the repo.
Honest dependency: without evidence from `discovery/`, the plan will have big `[PENDING]`
gaps — and that's correct: a plan with declared holes is more credible than one padded with imagination.
