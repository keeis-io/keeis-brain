---
name: new-project
description: Onboards a complete Keeis project in one flow — folder from template in projects/, epic in Jira, root page in Docmost, and a routing entry. Use when the user asks for "new project", "create project X", or "start project X".
---

# Project onboarding

## Steps

1. If info is missing, ask: name, one-sentence goal, initial owner (Kendall or Isaac).
2. Copy `projects/_template/` → `projects/<slug>/` and fill in its `CONTEXT.md` with what was gathered.
3. Add a row to the root `CONTEXT.md`'s routing table pointing to the new project.
4. **Confirm with the human before any external effect.** With explicit approval:
   - Jira (`atlassian` MCP): create an epic in the project listed in `connections.md`,
     summary `[<slug>] <name>`, `keeis-brain` label, description = the goal.
   - Docmost (MCP chosen in `connections.md`): create a `Project: <Name>` page in the
     `Projects` space with the goal and a link to the repo folder.
5. Idempotency: before creating anything, search for an existing epic and page with the same
   slug/label; if they exist, reuse them and say so instead of duplicating.
6. Write a receipt at `projects/<slug>/published.md` with the epic's key and the page's URL.
7. Propose a commit: `projects/<slug>: project onboarding`.

If some MCP isn't connected, do only the local part (steps 2–3) and list what's pending.
