---
name: new-project
description: Onboards a complete Keeis project in one flow — folder from template in projects/, and a routing entry. Use when the user asks for "new project", "create project X", or "start project X".
---

# Project onboarding

No external system (epic tracker, wiki) is configured today — Jira and Docmost were dropped
(see `_config/decisions.md`). Onboarding is local-only until a replacement is chosen; steps 2-3
below are the full flow for now.

## Steps

1. If info is missing, ask: name, one-sentence goal, initial owner (Kendall or Isaac).
2. Copy `projects/_template/` → `projects/<slug>/` and fill in its `CONTEXT.md` with what was gathered.
3. Add a row to the root `CONTEXT.md`'s routing table pointing to the new project.
4. Propose a commit: `projects/<slug>: project onboarding`.

If/when an external tracker or wiki is chosen (`connections.md`), extend this skill with the
same "confirm with the human before any external effect" + idempotency + receipt shape used by
`activate`.
