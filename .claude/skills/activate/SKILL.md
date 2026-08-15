---
name: activate
description: Executes the external effect of a ready payload in outputs/ (create Jira issues or a Docmost page), with idempotency and a receipt. The system's only point with external writes. Use on "/activate <file>", "activate", "run the send".
---

# Activate (the MCP activator)

## Gate

Activation requires human approval in one of two forms:
(a) **In-session command** — the human invokes `activate` on a concrete file from `outputs/`;
    the invocation itself is the approval.
(b) **Commit to `outputs/<destination>/approved/`** + push — the ProDesk publisher transports it
    (async backup). The commit is the auditable approval.
Never activate anything that didn't go through one of the two.

## Execution

1. Validate the payload: `source:` front-matter present; format matches its template; if it
   declares `project: <slug>`, read `projects/<slug>/published.md` for the target epic/page.
2. Idempotency: if `outputs/<destination>/receipts/receipt-<file>.md` exists, it was already
   sent — say so and stop. On Jira, also search by summary + `keeis-brain` label before creating.
3. Execute:
   - `outputs/jira/` → one issue per task in the payload (summary, description with `source:`,
     owner, date, `keeis-brain` label; under the project's epic if applicable).
   - `outputs/docmost/` → a NEW dated page `YYYY-MM-DD — <Topic>` in the indicated space
     (CE limitation: never update existing pages via MCP; it recreates the ID and breaks links).
4. Receipt: write `outputs/<destination>/receipts/receipt-<file>.md` with the keys and URLs created.
5. Move the payload to `outputs/<destination>/sent/`. Commit: `outputs: activated <file>`
   (or `[bot] …` if running headless).
6. Mid-run failure: partial receipt with what got done, a report in `_reports/` if headless,
   and stop. No blind retries.
