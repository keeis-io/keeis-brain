# Progress — keeis-brain
Last updated: 2026-08-31

Living log of the ICM brain's build-out. This isn't Layer 0-3 (business context): it's the
state of the system itself. Update it as each step in `README.md` → "Startup sequence" closes,
or when a relevant infrastructure decision gets made (those also go to `_config/decisions.md`).

## Snapshot

**ICM v5 structure fully scaffolded locally. Zero infrastructure deployed, zero steps of the
README's startup sequence executed.** No Git, no server, no connectors tested. Everything below
is a correct skeleton that hasn't run a single real flow yet.

## Done — local skeleton

- [x] Complete folder structure: `ideas/`, `discovery/`, `business-plan/`,
  `meetings/` (stages 01→03, each with `output/`+`references/`), `projects/`, `outputs/`,
  `_config/`, `_reports/`, `server/`, `_archive/`.
- [x] Layer 0/1: `CLAUDE.md` (agent rules) + `CONTEXT.md` (routing) at the root, and its own
  `CONTEXT.md` in every pipeline.
- [x] Layer 3 (`_config/`): `company.md`, `current-strategy.md`, `voice.md`, `decisions.md`,
  `invariant-rules.md`, `confidentiality-classification.md`, `glossary.md`, `output-catalog.md`
  + 4 document templates (`spec`, `architecture`, `lean-canvas`, `bmc`). No payload templates —
  Jira and Docmost were dropped 2026-08-31.
- [x] `references/` — company-wide external material (benchmarking, market research), capture only.
- [x] Own skills in `.claude/skills/`: `derive`, `activate`, `new-project`.
- [x] `projects/_template/` (onboarding mold) + `projects/keeis/` (company as meta-project) +
  `projects/plates/` (first product).
- [ ] `outputs/<destination>/` — none configured; removed `outputs/jira/` and `outputs/docmost/`
  2026-08-31 (both were empty, never used).
- [x] `connections.md` and `server/README.md` — Git origin + digest cadence documented. No
  publishing connector configured (Jira/Docmost dropped 2026-08-31).
- [x] Decisions v1→v6 logged in `_config/decisions.md` (ICM, MCP, read-only cadence,
  transport-based publishing, final output layer with two verbs, English as internal language).

## Missing — content gaps (not structural)

- [ ] `_config/company.md`: `[EDIT: last name/role]` for Kendall and Isaac, a one-line honest
  north star, other key relationships.
- [ ] `connections.md`: ProDesk's Tailscale hostname, GitHub remote — still `[EDIT]`
  placeholders. No publishing destination to configure until one is chosen (Jira/Docmost dropped).
- [ ] `current-strategy.md`: zero hypotheses logged yet (the first one comes from
  `discovery/01_hypotheses`, which is still empty).
- [ ] No pipeline has any runs: `discovery/`, `business-plan/`, `meetings/` — all three
  have empty `output/` folders across their 01→03 stages.

## Missing — "Startup sequence" (README.md), step by step

| # | Step | Status |
|---|---|---|
| 1 | Git with the ProDesk as origin (`server/README.md`) | ☐ Not started — `keeis-brain/` has no `git init` |
| 2 | External skills: clone `icm-architect` (RinDig) and `icm-scaffold`/`icm-sync` (ktnCodes) into `.claude/skills/` | ☐ Not started |
| 3 | Digest cadence: test by hand ×2, then cron | ☐ Not started — depends on 1 |
| 4 | Choose + wire up a publishing destination (replaces Jira/Docmost, dropped 2026-08-31) | ☐ Not started — no candidate picked yet |

## Immediate next steps

1. Fill in the `[EDIT]` placeholders in `_config/company.md` and `connections.md` (hostname, GitHub) —
   unblocks everything else and doesn't depend on infrastructure.
2. `git init -b main` in `keeis-brain/`, first commit, decide the ProDesk remote (README
   step 1) — without this there's no sync between Kendall and Isaac.
3. Stand up the ProDesk: bare repo + `post-receive` hook (`server/README.md` setup).
4. First real pipeline run (likely candidate: `discovery/01_hypotheses`, since
   `current-strategy.md` points to it as the source of the first hypothesis) to validate the
   document side of the circuit with real content.
5. Pick a replacement publishing destination when needed, then wire it into `connections.md`,
   `_config/output-catalog.md`, and the `activate` skill.

## Log

- 2026-08-31 — Dropped Jira and Docmost entirely (see `_config/decisions.md`): removed
  `server/mcp/`, `server/publisher/`, `server/jobs/publisher.md`, `.mcp.json`, the
  `jira-tasks`/`docmost-page` catalog rows and templates, and the empty `outputs/jira/`,
  `outputs/docmost/` folders. `activate` and `new-project` now run local-only until a
  replacement destination is chosen.
- 2026-08-14 — Scaffolded the complete v5 skeleton (structure, config, own skills, project
  templates, output folders). Created this `progress.md` to track startup progress explicitly,
  separate from business context (`_config/`) and architectural decisions
  (`_config/decisions.md`). No step of the README's "Startup sequence" has started yet.
- 2026-08-14 — English became the internal working language for the whole system; every doc
  rewritten from Spanish to English (see `_config/decisions.md`).
- 2026-08-14 — Every folder, file, skill name, and catalog/front-matter identifier in the repo
  renamed from Spanish to English (e.g. `descubrimiento`→`discovery`, `derivar`→`derive`,
  `placas`→`plates`); all cross-references updated to match (see `_config/decisions.md`).
- 2026-08-14 — Adopted three pieces from a proposed company-wide "brain" (org-by-department)
  sketch into `_config/`: `invariant-rules.md`, `confidentiality-classification.md`,
  `glossary.md`, plus a company-wide `references/` folder. Declined the rest (full
  `operations/`/`legal-compliance/`/`finance/`/`hr/`/`brand-communications/` trees) as premature
  for the current pre-product stage (see `_config/decisions.md`).
