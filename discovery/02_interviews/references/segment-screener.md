# Segment screener (triage instrument)

The stage before validation. `../../03_synthesis/references/validation-criteria.md` governs the
verdict on **one** segment (minimum 5 interviews, same segment). This governs the pass before
that: shallow, comparable touches across **many** segments, to decide which one earns the five.

A screening touch is not an interview. It does not count toward the five.

## The rule that makes it work

- **Hold the problem constant, vary the segment.** One problem per screening round, asked
  identically across every segment. That is the whole point — you are ranking segments against
  each other, not studying each one.
- **Fixed instrument.** Same four questions, same order, same wording. Do not adapt the phrasing
  to sound relevant to the vertical. Customizing destroys the only thing a shallow pass produces:
  comparability.
- If the four questions stop making sense in a segment, that is a finding about the segment, not
  a reason to rewrite the questions.

## The four questions (Spanish, as sent)

Fill the bracket in Q1 with the problem being screened this round — the same text for every
segment.

```
1. Contame la última vez que [pasó el problema]. ¿Qué pasó exactamente?

2. ¿Qué hacen hoy para eso? ¿Con qué herramienta o proceso?

3. En los últimos 12 meses, ¿compraron, contrataron o cambiaron algo
   relacionado con eso? ¿Más o menos cuánto costó?

4. Una decisión así, ¿la toma usted o alguien más arriba?
```

## Why these four

All four look backward. Per `interview-guide.md`: past behavior, never future intent.

- **Q1 — a concrete incident, unaided.** If they cannot recall one without help, the pain is
  theoretical in that segment. Precedent: Carlos Salazar (2026-08-27) was asked directly whether
  he had ever had to dig into a conversation, and recalled none — the cleanest negative in the
  pipeline, and it came from asking about the past.
- **Q2 — the current alternative.** Includes "nothing" and "a status panel we already consider
  adequate." The incumbent is usually not a competitor product; it is a workaround they like.
- **Q3 — past purchase, not willingness to pay.** Per `validation-criteria.md`, paying today is
  the signal that counts. Precedent: Fernando Carazo is the only recorded purchase behavior in
  the pipeline (AI note-taking hardware, an AI site-walk app) — and he volunteered it; we never
  asked. Ask it every time from now on.
- **Q4 — authority.** The most-missed question so far: budget authority is logged as PENDING for
  both Mauricio Castro and Carlos Salazar. It is the cheapest high-value discriminator available.
  A real pain held by someone who cannot buy is an expensive segment.

## Never in a screening touch

- **Don't describe what we're building.** Both Mauricio Castro and Fernando Carazo ended up
  giving an opinion on the concept instead of describing their operation. Per
  `interview-guide.md`: compliments and advice aren't data.
- **Don't ask for volumes or metrics.** Carlos Salazar could not produce a conversations-per-rep
  figure because the branch doesn't track it. "They don't measure it" is genuine data, but it
  does not rank segments — keep it out of the fixed four and save it for the deep pass.
- **Don't fill a silence with a suggestion.** A hypothesis the interviewee repeats back is worth
  nothing.

## Scorecard — one row per touch

| Segment | Contact | Recalled an incident unaided? | Spends today? how much? | Contact decides? | Comparable population in CR | 5 interviews reachable in 2 weeks? |
|---|---|---|---|---|---|---|

- The last two columns decide more than they look like they should. A real pain in a population
  of 8 companies is worse business than a moderate pain in a population of 200.
- **Comparable population** means the operating model repeats: same product, same cycle, same
  team structure. Five interviews in a bespoke segment measure five different businesses.
- **Reachability** carries the same weight as pain intensity while access runs through student
  status and personal network.

## Decision rule

[PROPOSED — Kendall and Isaac to confirm or replace. The pipeline's recurring failure is exactly
this: `2026-08-26-hypothesis-consultative-sales-teams.md` has carried its numeric criterion as
PENDING since it was written, so evidence accumulates without a threshold that converts it into a
decision.]

A segment earns the deep pass when, across its touches:

- at least 2 contacts recalled a concrete incident unaided, **and**
- at least 1 shows current spend on the problem, **and**
- the reachable contact either decides or can name who does, **and**
- 5 comparable interviews look reachable inside two weeks.

Drop anything that fails on spend **and** on unaided recall. Per `validation-criteria.md`,
dropping a segment fast is a pipeline success, not a failure.

## Logging

- One file per touch in `../output/raw/`, named as usual (`YYYY-MM-DD-<person>-<org>.md`).
- Open every screening file with the line `screening touch — not an interview`, so shallow
  touches never get counted toward the five a verdict requires.
- Keep the running scorecard in the synthesis stage, not here — this file is the instrument, not
  the results.
