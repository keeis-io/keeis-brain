# Stage 03 — Actions

## Inputs
- Layer 4: `../02_notes/output/<matching notes>`

## Process
Extract actions with an owner (Kendall / Isaac) and a date. Propose entries for
`_config/decisions.md` if decisions were made. Update `output/pending.md` (a living
list of open commitments, by person). ALWAYS close with a **"Derivation proposals"**
section: which derivations the conversation warrants (an update to `_config/current-strategy.md`,
a change to a project's spec…), each one as a suggested command
(`derive <type> from <source>`). This section only proposes; executing it is a human decision.

## Outputs
- `output/YYYY-MM-DD-actions-<who>.md` (with derivation proposals at the end)
- `output/pending.md` (updated)

## Review gate
The human reviews actions and proposals; whatever gets approved gets triggered via `derive` and `activate`.
