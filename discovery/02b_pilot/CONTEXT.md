# Stage 02b — Field pilot (concierge MVP)

Parallel evidence channel to `02_interviews`, not a successor to it. Cold-email outreach stopped
converting; as of 2026-09-04 this stage gathers evidence by running a manual pilot — recording
real vendor–client conversations, analyzing them by hand, and handing findings back to the
manager — per
`../01_hypotheses/references/2026-09-04-plan-de-validacion-campo-ventas-consultivas.md`.
Everything produced here feeds `03_synthesis`.

Why manual: the pilot validates product AND process at once before anything gets built. A finding
about how the team offers, executes, and delivers counts as much as a finding about the product.

**State as of 2026-09-05:** preparation is complete and the proposal is sendable. No pilot has
run. The active documents are the three below; everything else in `output/` is the reasoning
that produced them.

- `output/2026-09-05-pilot-proposal-consultative-sales.md` — what a company is offered. Spanish
  only, nothing internal, sendable as-is. Internal notes on it (status, recipient, how to adapt)
  live in `output/2026-09-05-pilot-proposal-notes.md`. First recipient: Yasmin's ad agency via
  Roberto Solano (hybrid profile); second: ENHMED.
- `output/2026-09-05-pilot-proposal-full-consultative-sales.md` — variant B of the same proposal:
  adds a team report (reference rep's pattern, sales guide per client type, gaps per rep, lost
  sales explained, first-week plan) and a practice session, all by hand; four weeks. Notes in
  `output/2026-09-05-pilot-proposal-full-notes.md`. Which variant goes to Yasmin is a human call.
- `output/2026-09-05-pilot-roadmap-milestones.md` — two-week blocks from the first confirmed
  company (T0) to the Phase 5 decision point.
- `output/2026-09-05-pilot-next-steps.md` — the ordered list from today to T0.

## Inputs
- Layer 4: `../01_hypotheses/output/2026-08-26-hypothesis-consultative-sales-teams.md` — active hypothesis
- Layer 4: `../01_hypotheses/references/2026-09-04-plan-de-validacion-campo-ventas-consultivas.md` — the plan this stage executes
- Layer 4: `../02_interviews/output/` — the four structured interviews the segment choice rests on
- Layer 3: `../03_synthesis/references/validation-criteria.md` — what counts as a signal and what doesn't
- Layer 3: `references/analysis-template.md` — the fixed visit-sheet and readout template (what makes pilots comparable)
- Layer 3: `references/consent-script.md` — the one question the reps ask the client before recording; must match the proposal's Annex B
- Layer 3: `references/pilot-run-template.md` — the per-pilot run file; every Phase 5 number comes from it

## Process
Two phases with a human gate between them.

**(a) Preparation** — done as of 2026-09-05. The two blockers named when the stage was created
are closed, both by decision, both logged in `_config/decisions.md`:
1. the consent mechanism for the **end client** — the rep asks whether they agree to be recorded
   for the study; no → no recording; withdraw at any time (`references/consent-script.md`); a
   short lawyer check pending before the first recording;
2. which product form the pilot tests — a delivered analysis service (per-visit sheet within two
   business days + closing readout), not compliance control and not a manager-operated tool.

**(b) Execution** — one pilot at a time until the first one's measured load says otherwise:
kickoff, record, analyze with the template, deliver sheets, readout with the three observable-use
questions and the continuation offer, rep conversation, deletion the same day the readout is delivered. Log hours
and process friction alongside product findings in the run file. Per the plan's Phase 5, "this
has value" after a free pilot does not count; payment (any amount) or an unprompted request to
continue does — recorded as exactly one of three values.

## Outputs
- `output/YYYY-MM-DD-<artifact>-<topic>.md` — preparation artifacts
- `output/YYYY-MM-DD-pilot-<company>.md` — one per pilot run, from `references/pilot-run-template.md` [none yet]
- Proposal variants for later recipients: `output/YYYY-MM-DD-pilot-proposal-<company>.md`, changing
  only the cover and §2 (and §5 where rep authority differs)

## Review gate
Nothing is offered to a company until Kendall and Isaac sign off on the proposal and the consent
script — sign-off means the `[PENDING]` contact fields are filled and the end-to-end dry run
(experiment 2) has been done once. After each pilot: review the run file before recruiting the
next; changes go into the template and the proposal before the next company sees them.
