# Meeting notes — Roberto Solano — 2026-09-04, 2:30pm

Source: `raw/2026-09-04-roberto-solano.md` (verbatim call transcript, 30-minute call, referral
from Fernando Carazo — see `../2026-08-26-notes-fernando-carazo.md`). Related to the discovery
hypothesis in
`../../../discovery/01_hypotheses/output/2026-08-26-hypothesis-consultative-sales-teams.md` —
Roberto is not a target-segment interviewee (he's an advisor/connector), so nothing here counts
as segment evidence; his contribution is methodology critique and referrals.

**Identity note (important, don't conflate):** Roberto Solano — partner at AvanteLab, general
director of Forward Costa Rica. He is the one managing the introduction to **Jazmín/Yasmin** (car
agency, possible Hyundai/Kia relationship) referenced below. He is a separate person from
**Sergio E. González** (Regional Owner, Realty ONE Group, Central America & Caribbean) — an
unrelated contact from a different referral chain. The Monday follow-up described here is with
Roberto, not Sergio.

## Agreements
- None recorded as mutual agreements — Roberto reviewed the idea and gave direction; no joint
  commitment was made beyond his own next step below.

## Disagreements
- None recorded.

## New data
- **Technical validation**: Roberto independently reconstructed the intended architecture
  (agents, RAG, "soul/identity" for the agent's persona, a second retraining agent that compares
  against the conversations that converted) — says it matches problems he already works on at
  Forward with student projects. His stated view: *"no está mal, es algo que estamos haciendo en
  muchos productos."*
- **Technical nuance he added**: matching against "the best salesperson" isn't enough on its own
  — the tool would also need to weigh the **client's profile**, since different client/product
  profiles call for different sales strategies, not just different salesperson styles.
- **Unresolved strategic fork he raised**: build a generic SaaS from day one, or start as
  consultancy to a single sales department — an adaptable "skeleton" per client, learn from that
  real engagement, and productize only after. He illustrated with his own recent build (an
  internal startup wired to "Macro," an open, customizable ERP) as an example of the
  skeleton-first philosophy, not as something directly relevant to replicate.
- **Segment-definition pressure**: repeatedly pushed to define the sales profile before going
  further — B2B vs. B2C, retail/service/product/e-commerce/marketplace. Gave three illustrative
  cases: (1) a single-salesperson, $100M-per-sale real estate case (Fernando's La Lima/Carolina)
  — volume too low for the tool to matter regardless of product quality; (2) a fintech call
  center selling credit cards, ~90% hang up immediately — worth checking whether the first five
  words explain the gap with the ~70%-hang-up (used loosely, not as a firm baseline) that
  actually stays on the line; (3) e-commerce as its own category, with no conversation to
  record — only a customer-journey drop-off analysis.
- **His recommendation on where to start**: a hybrid model — digital-marketing lead generation +
  in-person human closing — like car sales: high ticket, few salespeople per team, a simpler
  process to analyze than call-center or pure e-commerce.
- **Concrete example he offered**: an ad agency he works with (currently on a car brand's
  account — was previously "Ambassador," possibly Hyundai or Kia now) generates digital-marketing
  leads; the actual closing happens with a salesperson at a separate dealership — so the sales
  process starts before the in-person conversation and spans more than one company. Confirmed
  separately, per his own framing: it's not yet confirmed whether the agency contact has
  authority to mic salespeople who aren't her direct team, or whether the dealership also needs
  to sign off.
- **His concrete pilot proposal** (this is the plan he designed, independent of anything already
  planned on our side): approach one agency, free, no barrier to entry; mic every salesperson for
  one week; record every sales conversation; flag which ones converted; deliver a report on the
  patterns that separate conversion from non-conversion. Framed explicitly as **the market study
  itself**, not a preamble to one: *"Esto es un estudio de mercado real en la industria, con el
  cliente, donde hay piel en el cuerpo — vender un carro y el salario del que lo vende."*
- **Explicit call to abandon the cold-email channel.** Isaac disclosed the actual numbers directly
  (~60 emails sent, 5 responses). Roberto's answer, when asked if the field pilot replaces that
  approach entirely: *"Totalmente."*
- **Framing requirement for the proposal**: must lead with the value delivered to the company
  ("les mostramos hallazgos accionables"), not with what we get out of it — his words: *"No
  enséñeme algo que me vaya bien a mí. Enséñeme algo que me va a dar valor a mí."* Must be
  explicit that it's free, with no barrier to entry.
- **On volume needed before any conclusion**: doing this with only two examples risks finding "no
  correlation" by chance — he suggested repeating it two or three times, across sectors, before
  concluding anything either way.

## Roberto's commitments
- Will talk to Yasmin/Jazmín (the ad-agency contact) to see if she's open to validating the idea
  there; if she says yes, he confirms back.
- Timeline: Isaac emails him Monday morning as a reminder; Roberto replies the same afternoon,
  after speaking with Yasmin (he had back-to-back meetings the rest of that day).
- Left the door open for a longer-term update: *"Cuando necesiten, ahí me contactan... a medida
  que tenga tiempo, ahí les voy contestando."*

## Our commitments (Isaac / Kendall)
- Send Roberto a reminder email Monday morning (Isaac).
- Coordinate directly with Yasmin/Jazmín once Roberto confirms she's open to it.

## Next steps
- Wait for Roberto's Monday-afternoon reply after he talks to Yasmin.
- Sharpen the pilot proposal in the meantime: what gets recorded, how data is protected, what
  concrete output goes to the company — per Roberto's framing above.
- Toyota's GM stays a **future contact, not a next step**: Roberto knows him personally and calls
  him a strong potential client ("un clientazo"), but explicitly conditioned any introduction on
  having a working proof-of-concept and results first — approaching him now would be premature.
- Search for agencies/companies independently, in parallel to waiting on Yasmin — **not just a
  choice we made**: see the transcript-ambiguity note below for why this is flagged rather than
  stated outright.

## Signals worth calibrating (expressed interest ≠ commitment)
- Roberto's technical validation is advisor feedback, not segment evidence — per
  `../../../discovery/02_interviews/references/interview-guide.md` ("Compliments and advice
  aren't data"), it doesn't count toward validating the hypothesis itself. What it does move is
  methodology: the field-pilot approach as the new validation channel.
- The SaaS-vs-consultancy fork is explicitly **unresolved** — Roberto raised it as a question to
  answer later (around Fase 5 of the field-validation plan), not as a recommendation for now.
- **Transcript ambiguity, flagged rather than silently resolved**: at the point where Isaac asks
  "¿Podríamos nosotros también por nuestra parte buscar alguna [agencia]?", the raw transcript
  renders Roberto's answer as *"No hagan ustedes, porque yo no les confirmo que esto me vayan a
  decir que sí"* — which reads as a literal "don't," even though the stated reason ("I can't
  guarantee she'll say yes") logically argues for doing it in parallel, not against it. This is
  consistent with an ASR transcription dropping a word (e.g. "sí, hagan ustedes también"). The
  human account of this call (recorded before this transcript was processed) says Roberto
  explicitly recommended searching independently in parallel. This note follows that account for
  the "Next steps" item above, but flags the source conflict for the record — confirm against
  memory of the actual call if precision matters later.
