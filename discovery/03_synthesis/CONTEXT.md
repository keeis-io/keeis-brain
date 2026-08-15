# Stage 03 — Synthesis

## Inputs
- Layer 4: `../02_interviews/output/` (all interviews from the run)
- Layer 4: `../01_hypotheses/output/<original hypothesis>`
- Layer 3: `references/validation-criteria.md`

## Process
Weigh the evidence against the riskiest assumption. Issue a verdict:
**validated / refuted / insufficient evidence** (stating what's missing).
List the learnings that change the hypothesis. Draft a proposed update
for `_config/current-strategy.md` — without applying it: humans apply it.

## Outputs
- `output/YYYY-MM-DD-synthesis-<segment>.md` (with the proposed update at the end)

## Review gate
Kendall and Isaac decide together: apply the update, iterate the hypothesis, or drop the segment.
