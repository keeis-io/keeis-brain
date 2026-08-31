project: consultative-sales-teams

# Interview — Carlos Salazar, manager, Purdy (Pérez Zeledón) — 2026-08-27

Source: `raw/2026-08-27-carlos-salazar-purdy.md` (two WhatsApp voice notes + five written
answers). Related hypothesis:
`../../01_hypotheses/output/2026-08-26-hypothesis-consultative-sales-teams.md`.
Rules applied: `../references/interview-guide.md` (Mom Test).

## Facts

- 5 sales reps at the Pérez Zeledón branch.
- CRM in use: **Salesforce** — web app, works on desktop and phone. Already paid for and in daily
  operation.
- Salesforce logs every interaction the advisor performs: scheduled follow-ups, activity marks,
  personal data, type of business, and the customer's requirements.
- Calls are placed from the reps' phones. The rep types comments afterward. **The call itself is
  not retained** — "no queda la llamada completa."
- Today's control mechanism is a Salesforce panel showing, per customer, whether they have not
  been contacted or have been contacted and are pending. It tracks *whether* contact happened,
  not *what* was said.
- Multi-channel intake: WhatsApp is the dominant channel ("generalmente las cosas en WhatsApp"),
  plus email, inbound phone calls, and walk-ins. All funnel into one intake process.
- Conversations per rep per week: **unknown to him**. Walk-ins add unmeasured interactions daily,
  so no figure exists.
- New-rep onboarding: a formal ~3-month program — system training + product training + a short
  in-branch coaching stint. Both a documented program *and* in-person accompaniment.
- He has never had to personally dig into a rep's conversation because the system didn't tell him.
- No sale has been lost due to follow-up not being executed on the system's schedule.
- Recurring friction he does report: customers change a decision and don't communicate it in time
  → rework ("reprocesos").
- Some customers ask to be contacted more frequently than the schedule provides — they want more
  accompaniment, not less.

## Mentioned pains

- **The content gap is confirmed as a fact of the system, but not reported as a felt pain.**
  Salesforce records that an interaction occurred plus the rep's typed comment; the conversation
  itself is gone. Asked directly whether this had ever forced him to investigate (Q2), he said no.
- **The pain he actually names is the person, not the system**: even a perfect system fails if the
  rep behind it doesn't execute the follow-up. He asks for a control mechanism over *people*, not
  over conversation content.
- **Channel overload**: absorbing WhatsApp + email + calls + walk-ins into a single catalogued
  queue that can actually be served.
- **Rework from late customer changes** — the one concrete cost he volunteers.

## What he volunteered instead — his own framing

Unprompted, Carlos reframes the problem as **"los dos flancos"** (two flanks):

1. A good customer-management system — which he already has (Salesforce).
2. A control mechanism over the people who execute the follow-up: trained, incentivized, with
   goals and **visual control mechanisms** for how they manage their pipeline.

This is not the product the hypothesis proposes. The hypothesis proposes visibility into *what was
said*; Carlos asks for enforcement of *whether it was done*. He already has a partial version of
what he's asking for (the contact-status panel), which is part of why the gap doesn't hurt him.

## Current cost / current alternative

- Salesforce, already licensed and in production. [PENDING: cost not asked. First data point in
  this pipeline confirming a paid incumbent tool in the category — any product would sit next to
  Salesforce, not replace it.]
- A contact-status panel inside Salesforce as the supervision instrument.
- A ~3-month structured onboarding program, including in-branch coaching, for ramp-up.
- No spend on conversation capture or conversation review of any kind. [PENDING: annual spend on
  training/coaching was not asked — the money question stayed unasked in this exchange too.]

## Who decides / who pays

[PENDING: not established. Carlos is a branch manager in Pérez Zeledón; Salesforce is very likely
a corporate-level decision, not his. Inference — a branch manager is unlikely to hold budget for a
tool of this type. Neither his exact title nor his budget authority was asked.]

## Commitment signals

- **None secured.** No time, money, data, or letter of intent — per Savoia, no skin in the game.
- He agreed to be re-contacted once something concrete exists: "Si no hay problema." That is
  *permission*, not a commitment — the ask was explicitly framed "sin compromiso."
- **A data ask failed**: Q3 asked for conversation volume per rep and he could not produce a
  number. That is itself a finding — the branch does not measure conversation volume, so any ROI
  arithmetic built on "conversations per rep per week" cannot be sourced from the manager.

## Verbatim quotes

- "Salesforce registra todas las interacciones que el asesor realiza, sin embargo, ellos usan los
  teléfonos para realizar la llamada y anotan los comentarios, pero no queda la llamada completa.
  Actualmente el mecanismo de control es dentro de un panel que muestra si a un cliente no se le
  ha contactado o si se le ha contactado que está pendiente."
- "No, pero si hemos tenido casos en donde los clientes toman una decisión para cambiar algo y
  muchas veces no lo comunican con tiempo y eso genera reprocesos."
- "Actualmente son 5 vendedores y no tengo un dato exacto de la cantidad de conversaciones porque
  todos los días ingresan clientes lo que suma nuevas interacciones."
- "Son ambas, existe un programa de capacitación donde se les explica el uso del sistema,
  capaciones de producto y se le hace un pequeño Coaching en la sucursal, todo el proceso
  generalmente son 3 meses."
- "Realmente no nos ha tocado perder ventas porque no se realizó el seguimiento según el
  cronograma del sistema, sin embargo, si se ha dado que un cliente sienta que necesita mucho más
  acompañamiento en el proceso y solicite que lo contacten aún con más frecuencia."
- From the voice notes (auto-transcribed and corrupted — this is a reconstruction, not verbatim;
  see `raw/2026-08-27-carlos-salazar-purdy.md` §B): "tenés que tener los dos flancos: un buen
  sistema, y un buen mecanismo de control sobre las personas que lo administran [...] podés tener
  [...] la mejor inteligencia artificial, pero si la persona que está detrás del seguimiento no le
  da el seguimiento, [el proceso] caduca."

## Contradictions / nuances vs. the hypothesis

This is the strongest **negative** data point collected so far. Three of the hypothesis's claims
get direct pushback from a manager who lives the process daily:

1. **"Lost sales can't be diagnosed"** → contradicted. Q5 was written specifically to surface a
   lost-sale story and produced the opposite: no sale lost to follow-up failure.
2. **"Managers supervise by the month's result, not by process"** → contradicted. He supervises by
   process, through a contact-status panel, not by the monthly number. The nuance that survives:
   the panel tracks *whether*, never *what*.
3. **"A new rep takes months because nobody can correct them on what they did wrong"** →
   contradicted on the second half. There *is* individualized correction: in-branch coaching
   inside a 3-month program. Ramp-up is ~3 months here, vs. ~6 at Eurohogar.
   → **This is the second data point on the nuance Mauricio's interview left open, and it goes the
   opposite way.** Mauricio: group-only training. Carlos: documented program *and* individual
   coaching. The "nobody can correct them" claim is not holding up.

**What survives intact:** the conversation-content gap is real and confirmed at the artifact level
— Salesforce holds the fact of the call and the rep's own summary of it, never the call. But
Carlos was asked directly and does not experience it as a problem.

**The finding that matters: the gap is confirmed, the pain is not.** Confirming that a system
lacks a capability is not the same as confirming that anyone suffers from its absence. That
distinction is what separates this interview from Mauricio's, where the manager at least felt the
"can't be everywhere" friction.

**Against the hypothesis's own riskiest assumption** ("that the manager wants to *train*, not just
*measure*"): Carlos answers it and lands on the measure side. What he asks for is enforcement,
incentives, goals, and visual control panels — the object of control is the rep's *compliance with
follow-up*, not the *quality of the conversation*. He does invest in development (the 3-month
program), but he did not ask for conversational coaching when handed the opening to.

**Segment fit:** 5 reps at branch level, below the hypothesis's 10–50 band. Purdy as a company is
far larger; Carlos's scope appears to be branch-level. Treat this as a **branch-manager** data
point, not a commercial-director one — the person with the hypothesis's pain, if it exists at
Purdy, may sit above him. [PENDING: confirm his scope and title.]

**Echo of Fernando Carazo's objection:** Carlos is the first confirmed case of an incumbent paid
tool (Salesforce) already occupying this workflow — the concrete version of Fernando's "this
resembles tools already in use." Any offer has to be positioned next to Salesforce, and has to
beat a contact-status panel the manager already considers adequate.
