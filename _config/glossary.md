# Glossary

Shared vocabulary across the system. When in doubt about a term used in `CLAUDE.md`,
`CONTEXT.md`, or any pipeline, check here first.

| Term | Meaning |
|---|---|
| ICM | The methodology this repo implements (external reference framework, not a Keeis term) — a Git repo as a company's shared context brain, organized in layers, with human-reviewed gates. |
| Umbrella | ICM's form for this repo: one portfolio of pipelines sharing common configuration, rather than one repo per initiative. |
| Layer 0 | `CLAUDE.md` — agent rules and the system map. Always loaded. |
| Layer 1 | `CONTEXT.md` (root and per-pipeline) — routing: which folder/skill applies to a task. |
| Layer 3 | `_config/` — global reference shared by everything: company, strategy, voice, decisions, rules, catalog, templates. |
| Layer 4 | The actual source material — a run, a note, an interview transcript, a source document `derive` reads from. |
| derive | The skill that mounts a derivative artifact (spec, architecture, canvas, payload…) from a source, per `_config/output-catalog.md`. Never publishes. |
| activate | The only skill with external effect — sends an approved payload from `outputs/` to Jira or Docmost, with a human gate and a receipt. |
| new-project | The skill that onboards a full project: folder from template, Jira epic, Docmost root page, routing entry. |
| catalog | `_config/output-catalog.md` — the table `derive` reads: type → template → destination folder → activation. Scaling the system means adding a row here. |
| payload | An output class in the catalog: a draft of an external send, mounted in `outputs/<destination>/`, waiting for `activate`. |
| document (class) | The other output class: lives with its owning project (or `projects/keeis/` for company-level), is itself the source of truth — nothing external to push. |
| pipeline | A multi-stage process folder (`discovery/`, `business-plan/`, `meetings/`) with numbered stages `01→03` and a human gate between each. A stage can have more than one channel: `discovery` has `02_interviews` and `02b_pilot`, both feeding `03_synthesis`. |
| channel (evidence) | The route by which a stage gathers its evidence. For `discovery` stage 02: interviews (a conversation) or field pilot (a company actually running the thing). The channel a run uses determines which validation threshold applies to it. |
| concierge MVP / "piloto del piloto" | A pilot run entirely by hand before anything is built: Keeis records real vendor–client conversations, analyzes them manually, and delivers findings. Validates product and process at the same time. Lives in `discovery/02b_pilot/`. |
| profile (sales) | A shape of sales operation inside a segment (e.g. technical B2B distribution with no field CRM; hybrid high-ticket sales with few reps). Choosing a profile to pilot first is a sequencing call — it does not narrow the segment under validation. |
| gate | The human-review checkpoint between stages, or between `derive` and `activate`. Nothing external happens without one. |
| run | A dated working file inside a pipeline stage's `output/`, named `YYYY-MM-DD-topic.md`. |
| ProDesk | The physical/Tailscale server Keeis operates: hosts Docmost, the bare Git origin, the publisher, and the cadence cron. |
| publisher | The ProDesk job that transports approved payloads (`outputs/*/approved/`) to Jira/Docmost. Never generates or decides content. |
| digest / cadence | The ProDesk's scheduled, read-only reporting job — writes only to `_reports/`. |
| Rovo | Atlassian's official remote MCP for Jira — used with per-user OAuth on laptops, and a scoped headless API token on the server. |
| wisflux | The Docmost MCP used interactively on laptops (desktop auth). |
| MrMartiniMo | The Docmost MCP used headless on the server (stdio, service-user auth). |
| `project:` | Front-matter field on a run or payload declaring which `projects/<slug>/` it belongs to. |
| `source:` | Front-matter field on a payload pointing back to the document it was derived from. |
| plates | Short name for the license-plate recognition project (`projects/plates/`) — Keeis's current technical asset, no validated client yet. |
