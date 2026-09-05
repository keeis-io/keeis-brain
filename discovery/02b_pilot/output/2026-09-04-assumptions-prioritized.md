project: consultative-sales-teams

# Assumption triage — Impact × Risk — 2026-09-04

Produced with the `prioritize-assumptions` skill (`pm-product-discovery`). Source list:
`2026-09-04-assumptions-map.md`. This is the document that says **what the first pilot has to
test, and what must be settled before it runs at all.**

Impact = value created by validating it × how much of the segment it affects.
Risk = (1 − Confidence) × Effort to test.

## Matrix

| # | Assumption | Impact | Confidence | Effort | Risk | Quadrant |
|---|---|---|---|---|---|---|
| 1 | Managers act on the report (not just receive it) | High | Low | Medium | High | **High/High → design experiment** |
| 3 | Recording doesn't destroy spontaneity (Pablo's objection) | High | Low | Medium | High | **High/High → design experiment** |
| 5 | Companies pay after a free pilot | Very high | Low | High (needs a full pilot) | High | **High/High → design experiment** |
| 7 | The analysis generalizes across verticals | High | Low | Medium (covered by Phase 4) | High | **High/High → design experiment** |
| 8 | End-client consent is viable and legal | Very high (blocking) | Very low | Low (it's a decision, not a field test) | High | **High/High → settle BEFORE, don't field-test** |
| 12 | The right form is "capture + analysis" (vs. control, vs. niche agent) | Very high (defines what's being tested) | Very low | Low (pilot design, not execution) | High | **High/High → settle BEFORE recruiting** |
| 2 | The lost-sale pain is costly enough to pay for | High | Medium | Low (already the Phase 5 criterion) | Medium-low | **High/Low → proceed**, already instrumented |
| 4 | Managers read and use the delivered report | Medium | Low | Low (measure in pilot 1, no extra cost) | Medium | **High/Low → proceed**, free to measure |
| 9 | Reps don't experience recording as covert surveillance | Medium | Low | Low (post-pilot question to the rep) | Medium | **High/Low → proceed**, ask the rep, not only the manager |
| 11 | "No cost, no commitment" is the right entry framing | Medium | Untested | Low (track across planned pilots) | Medium-low | Medium/Low → **track passively**, no separate test |
| 14 | Two people can sustain 3+ parallel pilots | Medium | Low | Low (time pilot 1) | Medium | Medium/Low → **defer**, measure load in pilot 1 before committing to Phase 4 |
| 13 | The SaaS-vs-consultancy fork can wait until Phase 5 | Low (now) | Medium | — | Low | **Low/Low → defer** (already the plan's correct call) |
| 15 | No third profile needed before Phase 6 | Low (now) | Untested | Low | Low-medium | **Low/Low → defer**, re-evaluate if #8 turns out legally complex |
| 10 | Cold email doesn't work as a channel | — | **High (validated)** | — | — | **Resolved — out of the matrix** |

## Reading

**One pilot tests four assumptions for free.** #2, #4, #9 and #11 need no separate experiment —
only that the exit questions are instrumented properly when the pilot runs. The cost of forgetting
them is that the pilot yields less than it could have.

**Two High/High assumptions are NOT resolved by running the pilot — they must be closed before
recruiting the first company:**

- **#8 — end-client consent.** If unresolved, the pilot is either legally exposed or runs with the
  question hanging, and the problem surfaces late, with a company already committed.
- **#12 — which product form is being tested.** Running the generic pilot ("record + analyze")
  without deciding this means a negative result can't be attributed: was it (a) the pain isn't
  real, (b) the form is wrong — as Carlos and Pablo already argued, or (c) consent made it
  awkward? Three different explanations for the same failure. The pilot has to be designed to tell
  them apart.

**Three High/High assumptions (#1, #3, #5) are exactly what the pilot exists to test.** They need
nothing new — only execution.

**#7 (generalization across verticals)** is already covered by the plan's Phase 4 (repeat in 2–3
companies of different profiles). Nothing to add, except: compare explicitly across verticals when
analyzing, rather than assuming the first finding applies to all.

**Nothing falls into Low Impact / High Risk (reject).** No assumption on the list is worth
discarding outright.

## Order of operations this implies

1. Settle **#8** (consent mechanism) and **#12** (which form the pilot tests). Both are decisions,
   not field experiments. The value proposition in
   `2026-09-04-value-proposition-technical-b2b.md` takes a position on #12; #8 is still open.
2. Only then execute Phase 3 of the field plan, with the exit questions for #2, #4, #9 and #11
   already built into the script.
