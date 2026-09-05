# Stage 03 — Synthesis

## Inputs
- Layer 4: `../02_interviews/output/` (all interviews from the run)
- Layer 4: `../02b_pilot/output/` (all pilot runs and their preparation artifacts, when the run
  used the field-pilot channel) — **do not issue a verdict on a pilot-channel hypothesis without
  reading this folder**
- Layer 4: `../01_hypotheses/output/<original hypothesis>`
- Layer 3: `references/validation-criteria.md` — applies by default. A run validated through the
  pilot channel carries its own threshold instead, declared in the plan that governs it (for the
  consultative-sales-teams run: ≥3 completed pilots across ≥2 sales profiles, per
  `../01_hypotheses/references/2026-09-04-plan-de-validacion-campo-ventas-consultivas.md`, scope
  note at the end). The 5-interview minimum still governs interview-channel runs.

## Process
Weigh the evidence against the riskiest assumption. Issue a verdict:
**validated / refuted / insufficient evidence** (stating what's missing).
List the learnings that change the hypothesis. Draft a proposed update
for `_config/current-strategy.md` — without applying it: humans apply it.

## Outputs
- `output/YYYY-MM-DD-synthesis-<segment>.md` (with the proposed update at the end)

## Review gate
Kendall and Isaac decide together: apply the update, iterate the hypothesis, or drop the segment.
