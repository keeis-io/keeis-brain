project: consultative-sales-teams

# Lean Canvas — consultative sales teams (CR) — 2026-09-05

Produced with the `lean-canvas` skill (`pm-product-strategy`), written in the block order of the
repo's own template `_config/templates/lean-canvas.md` and under its rule: **every block carries
evidence or `[PENDING]`**. Five of nine are largely pending, which is the accurate picture of a
pre-revenue company that has not yet run a single pilot — not a gap to paper over.

Scope: this is a hypothesis-level artifact supporting
`../../01_hypotheses/output/2026-08-26-hypothesis-consultative-sales-teams.md`. It lives here
because it was built entirely from this stage's preparation work. If the hypothesis ever graduates
into a project, the canvas should be re-derived into `projects/<slug>/canvas/` via `derive`, per
`_config/output-catalog.md`.

| Block | Content |
|---|---|
| **1. Problem (top 3)** | (a) The manager has no visibility into what was actually said in conversations they didn't attend — confirmed by Mauricio, Pablo and Saylen; **explicitly not a felt pain for Carlos**. (b) Deals lost with no diagnosable reason — Pablo: *"pasa más frecuente de lo que uno quisiera"*; Saylen loses bids to competitors without knowing why; **contested by Carlos**, who says it has never happened to him. (c) Client requirements captured on paper get lost and slow the quote — Saylen only, but the only pain with a **stated cost** (deals lost to slow quoting). Current unsatisfactory solutions: the CRM logs *that* contact happened plus typed notes, never the conversation — confirmed independently at Purdy (Salesforce) and Disrupt (unnamed CRM); manager attends only "difficult" negotiations; group training. |
| **2. Customer segments (and early adopters)** | Segment unchanged from the hypothesis: Costa Rican companies with consultative, high-ticket sales where the in-room conversation decides the deal. **Evidence-derived threshold: the pain appears at roughly ≥8 reps.** Fernando Carazo (2 reps) had no pain and was outside the mold; Carlos (5 reps) can still supervise directly and reports no pain; Pablo (9), Saylen (11) and Mauricio (14) all report it. Early adopter / first pilot profile: technical consultative B2B distribution with **no CRM in the field-visit workflow** (the ENHMED shape) — a sequencing choice, not a narrowing. Addressable market size: **[PENDING — never sized; no TAM/SAM/SOM work exists]**. |
| **3. Unique value proposition** | *Convertimos lo que realmente se conversó con el cliente en hallazgos accionables entregados listos, sin que usted tenga que escuchar una sola grabación.* The differentiator is not capture — it is that the manager's time is never spent. Full derivation in `2026-09-04-value-proposition-technical-b2b.md`. |
| **4. Solution (minimal, targets the problem)** | A **delivered analysis service**, manual in the pilot — not software, on purpose. Three highest-priority contents: a stakeholder/decision-maker map per deal, a requirements capture sheet, and delivery as a 15-minute live readout. Full design in `2026-09-05-pilot-deliverable-design.md`. Explicitly excluded: follow-up/compliance control, any automation, and voice-tone/gesture analysis. |
| **5. Channels** | Cold email is **tested and failed** — ~60 emails, 5 responses, zero commitments (the only channel data that exists, and it is negative). Current approach runs three routes in parallel per the field plan: warm introductions through the existing network, own search for companies, and already-interviewed contacts who showed strong pain. **[PENDING: none of the three has produced a confirmed pilot yet — no conversion data exists.]** |
| **6. Revenue streams** | **[PENDING — entirely.]** Money was never discussed in any of the four interviews (Q6/Q7 went unexecuted in three of them). The pilot is deliberately free. Two candidate models are on the table and undecided, deferred to Phase 5 of the field plan: per-engagement consultancy versus a productized subscription. No pricing, no LTV, no growth assumptions. **This is the single biggest hole in the canvas and the thing the whole pilot exists to fill.** |
| **7. Cost structure** | Today the only real cost is Kendall's and Isaac's time, unpaid. Variable cost per pilot = hours of recording review + analysis + delivery — **[PENDING: never measured; the first pilot is what measures it]**. Transcription tooling **[PENDING]**. CAC **[PENDING — no paid acquisition, no conversions]**. Structural note: in the concierge model **cost scales linearly with customers**, which is precisely what makes the consultancy-vs-product fork in Phase 5 a real decision rather than a preference. |
| **8. Key metrics** | Pilot-stage metrics, since there is no live product: **Activation** — the manager takes at least one concrete action from the readout (not "found it useful"). **Retention proxy** — an unprompted request to continue after the free pilot ends. **Revenue** — any payment at all, even symbolic. Pipeline metric: completed pilots carrying real commitment, target ≥3 across ≥2 distinct sales profiles. North Star: **[PENDING — a real one requires a live product]**. |
| **9. Unfair advantage (hard to copy)** | **None today, honestly.** No IP, no network effects, no brand, no switching costs. The only candidate that could accrue: a proprietary corpus of real Costa Rican consultative sales conversations, which nobody has — but it only accrues if pilots actually run *and* the consent and retention terms permit keeping the material, which is unresolved. Willingness to do unscalable manual work is a moat only against competitors unwilling to do it: real, but temporary and weak. **[PENDING: any defensible advantage.]** |

## What this canvas actually says

Read as a whole, the picture is: **the problem side has evidence, the business side has none.**

Blocks 1, 2, 3 and 4 rest on four real interviews and a documented product-form decision. Blocks
6, 7 and 9 are empty, and block 5 contains one measured result that was negative. That asymmetry
is the honest state of the company today, and it matches the repo template's own warning: a canvas
full of assumptions is a list of hypotheses for `discovery/`, not an achievement.

Two things follow:

1. **The canvas does not "afianzar" the hypothesis on its own.** It sharpens what is known and
   makes the holes legible. The hypothesis gets firmer only when the pilot produces behavior —
   which is why the assumption triage, not this document, is the operative artifact right now.
2. **Every empty block is downstream of the same missing event: one completed pilot.** Revenue,
   cost per engagement, channel conversion and any basis for defensibility all get their first
   real number from Phase 3 of the field plan. Nothing is unblocked by more analysis.

## Key assumptions and where they are tracked

Not duplicated here. The full list lives in `2026-09-04-assumptions-map.md` and the triage that
says what to test first — including the two blockers that gate the first pilot (end-client consent,
and keeping a negative result attributable) — lives in `2026-09-04-assumptions-prioritized.md`.

## A note on the framework

The skill's own guidance flags Lean Canvas's limits: it has no vision section, no trade-offs, no
coherence check, and treats defensibility as a single element. It recommends **Startup Canvas**
when both strategic clarity and a business model are needed. Worth revisiting after the first
pilot — at that point there will be actual economics to model, and the trade-offs section (what
Keeis chooses *not* to do) would capture decisions already being made here, like excluding
compliance control and automation.
