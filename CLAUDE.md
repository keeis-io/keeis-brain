# Keeis — Context brain (Layer 0)

Keeis's working repository (Kendall + Isaac). ICM form: **Umbrella** — a portfolio of
pipelines with shared configuration. The system's two verbs: **derive** (mount
artifacts in their sector per the catalog) and **activate** (execute the external effect of an
approved payload). Every intermediate output is a file a human reviews.

## Map

- `_config/` — Global reference (Layer 3): company, voice, strategy, decisions, **invariant
  rules**, **confidentiality classification**, **glossary**, **output catalog** and `templates/`
  (derivation templates)
- `connections.md` — Reachable systems and the two identities (humans / bot)
- `.claude/skills/` — Git-versioned capabilities: `derive`, `activate`, `new-project`, external ones
- `discovery/` · `business-plan/` · `meetings/` — Pipelines (stages 01→03, human gates)
- `projects/` — Projects with `specs/`, `architecture/`, `canvas/`. Includes `keeis/` (the
  company as a meta-project). Code lives in its own repos.
- `outputs/` — **Final output layer**: payloads by destination (`jira/`, `docmost/`), each
  with `approved/`, `receipts/`, `sent/`
- `ideas/` — Raw ideas (capture only)
- `references/` — Company-wide external material (benchmarking, market research), capture only
- `_reports/` — ProDesk cadence output (read-only for humans)
- `server/` — ProDesk's role (backup publisher, Git hook, cron, jobs)
- `_archive/` — Closed runs

## Agent rules

1. Load only the context of the active stage or skill: its `CONTEXT.md`/`SKILL.md` and its listed Inputs.
2. Write to the active stage's `output/`, or to the destination dictated by
   `_config/output-catalog.md` when running `derive` (and to `ideas/` or
   `_config/decisions.md` when asked).
3. `_config/`, `references/` and `.claude/skills/` are read-only unless a human says otherwise.
4. Runs: `YYYY-MM-DD-topic.md`; if they belong to a project, `project: <slug>` on the first line.
5. Don't invent data: `[PENDING: what's missing]`.
6. When a stage or derivation finishes, stop: human review before the next step.
7. External effects ONLY via the `activate` skill, on payloads from `outputs/`, with human
   approval (an in-session command, or a commit to `approved/` that the publisher transports).
   `derive` never publishes.
8. Headless on the server: the digest only reads and writes `_reports/`; the publisher only
   transports `outputs/*/approved/` per the `activate` skill. Neither generates content.
9. Decisions made in a session → propose an entry for `_config/decisions.md`.
10. Language: English is the internal working language for everything — docs, runs, and all
    future content. `_config/voice.md` still governs register (internal terse vs. investor-facing
    polish); that's a tone distinction now, not a language one.
11. Navigation layer: when a run lands in a pipeline stage's `output/`, add a wikilink to it
    from that branch's `MOC.md` in the same turn, with one line saying what it is. Wikilinks
    live ONLY in `HOME.md` and `MOC.md` files — content files use relative markdown links, so
    they stay readable outside Obsidian. A file with no link from its MOC is invisible in the
    graph.

## Routing

Which pipeline, stage, or skill applies: read `CONTEXT.md` (Layer 1) in this folder.
