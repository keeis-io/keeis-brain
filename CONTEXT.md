# Task routing (Layer 1)

| If the task is… | Go to |
|---|---|
| Validating client/market, interviews | `discovery/` |
| Business plan, investor material | `business-plan/` |
| Preparing a meeting or processing its notes | `meetings/` |
| "Mount me/derive X from Y" (spec, architecture, canvas, tasks, page) | skill `derive` + `_config/output-catalog.md` |
| Executing a ready send (Jira issues, Docmost page) | skill `activate` on `outputs/` |
| Onboarding a new project | skill `new-project` |
| Status, specs, architecture, or canvas of a product | `projects/<slug>/` (company → `projects/keeis/`) |
| Connected systems and credentials | `connections.md` |
| Idea with no clear destination | `inbox/` (just save it) |
| External research with no clear pipeline yet (benchmarking, market scan) | `references/` (just save it) |
| What the server's cadence produced | `_reports/` |

## Shared resources (global Layer 3)

- `_config/company.md` · `current-strategy.md` · `voice.md` · `decisions.md`
- `_config/invariant-rules.md` · `confidentiality-classification.md` · `glossary.md`
- `_config/output-catalog.md` + `_config/templates/` — the derivation map and molds
- `connections.md` — systems, identities (humans/bot), credential rules

## Capabilities (skills in `.claude/skills/`)

- `derive` — mounts documents and payloads in their sector per the catalog
- `activate` — the only point with external effect (Jira/Docmost), with a human gate and receipts
- `new-project` — full onboarding (folder + epic + page + routing)
- External (install and commit): `icm-architect` (RinDig), `icm-scaffold`/`icm-sync` (ktnCodes)

## Conventions

- Numbered stages, in order, with human review between stages.
- Runs `YYYY-MM-DD-topic.md` · plans `plan-vN.md` · derivatives `YYYY-MM-DD-<type>-<topic>.md`.
- Payloads with front-matter `source:` and `project:`; receipts in `outputs/<destination>/receipts/`;
  sent items in `outputs/<destination>/sent/`.
- Commits: `pipeline/stage: …`, `outputs: activated <file>`, server ones prefixed `[bot]`.
- Two people: `git pull` before working; never the same stage at the same time.
