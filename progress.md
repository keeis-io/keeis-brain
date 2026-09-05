# Progress — keeis-brain
Last updated: 2026-09-01

Living log of the ICM brain's build-out. This isn't Layer 0-3 (business context): it's the
state of the system itself. Update it as each step in `README.md` → "Startup sequence" closes,
or when a relevant infrastructure decision gets made (those also go to `_config/decisions.md`).

## Snapshot

**ICM v5 structure scaffolded and in real use.** Git is live (12 commits, pushed to GitHub).
`discovery/` and `meetings/` have real runs; `business-plan/` and `discovery/03_synthesis` don't
yet. No server infrastructure (ProDesk, Jira, digest cadence) has been stood up.

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
  Five more decisions logged since (2026-08-16 → 2026-08-30): a third discovery hypothesis, the
  consultative-sales-teams pivot (twice, same day), and the `inbox/`→`ideas/` rename — 11 entries
  total today.
- [x] Git initialized and live: real history (12 commits), pushed to `origin` at
  `https://github.com/keeis-io/keeis-brain.git`. Note: this is a **direct GitHub origin**, not
  the ProDesk-bare-repo-with-GitHub-mirror architecture `server/README.md` and `connections.md`
  describe — that specific setup (step 1 below) is still not done.
- [x] First real pipeline runs exist:
  - `discovery/01_hypotheses`: 3 hypotheses (`plates`/parking lots, microenterprises, consultative-sales-teams).
  - `discovery/02_interviews`: 4 structured interviews (Mauricio Castro, Carlos Salazar, Pablo
    Ramirez, Saylen Morales) + 3 guides (Fulzer async, Disrupt, ENHMED).
  - `discovery/02b_pilot`: new stage-02 channel added 2026-09-04 (field pilot / concierge MVP)
    with its own `CONTEXT.md` and 4 preparation artifacts. No pilot has run yet.
  - `meetings/`: 2 full `01_preparation`→`02_notes`→`03_actions` cycles worth of content (Erik Mekelburg,
    Fernando Carazo — both skipped straight to notes, no prep run), plus a living `pending.md`.
  - `current-strategy.md` reflects this: a primary front (consultative-sales-teams) and two paused
    ones, last updated 2026-08-26 — no longer the empty placeholder state.

## Missing — content gaps (not structural)

- [ ] `_config/company.md`: mostly filled in now (last names, one-line north star, Erik Mekelburg
  fully described) — only `[EDIT: other relevant relationships]` remains a placeholder.
- [ ] `connections.md`: ProDesk's Tailscale hostname, Jira site and project key, and the
  ProDesk-origin Git URL are all still `[EDIT]` placeholders — even though the repo is already
  syncing for real via a direct GitHub origin instead (see Done, above).
- [ ] `business-plan/` pipeline: zero runs across all three stages (`01_research`, `02_draft`,
  `03_review` all still just `.gitkeep`) — blocked on nothing structural, just hasn't started.
- [ ] `discovery/03_synthesis`: no hypothesis has reached a verdict yet. The consultative-sales-teams
  run stopped at 4 interviews (one short of the 5-interview minimum in
  `references/validation-criteria.md`) and switched channel on 2026-09-04: it now validates through
  `02b_pilot`, whose threshold is ≥3 completed pilots across ≥2 sales profiles. Two blockers gate
  the first pilot — end-client consent, and which product form the pilot tests
  (`02b_pilot/output/2026-09-04-assumptions-prioritized.md`).

## Missing — "Startup sequence" (README.md), step by step

- [ ] 1. Git with the ProDesk as origin (`server/README.md`) — Git itself is already live (see
  Done, above), but `origin` is GitHub directly, not the ProDesk bare repo.
- [ ] 2. Jira: Cloud + Rovo + Remote MCP enabled, per-person OAuth.
- [ ] 3. Server backup bot: MrMartiniMo built, `mcp.headless.json`, `publisher/run.sh` tested by hand ×2.
- [ ] 4. External skills: clone `icm-architect` (RinDig) and `icm-scaffold`/`icm-sync` (ktnCodes)
  into `.claude/skills/` — currently only has `derive`, `activate`, `new-project`.
- [ ] 5. Full-system smoke test (derive → review → activate by session → repeat via server route)
  — depends on 1-4.
- [ ] 6. Digest cadence: test by hand ×2, then cron — depends on 1-3.

## Immediate next steps

- [ ] Fill in the remaining `[EDIT]` placeholders in `_config/company.md` (other relationships)
  and `connections.md` (hostname, Jira, GitHub/ProDesk) — small, doesn't depend on infrastructure.
- [ ] Decide whether the ProDesk-bare-repo architecture (README step 1) is still wanted, now that
  GitHub-as-direct-origin already works day to day — if not, `server/README.md` and
  `connections.md` need updating to match reality instead of the other way around.
- [ ] Stand up the ProDesk: bare repo + `post-receive` hook (`server/README.md` setup 1-3) — only
  if the item above confirms it's still wanted.
- [ ] Enable Jira (Cloud + Rovo + Remote MCP) — requires site admin, a prerequisite for
  any real `activate`.
- [ ] Run `business-plan/` end to end (`01_research` → `02_draft` → `03_review`) — the one pipeline
  with zero runs — and/or push a `discovery/` segment to the 5-interview mark so
  `03_synthesis` gets its first real verdict.

## Log

- 2026-09-04 — Added `discovery/02b_pilot/` as a second stage-02 evidence channel (field pilot /
  concierge MVP), parallel to `02_interviews`, both feeding `03_synthesis`. Wired it into the
  files that route and load context: root `CLAUDE.md` map, root `CONTEXT.md` routing table,
  `discovery/CONTEXT.md`, `discovery/MOC.md`, `HOME.md`, `02_interviews/CONTEXT.md` (pointer), and
  `03_synthesis/CONTEXT.md` (added the pilot folder to Inputs — without it, synthesis would issue a
  verdict blind to the pilot evidence). Pending human approval in `_config/`: decision-log entries,
  a `current-strategy.md` update, and glossary terms — `_config/` is read-only for agents.

- 2026-09-01 — Reviewed this checklist against the actual repo state and corrected it: checked
  off items that turned out already done (Git live via GitHub, first real runs in `discovery/`
  and `meetings/`, `current-strategy.md` populated), narrowed the items that were only partially
  true (`company.md`'s remaining gap, the "no pipeline has runs" claim which no longer held for
  discovery/meetings), and flagged the divergence between the documented ProDesk-origin Git
  architecture and the GitHub-direct origin actually in use.
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
