project: consultative-sales-teams

# What the pilot actually delivers — deliverable design — 2026-09-05

Produced with the `brainstorm-ideas-new` skill (`pm-product-discovery`), **deliberately reframed**.

The skill generates feature ideas for a product. `_config/current-strategy.md` forbids exactly
that until Open Question #1 is answered: "no new features get written and no technical scope gets
added." So the three perspectives were applied instead to the thing that genuinely has to exist
before the first pilot can run: **the contents of the analysis handed to the manager**.

`2026-09-04-value-proposition-technical-b2b.md` commits to delivering "a pre-digested, actionable
read" and never says what is in it. This document closes that gap. Nothing here is a software
feature; everything here is something two people can produce by hand.

## Product-manager lens — what goes in the report

1. **Stakeholder map per deal** — who was in the room, who was mentioned but absent, who appears to
   actually decide. Directly answers the failure mode Pablo Ramirez named unprompted (the hidden
   veto-holder, "jalar más sombreros").
2. **Requirements capture sheet** — structured extraction of what the client actually asked for,
   returned fast enough to shorten time-to-quote.
3. **Missed-opportunity flags** — things the client mentioned that never made it into the quote.
   Saylen Morales described exactly this: visits surface adjacent needs the original request never
   mentioned.
4. **Objection ledger** — objections raised and whether each was resolved, with what was actually
   said. Pablo's CRM already tracks objections as typed notes; this captures the conversation.
5. **Loss post-mortem** — for deals that died, what the conversation shows in hindsight.

## Designer lens — how it is delivered so it gets used

1. **One page per visit, fixed structure** — not a transcript dump. The manager's time is the
   constraint the whole form is built around.
2. **Actions first, observations second** — the page opens with what to do, not what was seen.
3. **A rep-facing copy, not only a manager-facing one** — the cheapest hedge against the report
   being experienced as surveillance. Makes it coaching, structurally.
4. **No cross-rep comparison until several visits exist** — avoids ranking people on one data
   point, which would confirm the micromanagement objection immediately.
5. **Delivered as a 15-minute live readout, not a file sent** — guarantees it gets read, and lets
   us watch which parts the manager reacts to.

## Engineer lens — what makes it runnable by hand

1. **Capture**: phone recorder plus a spoken consent script. Nothing to build.
2. **Transcription**: an off-the-shelf tool, not auto-transcription. The WhatsApp auto-transcript
   in `../../02_interviews/output/raw/2026-08-27-carlos-salazar-purdy.md` was corrupted badly
   enough to need a hand reconstruction — that is the quality floor to avoid.
3. **A fixed analysis template** — so Kendall and Isaac produce comparable output instead of two
   personal styles. This is what makes results across pilots comparable at all.
4. **Restricted storage** — answers open question #2 of the plan's Phase 1.1.
5. **A stated retention and deletion window** — answers question #3, and is part of what makes
   consent askable in the first place.

## The five that matter, prioritized

Weighted by core value, speed to validate, and differentiation.

| # | What | Why it ranks here | Assumption it tests |
|---|---|---|---|
| 1 | **Stakeholder / decision-maker map** | Highest differentiation. Pablo called this the thing that would be "muy valioso" — and no CRM, note, or training does it. It is also the one finding that survives his own objection, because it helps the rep decide better rather than putting the manager in the loop | #1 (managers act on the report), #12 (right product form) |
| 2 | **Requirements capture sheet** | The only item touching a pain with a stated cost: Saylen said time-to-quote has cost deals. Fastest to prove valuable or useless | #1, #2 (pain costly enough to pay for) |
| 3 | **Fixed analysis template** | Not customer-facing, but it is what makes the pilot repeatable and its results comparable. The pilot's stated double objective is product *and* process — this is the process half | #7 (does the analysis generalize across verticals) |
| 4 | **Live 15-minute readout** | Cheapest possible instrument for the question that decides everything downstream: does the manager do anything with it? A sent file cannot answer that | #4 (managers read and use it) |
| 5 | **Rep-facing copy** | Cheapest hedge against the two risks that could kill the form regardless of value | #3 (spontaneity), #9 (surveillance) |

## What this deliberately leaves out

- **Follow-up / compliance control** — what Carlos Salazar asked for. Out of scope by the
  2026-09-05 product-form decision in `_config/decisions.md`; logging it here so the boundary is
  explicit rather than forgotten.
- **Anything automated.** Every item above is manual on purpose. Automation decisions belong to
  Phase 6 of the field plan, which only activates if Phase 5 confirms real validation.
- **Voice tone, gesture, and empathy analysis** — Pablo speculated about it ("las entonaciones de
  voz, los gestos"). Attractive and completely unvalidated; would also sharpen every privacy
  objection. Not in the first pilot.

## Still open

- What the report looks like on paper. This document says what goes in it, not its layout —
  [PENDING: a one-page mock, buildable once the first pilot company is confirmed].
- Question #1 of the plan's Phase 1.1 (how many reps participate) is untouched here — it depends
  on the company, not on the deliverable.
