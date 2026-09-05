project: consultative-sales-teams

# Lean experiments — beyond the field pilot itself — 2026-09-05 (revised the same day)

Produced with the `brainstorm-experiments-new` skill (`pm-product-discovery`), applied to the
existing validation effort — **not** to a fresh product idea. The field pilot in
`../CONTEXT.md` is already the chosen Concierge/Manual MVP pretotype; this document does not
re-propose it. It formalizes the XYZ hypothesis already implicit in the field plan's Phase 5, and
proposes cheaper, faster experiments that can run *alongside or before* the first full pilot to
de-risk the two blocking assumptions in
`2026-09-04-assumptions-prioritized.md` (#8 end-client consent, #12 product form) and the
High/High ones (#1, #3) — without waiting for a completed pilot to learn anything.

Evidence base read before writing: the active hypothesis
(`../../01_hypotheses/output/2026-08-26-hypothesis-consultative-sales-teams.md`), the field plan
(`../../01_hypotheses/references/2026-09-04-plan-de-validacion-campo-ventas-consultivas.md`), and
every file in this folder. **Second pass (same day):** re-run with the finished proposal
(`2026-09-05-pilot-proposal-consultative-sales.md`) and the roadmap
(`2026-09-05-pilot-roadmap-milestones.md`) as additional inputs. What changed and why is in the
revision note at the end.

## XYZ hypotheses

**Governing hypothesis (formalizes Phase 5 — does not replace or lower its bar):**

> At least **2 of the first 3** companies that complete a full free field pilot (a *completed
> pilot* as the roadmap defines it — kickoff, ≥5 consented recordings, every visit sheet
> delivered, readout held, continuation offer made — spanning at least **2 distinct sales
> profiles**) will, unprompted, either pay something to continue or explicitly ask to keep
> receiving the analysis.

This is the field plan's existing Phase 5 criterion, restated in XYZ form so it reads as a
falsifiable hypothesis rather than a process checklist. Nothing below is meant to satisfy this
hypothesis on its own — only the real pilot can.

**Funnel-stage hypothesis (supports the experiments below — a softer, earlier signal, not a
substitute for the governing one):**

> At least **1 of the 3** already-interviewed managers (Mauricio Castro/Eurohogar, Pablo
> Ramirez/Disrupt, Saylen Morales/ENHMED) will take a concrete next-step action — ask to try it
> with their own team, refer another manager, or request a pilot slot — after seeing the sample
> sheet, without being asked to.

Saylen Morales/ENHMED stays in this population: the first proposal goes to Yasmin's ad agency
(Route A), so Saylen's reaction to the sample sheet is a cheap read on the intended second
profile before her own proposal variant is sent in Block 2.

## Why these three, and not others

Landing pages and explainer videos (the skill's default suggestions) don't fit well here: the
buyer is a specific manager reached through warm introduction or a known interview contact, not
an anonymous market you drive traffic to. Pre-orders and waitlists don't fit as standalone
experiments either — but the proposal now carries the pre-order's function inside the pilot (see
"Instrumentation inside the pilot" below). The three below stay inside that reality.

## Experiment 1 — Sample Sheet Reaction Test

**Tests**: assumptions #1 (managers act on the report), #4 (they read/use it), and #12 (right
product form) — from `2026-09-04-assumptions-prioritized.md`.

- **Hypothesis**: the funnel-stage hypothesis above.
- **Method**: show the sample sheet — Annex A of the proposal, fictional and labeled as such;
  for Saylen, a field-visit version of it — to Mauricio, Pablo and Saylen in a short call. Do not pitch. Ask only "¿qué haría usted con
  esto?" and observe whether the answer is an opinion ("interesante") or an action. With Pablo
  specifically, this is the sharpest cheap test of #12 available: he called the hidden
  decision-maker finding "muy valioso" and then objected to recording. The sheet puts the
  finding in front of him with the mechanism (consent script, no manager listening, nothing
  personal analyzed) already answered. If the finding still loses to the mechanism, the
  "delivered analysis service" form is in trouble with the incumbent-CRM profile before a single
  pilot runs there.
- **Metric**: number of the three who take a concrete next-step action unprompted.
- **Success threshold**: ≥1 of 3.
- **Cost**: near zero — no new recording, no new company, two calls with warm contacts.
- **When**: now, before T0 (the roadmap's clock has not started; this needs no company), and
  again in any recruiting gap in Blocks 2–3.
- **Savoia check**: **YODA — yes** (real target-segment managers, our own data). **Skin-in-the-
  game — weak, flagged explicitly**: an unprompted next-step ask is a mild behavioral signal, not
  money or a real commitment. Treat a positive result as encouraging, not as validation — the
  governing hypothesis still requires a completed pilot with real commitment.
- ~~[PENDING: the mock sample report doesn't exist yet]~~ **Resolved**: the sample sheet exists
  (proposal, Annex A). Nothing blocks this experiment.

## Experiment 2 — End-to-End Dry Run (consent script + the whole delivery chain)

**Tests**: assumptions #3 (recording doesn't destroy spontaneity), #8 (end-client consent — now
a decided mechanism, so there is something to dry-run), #9 (reps don't experience it as
surveillance), and — new — **#6 (how long the analysis actually takes)**, the number Block 1 of
the roadmap is sized around and nobody has measured.

- **Method**: before T0, run the *entire* chain once on one low-stakes real conversation with a
  warm contact who knows it is a dry run — not a simulation, an actual recorded conversation with
  the consent script asked live (`../references/consent-script.md`). Then do everything the
  pilot would do: upload to the restricted Drive folder, transcribe locally, analyze with
  `../references/analysis-template.md`, write the sheet, deliver it, delete everything the same
  day, log minutes per stage in a throwaway run file per `../references/pilot-run-template.md`.
  Ask both sides afterward whether being recorded changed what they said.
- **Metrics**: consent obtained without friction (yes/no); self-reported behavior change;
  **minutes per stage for one conversation** and whether the 2-business-day turnaround the
  proposal promises is realistic for ~12 visits over two weeks.
- **Success threshold**: consent obtained cleanly; no reported material change in what was
  said; a single visit sheet produced end to end in **[PENDING — this run sets the number]**.
  If one sheet takes more than a working day for two people, the proposal's §4 turnaround or
  its volume cap ("hasta unas doce visitas") must change *before* it is sent, not after.
- **When**: before the proposal is sent, or at the latest before Block 1 Day 0. It is the first
  item in `2026-09-05-pilot-next-steps.md` that depends on nobody outside Keeis.
- **Savoia check**: **YODA — yes** (a real recorded conversation). **Skin-in-the-game — weak,
  flagged explicitly**: deliberately low-stakes — it de-risks the *script and the process*, not
  the *market*. It does not test whether a real client agrees under real commercial pressure;
  Block 1's consent counts do that.
- **Why this doesn't replace deciding #8**: the mechanism is now decided in writing
  (`_config/decisions.md`, 2026-09-05) and a lawyer review is scheduled as a next step. This
  experiment tests whether the chosen script works in someone's mouth, which is a different
  question from whether it is the right mechanism.
- ~~[PENDING: the consent mechanism itself is still undecided]~~ **Resolved**.

## Experiment 3 — One-Page Explainer as a Route-B Filter

**Tests**: interest strength among Route B contacts (companies found through the founders' own
search, per the field plan's Vía B) before spending a full 20-minute call on each one. Also, for
Route A's ad-agency contact, the authority question Roberto Solano flagged (whether the agency
can mic salespeople who work at a separate dealership).

- **Method**: the explainer is no longer a separate artifact to build — it is §1 plus Annex A of
  the proposal, sent as a short message. Ask for a specific reply — not "would this interest
  you," but "reply if you want to see how this would look for a real week with your team." Add
  one screening question in the same message: *who on your side has authority over the reps who
  would be recorded?* — so an agency that does not control the sales floor is identified before
  a call, not during it. Do not follow up generically; only track who replies. Framing must
  still lead with value delivered, per Roberto Solano's rule (*"No enséñeme algo que me vaya
  bien a mí"*) — this is a filter on top of the proposal, not a different pitch.
- **Metric**: reply/booking rate among Route B contacts approached this way; share of replies
  that pass the authority question.
- **Success threshold**: **[PENDING — no baseline exists yet; the first batch of replies sets
  the calibration point, not an assumed percentage]**.
- **When**: Route B search starts now in parallel with Route A, per the plan's Phase 2; the
  filter is what Block 2 recruiting (second profile) runs on.
- **Savoia check**: **YODA — yes**. **Skin-in-the-game — weak-to-moderate**: a specific reply
  asking to proceed is a real action, but still a funnel-stage filter, not the governing
  hypothesis's payment/continuation signal.

## Instrumentation inside the pilot (not separate experiments)

The proposal changed the pilot itself in three ways that matter to Savoia's skin-in-the-game
rule, and they are recorded here so they are not treated as optional:

1. **The continuation offer is the pre-order test.** The proposal's §8 says up front that
   continuing after the free pilot has a price. The readout ends with that offer stated plainly,
   with terms decided *before* the readout (next-steps item), followed by silence. The answer is
   recorded as exactly one of paid / asked to continue unprompted / neither. This is the only
   moment in the whole channel where money is on the table, and it is inside every pilot.
2. **The three observable-use questions replace "was it useful?"** (proposal §9): a quote built
   from a sheet; an unquoted opportunity that reached an offer; an action the manager took. They
   instrument #1, #2 and #4 at zero extra cost, as the triage said one pilot could.
3. **Per-visit delivery creates a daily behavioral signal.** Because sheets arrive within two
   business days rather than as one end-of-week report, whether a rep builds a quote from a
   sheet is observable *during* the pilot, not only at the readout. Log it per visit in the run
   file.

## What this does not change

- The field pilot (Concierge/Manual MVP) stays the primary and only experiment that can satisfy
  the governing hypothesis. These three are pre-work that can run in parallel with Route A/B/C
  outreach, cheaper and faster, to reduce the chance of running a full pilot only to discover
  the sheet format doesn't land, the consent script doesn't hold up, or the turnaround promise
  cannot be kept.
- None of these experiments touch pricing. Per the field plan, willingness to pay is tested only
  inside a completed pilot, at the readout, after delivery — never before.

## Revision note — 2026-09-05, second pass

Re-run with the finished proposal and the two-week roadmap as inputs. Reviewed, not redone.

- **Experiment 1**: the `[PENDING]` mock is resolved — the sample sheet is the proposal's Annex
  A. Population stays at three (the first proposal goes to Yasmin's agency, not to Saylen).
  Pablo's reaction re-framed as the cheapest available test of #12.
- **Experiment 2**: the `[PENDING]` mechanism is resolved (decision logged). Widened from a
  consent-script dry run to an end-to-end process dry run, because the roadmap's Block 1 is
  sized around an unmeasured analysis time (assumption #6) and the proposal now promises a
  2-business-day turnaround — a promise that should be checked once before it is made to a
  company. Made a pre-T0 item.
- **Experiment 3**: the explainer no longer needs building (proposal §1 + Annex A). Added the
  rep-authority screening question because Route A's agency case has exactly that problem, and
  tied the experiment to Block 2 recruiting.
- **Added "Instrumentation inside the pilot"**: the proposal's priced continuation (§8) and
  observable-use questions (§9) are the pre-order and behavior measurements Savoia asks for;
  they belong inside the pilot, not as a fourth experiment, and are now named so they are not
  skipped.
- **Governing hypothesis**: unchanged in substance; "one-week pilot" replaced by the roadmap's
  definition of a completed pilot, since the one-week figure was never measured.
- **Same-day corrections from Isaac's review**: first recipient is Yasmin's agency (Route A),
  deletion happens the day the readout is delivered, and consent is one verbal question to the
  client. Experiments 1–3 adjusted accordingly; nothing else changed.
