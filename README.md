# keeis-brain — the complete system

Keeis's operating brain, built on ICM. Two verbs drive everything:
**derive** — from any source artifact, mount the correct derivative (spec, architecture,
canvas) in the correct folder, per `_config/output-catalog.md`.
**activate** — execute the external effect of an approved payload in `outputs/`, once a
destination is configured.
There's always a human between the two.

No external publishing destination is configured today — Jira and Docmost were dropped
(see `_config/decisions.md`). `derive` and the document side of the system work fully
standalone; `activate` has nothing to run against until a replacement is chosen.

## The administrative circuit

```
SOURCES                        DERIVATION                     FINAL OUTPUT           ACTIVATOR
capture ──▶ ideas/
talks ───▶ meetings/ 01→03 ──┐                   ┌─ documents ──▶ projects/<slug>/
market ──▶ discovery 01→03 ──┼─▶ [derive] ───────┤   (specs/ architecture/ canvas/)
business ─▶ biz-plan 01→03 ──┘   per catalog     └─ payloads ────▶ outputs/<destination>/ ─▶ [activate] ─▶ (destination TBD)
                                                                       ▲                        │
                meetings/03 closes with "Derivation proposals"       │ human approves          └▶ receipt + sent/
                (the system proposes; you trigger)                    │ (command, or approved/+push→server)
```

- A project is born with `/new-project` (folder + routing entry) and is managed within the same
  system: its runs declare `project: <slug>` and everything routes to its folder.
- The company is a project too: `projects/keeis/` receives its canvases and architecture.
- Scaling = add a row to the catalog + a template. The day you want conversations to derive
  code changes, it'll be a `pr-github` row with its template and its activator — same
  machinery, no new pieces. Same path for whatever external destination replaces Jira/Docmost.

## Startup sequence

**1. Git with the ProDesk as origin** — `server/README.md` (bare repo, hook, GitHub mirror).

```bash
cd keeis-brain
git init -b main && git add . && git commit -m "chore: keeis-brain v5"
git remote add origin ssh://[user]@[tailscale-hostname]/srv/git/keeis-brain.git
git push -u origin main        # Isaac: git clone <that same remote>
```

**2. External skills** — clone `icm-architect` and the `icm-template` ones into `.claude/skills/`.

**3. Digest cadence** — `server/README.md` steps: test the weekly digest by hand twice, then cron.

**4. Choose a publishing destination** (optional, when needed) — add it to `connections.md`,
   give it a row in `_config/output-catalog.md` + a template, and extend `activate` with its
   transport mechanics. Smoke-test any headless route by hand before wiring it into the hook/cron.

## Daily flow

`git pull` → Claude Code at the root → work the stage or ask for `derive` → review → `activate`
whatever applies → commit → push. Never both at the same stage at once.

## What does NOT go here

Product code (own repos; pointers in `projects/`), EIF408 material (Argana/UNA deliverable,
individually graded), credentials or secrets.
