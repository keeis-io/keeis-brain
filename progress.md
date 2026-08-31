# Progress — keeis-brain
Last updated: 2026-08-14

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
  + 6 templates (`spec`, `architecture`, `lean-canvas`, `bmc`, `jira-tasks`, `docmost-page`).
- [x] `references/` — company-wide external material (benchmarking, market research), capture only.
- [x] Own skills in `.claude/skills/`: `derive`, `activate`, `new-project`.
- [x] `projects/_template/` (onboarding mold) + `projects/keeis/` (company as meta-project) +
  `projects/plates/` (first product).
- [x] `outputs/jira/` and `outputs/docmost/` with `approved/` `receipts/` `sent/` subfolders.
- [x] `connections.md` and `server/README.md` — connection architecture documented (two
  identities: interactive laptops via OAuth/wisflux, headless bot via MrMartiniMo+API token).
- [x] Decisions v1→v6 logged in `_config/decisions.md` (ICM, MCP, read-only cadence,
  transport-based publishing, final output layer with two verbs, English as internal language).

## Missing — content gaps (not structural)

- [ ] `_config/company.md`: `[EDIT: last name/role]` for Kendall and Isaac, a one-line honest
  north star, other key relationships.
- [ ] `connections.md`: ProDesk's Tailscale hostname, Jira site and project key, GitHub
  remote — all still `[EDIT]` placeholders.
- [ ] `current-strategy.md`: zero hypotheses logged yet (the first one comes from
  `discovery/01_hypotheses`, which is still empty).
- [ ] No pipeline has any runs: `discovery/`, `business-plan/`, `meetings/` — all three
  have empty `output/` folders across their 01→03 stages.

## Missing — "Startup sequence" (README.md), step by step

| # | Step | Status |
|---|---|---|
| 1 | Git with the ProDesk as origin (`server/README.md`) | ☐ Not started — `keeis-brain/` has no `git init` |
| 2 | Jira: Cloud + Rovo + Remote MCP enabled, per-person OAuth | ☐ Not started |
| 3 | Server backup bot: MrMartiniMo built, `mcp.headless.json`, `publisher/run.sh` tested by hand ×2 | ☐ Not started |
| 4 | External skills: clone `icm-architect` (RinDig) and `icm-scaffold`/`icm-sync` (ktnCodes) into `.claude/skills/` | ☐ Not started |
| 5 | Full-system smoke test (derive → review → activate by session → repeat via server route) | ☐ Not started — depends on 1-4 |
| 6 | Digest cadence: test by hand ×2, then cron | ☐ Not started — depends on 1-3 |

## Immediate next steps

1. Fill in the `[EDIT]` placeholders in `_config/company.md` and `connections.md` (hostname, Jira, GitHub) —
   unblocks everything else and doesn't depend on infrastructure.
2. `git init -b main` in `keeis-brain/`, first commit, decide the ProDesk remote (README
   step 1) — without this there's no sync between Kendall and Isaac.
3. Stand up the ProDesk: bare repo + `post-receive` hook (`server/README.md` setup 1-3).
4. Enable Jira (Cloud + Rovo + Remote MCP) — requires site admin, a prerequisite for
   any real `activate`.
5. First real pipeline run (likely candidate: `discovery/01_hypotheses`, since
   `current-strategy.md` points to it as the source of the first hypothesis) to validate the
   full circuit with real content before the formal smoke test.

## Log

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
