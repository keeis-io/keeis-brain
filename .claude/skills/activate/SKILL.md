---
name: activate
description: Executes the external effect of a ready payload in outputs/, with idempotency and a receipt. The system's only point with external writes. Use on "/activate <file>", "activate", "run the send".
---

# Activate (the external-effect gate)

No destination is configured today (Jira and Docmost were dropped — see
`_config/decisions.md`). This skill has nothing to run against until a replacement destination
is chosen, added as a row in `_config/output-catalog.md`, and given an `outputs/<destination>/`
folder. Until then, treat any invocation as a no-op and say so.

## Gate

Activation requires human approval in one of two forms:
(a) **In-session command** — the human invokes `activate` on a concrete file from `outputs/`;
    the invocation itself is the approval.
(b) **Commit to `outputs/<destination>/approved/`** + push — the ProDesk publisher transports it
    (async backup). The commit is the auditable approval.
Never activate anything that didn't go through one of the two.

## Execution (once a destination exists)

1. Validate the payload: `source:` front-matter present; format matches its template; if it
   declares `project: <slug>`, read `projects/<slug>/published.md` for the target.
2. Idempotency: if `outputs/<destination>/receipts/receipt-<file>.md` exists, it was already
   sent — say so and stop.
3. Execute per the destination's own rules, defined alongside its row in the catalog.
4. Receipt: write `outputs/<destination>/receipts/receipt-<file>.md` with what was created.
5. Move the payload to `outputs/<destination>/sent/`. Commit: `outputs: activated <file>`
   (or `[bot] …` if running headless).
6. Mid-run failure: partial receipt with what got done, a report in `_reports/` if headless,
   and stop. No blind retries.
