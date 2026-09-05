# Stage 02 — Interviews

> Since 2026-09-04 this is **not the only** evidence channel for stage 02. Cold-email outreach
> stopped converting for the consultative-sales-teams run, which now gathers evidence through
> `../02b_pilot/` (field pilot, concierge MVP) instead. Both channels feed `../03_synthesis`.
> Interviews remain the default channel for any new hypothesis; use this stage when the evidence
> comes from a conversation, and `02b_pilot` when it comes from a company actually running the
> thing.

## Inputs
- Layer 4: `../01_hypotheses/output/<current run>`
- Layer 3: `references/interview-guide.md`
- Layer 3: `references/segment-screener.md` — fixed 4-question instrument for screening touches
  across multiple candidate segments, before committing to the 5-interview deep pass on one
- Layer 4: raw notes the human leaves in `output/raw/`

## Process
Three modes:
(a) **Screening**: shallow, comparable touches across several segments using the fixed
instrument in `references/segment-screener.md`, to decide which segment earns the deep pass.
Does not count toward the 5 interviews `../03_synthesis/references/validation-criteria.md`
requires for a verdict.
(b) **Before** (deep pass, chosen segment): generate an interview guide tailored to the segment
(max 10–12 questions).
(c) **After each interview**: structure the raw notes into facts, mentioned pains,
current cost, who decides, commitment signals, verbatim quotes, and contradictions with the
hypothesis. Don't invent or fill gaps; every inference gets flagged as an inference.

## Outputs
- `output/YYYY-MM-DD-<person>-<org>.md` in `output/raw/`, opened with "screening touch — not an
  interview" (screening mode)
- `output/YYYY-MM-DD-guide-<segment>.md`
- `output/YYYY-MM-DD-interview-<person>.md` (one per interview)

## Review gate
The human corrects each interview's structure while it's still fresh.
