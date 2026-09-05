project: consultative-sales-teams

# Pilot proposal, full-product variant — internal notes — 2026-09-05

The proposal itself is `2026-09-05-pilot-proposal-full-consultative-sales.md`: Spanish only,
nothing internal, sendable once the `[PENDING]` fields are filled. Same structure and recipient
as `2026-09-05-pilot-proposal-consultative-sales.md` (variant A, left intact on Isaac's
instruction). This file says what is different, why, and what it costs.

## What variant B adds, and how each feature is done by hand in the pilot

Isaac's instruction: don't think about how the real product would do it; think about how the
pilot does it. Every feature below maps to something two people produce manually from the
recordings plus the dealership's conversion flags.

| Feature (from the repo's own record of the intended product) | How the pilot does it by hand | Where it lands |
|---|---|---|
| Tips and corrections on the rep's own selling | One correction per conversation, rep-only copy, with the sentence said vs. the sentence the reference rep says at that moment | Sheet §6 |
| Compare against the best rep; others follow a similar strategy | Pick the reference rep (most conversations advanced in the window, cross-checked with who the manager names), describe their pattern step by step from their own recordings; brechas per rep against it | Report §2, §4 |
| Guías argumentales per client/product profile (Roberto's nuance) | One page per client type that appeared, derived from what worked and didn't across all conversations | Report §3 |
| Why a sale didn't close | Per non-advanced conversation, the reading from what was said; "unknown" when unknown | Report §5 |
| Shorten the learning curve for new reps | A first-week plan derived from the reference pattern and the common gaps, plus three practice scripts | Report §6 |
| AI-simulated client for onboarding (Fernando Carazo notes) | Kendall or Isaac plays the client for 30 minutes with the newest rep, using a practice script, correction on the spot | §3.3 practice session |
| Patterns separating conversion from non-conversion (Roberto's design) | Requires the dealership's advanced/closed flags each week — made a hard requirement in §5 | Report §1 |
| Manager doesn't sit with each rep | Unchanged from variant A: they listen to nothing | Whole design |

**Deliberately still out:** voice tone / gesture / empathy analysis (unvalidated, sharpens the
privacy objection) and follow-up compliance control (Carlos Salazar's ask, out of scope by the
2026-09-05 product-form decision).

## The three design changes that the features forced

1. **Two recording weeks instead of one.** Corrections delivered after week 1 can only be shown to
   work if week 2 is recorded. Observable question #2 in §9 ("did a week-1 correction appear in
   week 2?") is the cleanest behavioral test of the coaching value in the whole channel, and it is
   free once week 2 exists. Cost: the pilot is four weeks, not two to three.
2. **Three or more conversations per rep** (15–20 total). Fewer than three cannot describe a
   rep's pattern; a "best rep" chosen on one conversation is noise, which is Roberto's own
   warning about small samples.
3. **Comparison is delivered, but as pattern-and-gaps, not as a ranking.** The manager's report
   has every rep's gaps section; each rep sees only their own; nothing is ordered best-to-worst.
   This is the agent's resolution of the question Isaac did not answer directly ("shown to the
   manager, or only used to derive the guide?"): the manager sees the comparison because the
   report is for him; reps see no one else's. Reversible if Isaac wants the ranking explicit —
   it is one paragraph in §7 and one sentence in §3.2.

## What this variant is, in the validation logic

Variant A tests the *delivered analysis service* form (decision 2026-09-05). Variant B tests the
*coaching against the best rep* form — the one Isaac originally pitched to Roberto and the one
Roberto reconstructed and endorsed. Assumption #12 in `2026-09-04-assumptions-prioritized.md`
said a negative pilot result is uninterpretable unless the form being tested is explicit. Having
two written variants makes the form a choice per company, and the difference in reaction between
them is evidence.

**Which one goes to Yasmin is Isaac's and Kendall's call**, not settled here. Two honest inputs:
- Variant B is closer to Roberto's own pitch, so it is the one his introduction primes her for.
- Variant B walks straight into the objection Pablo Ramirez raised (recording used to correct
  reps → spontaneity, micromanagement). Variant A was built to sidestep it. Sending B to a
  hybrid/automotive profile, where Roberto thinks the appetite for "a technique the best rep has"
  exists, is a reasonable place to test that objection rather than avoid it.

## What it costs us — the number that is not measured

Variant B roughly doubles the analysis (two weeks, 15–20 conversations, a comparative report,
a practice session) against an analysis time that assumption #6 says nobody has measured, for
two people with coursework (assumption #14). The end-to-end dry run (experiment 2 in
`2026-09-05-experiments-brainstorm.md`) is more important for this variant than for A: if one
sheet takes half a day, B's timeline in §4 does not hold and must be re-sized before sending.

The roadmap's Block 1 (two weeks) was sized around variant A. If B is what goes out first,
Block 1 is one pilot across **two blocks** (weeks 1–4), and everything after shifts by two weeks.
Not applied to the roadmap file until the choice is made.

## Same as variant A

Recipient and the rep-authority question, consent (one question), storage, same-day deletion
after the readout, what we keep (anonymized conclusions and minutes per stage), no compliance
reporting, nothing leaves the two of us, paid continuation stated up front.
