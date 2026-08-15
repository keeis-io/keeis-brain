# keeis-brain — the complete system

Keeis's operating brain, built on ICM. Two verbs drive everything:
**derive** — from any source artifact, mount the correct derivative (spec, architecture,
canvas, task draft, page) in the correct folder, per `_config/output-catalog.md`.
**activate** — execute the external effect (Jira/Docmost) of an approved payload in `outputs/`.
There's always a human between the two.

## The administrative circuit

```
SOURCES                        DERIVATION                     FINAL OUTPUT           ACTIVATOR
ideas ──▶ inbox/
talks ───▶ meetings/ 01→03 ──┐                   ┌─ documents ──▶ projects/<slug>/
market ──▶ discovery 01→03 ──┼─▶ [derive] ───────┤   (specs/ architecture/ canvas/)
business ─▶ biz-plan 01→03 ──┘   per catalog     └─ payloads ────▶ outputs/jira|docmost/ ─▶ [activate] ─▶ Jira/Docmost
                                                                       ▲                        │
                meetings/03 closes with "Derivation proposals"       │ human approves          └▶ receipt + sent/
                (the system proposes; you trigger)                    │ (command, or approved/+push→server)
```

- A project is born with `/new-project` (folder + epic + page) and is managed within the same
  system: its runs declare `project: <slug>` and everything routes to its epic and its page.
- The company is a project too: `projects/keeis/` receives its canvases and architecture.
- Scaling = add a row to the catalog + a template. The day you want conversations to derive
  code changes, it'll be a `pr-github` row with its template and its activator — same
  machinery, no new pieces.

## Startup sequence

**1. Git with the ProDesk as origin** — `server/README.md` (bare repo, hook, GitHub mirror).

```bash
cd keeis-brain
git init -b main && git add . && git commit -m "chore: keeis-brain v5"
git remote add origin ssh://[user]@[tailscale-hostname]/srv/git/keeis-brain.git
git push -u origin main        # Isaac: git clone <that same remote>
```

**2. Jira** — endpoint already in `.mcp.json`. Admin: Cloud + Rovo + Remote MCP enabled; each
person approves the project's server and does their own OAuth. (Docmost on laptops: wisflux ✓ already set up.)

**3. Server backup bot** — `server/README.md` steps 4–5: MrMartiniMo built,
`mcp.headless.json` with the service user + scoped Jira API token, and
`server/publisher/run.sh` tested BY HAND twice.

**4. External skills** — clone `icm-architect` and the `icm-template` ones into `.claude/skills/`.

**5. Smoke test (the real-system one, 30 min)** —
   a. `derive jira-tasks` from the plan or from some action items → review the draft in `outputs/jira/`.
   b. Activate via in-session command → issue in Jira + receipt + payload in `sent/`.
   c. Repeat with another payload via the backup route: move it to `approved/` + push → the ProDesk
      transports it automatically. If both routes leave a receipt, the full system works.

**6. Digest cadence, last** — test by hand twice, then cron.

## Daily flow

`git pull` → Claude Code at the root → work the stage or ask for `derive` → review → `activate`
whatever applies → commit → push. Never both at the same stage at once.

## Boundary with Docmost

The repo is the working source of truth. Docmost is the read/publishing layer, fed by
`activate`. Indexes and visual organization: humans, in the UI. If something goes stale on one
side, the repo wins.

## What does NOT go here

Product code (own repos; pointers in `projects/`), EIF408 material (Argana/UNA deliverable,
individually graded), credentials or secrets.
