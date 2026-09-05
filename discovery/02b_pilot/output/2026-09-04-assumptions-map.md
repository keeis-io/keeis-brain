project: consultative-sales-teams

# Assumption map — 8 risk categories — 2026-09-04

Produced with the `identify-assumptions-new` skill (`pm-product-discovery`), extending Teresa
Torres' four core product risks (Value, Usability, Viability, Feasibility) with Ethics,
Go-to-Market, Strategy & Objectives, and Team — the categories that matter for a new product.

Subject: AI-assisted sales conversation intelligence for consultative B2B sales teams in Costa
Rica, validated via the manual field pilot in
`../../01_hypotheses/references/2026-09-04-plan-de-validacion-campo-ventas-consultivas.md`.
Evidence base: `../../02_interviews/output/` (four structured interviews) and
`../../../meetings/02_notes/output/2026-09-04-notes-roberto-solano.md`.

Triage and experiment design live in `2026-09-04-assumptions-prioritized.md`.

## Three perspectives

- **PM** — demand is confirmed unevenly: 2 of 4 (Pablo, Mauricio) value the insight; 1 of 4
  (Carlos) actively rejects it and asks for something else; nobody has paid or committed anything.
- **Designer** — the "product" today is a manual service. The real friction isn't interface, it's
  trust (recording real clients) and whether the manager acts on the delivered report at all.
- **Engineer** — the pilot deliberately avoids technical risk (no AI pipeline yet), but two
  interviewees already imply a generic model won't generalize across verticals: "cada caso es
  único."

## The map

| # | Category | Assumption | Confidence | Evidence | Suggested test |
|---|---|---|---|---|---|
| 1 | Value | Managers value conversation *content* (not just that contact happened) enough to act on a report | Low | Real split: Pablo and Mauricio yes; Carlos explicitly no — "nunca he perdido una venta por eso", asks for compliance control instead | The pilot itself, plus an explicit post-delivery question: "what action did you take from the report?" — not "was it useful?" |
| 2 | Value | The "lost sale with no explanation" pain is frequent and costly enough to justify paying | Medium | Confirmed by Pablo and Saylen (lost to competition without knowing why); denied by Carlos for his case | The plan's Phase 5 threshold: require symbolic payment or an unprompted request to continue |
| 3 | Usability | Recording doesn't destroy the spontaneity that, per Pablo, actually closes the sale | Low | Pablo's direct objection: self-censorship on both sides. No field data — nobody has been recorded yet | Consent-based pilot + post-pilot question to the rep: "did knowing it was recorded change how you spoke?" |
| 4 | Usability | Managers will read and use a delivered manual report (it doesn't get filed unread) | Low | No evidence — no interviewee has received a report. Cognitive-load risk untested | Track in pilot 1: does the manager open it, discuss it, change anything with a rep because of it? |
| 5 | Viability | Some companies in the segment will pay (even symbolically) after a free pilot | Low | None of the four interviews cleanly touched money (Q6/Q7 not executed in 3 of 4). This is exactly what Phase 5 exists to test | The plan's Phase 5 criterion: ≥3 pilots, ≥2 sales profiles, with payment or unprompted continuation |
| 6 | Viability | The cost of delivering analysis by hand (Kendall + Isaac) is sustainable for 3+ concurrent pilots (Phase 4) | Medium-low | No data — zero pilots run. Analyzing conversations by hand does not scale like pitching the concept does | Time the first pilot end to end (recording hours → analysis hours → delivery hours) before committing to Phase 4 |
| 7 | Feasibility | An analysis model (manual now, AI later) generalizes across verticals (real estate, medical, automotive) | Low | Pablo contradicts it directly: "lo que funcionó en el caso A puede que no funcione en el caso B" — every consultative sale is bespoke | Compare pilot findings across ≥2 distinct verticals (already required by Phase 4) before assuming one product |
| 8 | Ethics | It is acceptable to record the **end client** — a third party who never opted into the pilot — with only the manager's/rep's consent | **Very low — unresolved** | Nobody has resolved this. Pablo flagged it as his second substantive objection: "de índole legal... la privacidad de la conversación". Costa Rica has Ley 8968 on personal data protection — [PENDING: not verified as legal fact, logged as risk] | Before the first pilot: define an explicit end-client consent mechanism, not just internal company authorization. **Blocking, not nice-to-have** |
| 9 | Ethics | Reps won't experience the recording as covert surveillance, even when framed as coaching | Low | No direct data, but Pablo's empowerment-vs-micromanagement objection suggests the framing matters as much as the fact of recording | Ask the pilot's reps — not only the manager — how being recorded felt |
| 10 | Go-to-Market | Cold email doesn't work as a channel | **High — already validated (negatively)** | Stated directly by Kendall, 2026-09-04; the reason for the channel pivot | Already settled — the plan pivots to Routes A/B/C (network, own search, already-interviewed contacts) |
| 11 | Go-to-Market | "No cost, no commitment" is the right entry framing (vs. anchoring expectations at "free forever") | Untested | A design decision in the plan's Phase 1.2, not a field finding | Track across the 3+ pilots whether the free framing affects later willingness to pay — a variable to watch, not to assume |
| 12 | Strategy | The final product is "passive capture + analysis" and not one of the other forms surfaced in the interviews | **Very low — actively contested** | Carlos asks for compliance control; Pablo asks for a niche-trained AI agent solving one focused problem, explicitly *not* a recording tool | The pilot is the test — but it must be designed to distinguish which of the three forms draws the strongest reaction, not default to form A |
| 13 | Strategy | The generic-SaaS vs. adaptive-consultancy fork can be deferred to Phase 5 at no cost | Medium | Roberto Solano's fork; the plan defers it deliberately (correct, avoids over-investing). But each manual pilot *is* de facto the consultancy option — evidence is already accruing | None new — just make explicit at Phase 5 that there will already be evidence of how consultancy feels to operate |
| 14 | Team | Kendall + Isaac (two people, students) can sustain 3+ manual pilots in parallel without degrading analysis quality | Low | No data — zero pilots run. Coursework and other obligations are real and logged as separate (`_config/company.md`) | Measure real load in pilot 1 before committing to the Phase 4 cadence |
| 15 | Team | No third profile (legal, sales-domain, technical) is needed before Phase 6 | Untested | The only domain support so far is informal (Roberto Solano). The ethics/legal risk in #8 could require legal judgment earlier, not later | Resolve #8 first; if consent turns out to be legally complex, this assumption fails with it |

## The two that matter most

**#8 (end-client consent)** is the only item on this list that can legally block the first pilot.
It is unresolved in every document in the repo.

**#12 (which product form)** is the one that makes a negative pilot result uninterpretable. The
pilot as currently described tests the variant that 2 of 4 interviewees already objected to, and
the plan does not distinguish between "the pain is real" (fairly confirmed) and "this is the right
way to solve it" (still contested).
