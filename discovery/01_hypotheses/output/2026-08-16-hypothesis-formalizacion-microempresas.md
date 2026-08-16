# Customer hypothesis — informal microenterprises in Costa Rica (tax/CCSS/municipal compliance)

- **Segment**: informal or transitioning-to-formal microenterprises in Costa Rica — market
  vendors, small sodas, neighborhood hair salons, artisans, small workshops — regardless of
  industry. Not the already-formalized SME segment with an accountant, which is saturated with
  competition (see `../references/2026-08-16-competencia-por-proceso.md`).
- **Pain**: resolving compliance with three institutions at once — Hacienda (tax authority),
  CCSS (social security), and the municipal business license (patente) — starting from their
  own sales, with no visibility into real cash flow separate from personal money. INEC counts
  435,000+ household microenterprises in Costa Rica; 80.1% keep no formal accounting records,
  and 62% manage invoicing/inventory/customer service manually or on paper/Excel (see
  `../references/2026-08-16-mercado-y-oportunidad.md`).
- **Current alternative**: nothing, or hiring an accountant/informal gestor sporadically, or
  risking non-compliance. Hacienda's free e-invoicing tool is now restricted to accredited
  professionals and accredited micro/small businesses only — the government itself is pushing
  this segment toward private solutions.
  [PENDING: confirm actual mix once interviews start — this is a desk-research assumption, not
  observed data]
- **Why they'd pay**: concrete legal risk, not a "nice to have." A missing/invalid receipt can
  cost ₡924,400 (two base salaries) plus temporary closure on repeat offense. Since October
  2025, e-invoicing v4.4 lets Hacienda pre-fill VAT declarations and audit in real time. Since
  July 2026, reports indicate Hacienda began cross-checking SINPE Móvil payments against
  undeclared economic activity — raising urgency versus a few months ago. No existing player
  (Alegra, Caronte, and ~15 others mapped) combines Hacienda + CCSS + patente in one flow for
  someone who isn't formalized yet — see
  `../references/2026-08-16-competencia-por-proceso.md`.
- **Reference price**: the real substitute is hiring an accountant, not competing software.
  Official minimum rate for a Costa Rican CPA: ₡22,695/professional hour. Estimating 2-3
  hrs/month of basic bookkeeping (Hacienda + CCSS + patente) puts the formal floor at
  ₡45,000–68,000/month (~$85-125) — **estimated, not field data**. Informal gestores (non-CPA)
  likely charge less, but there's no verified number; ask directly in interviews. Existing
  software competitors (Alegra) start at $9.99/month with no permanent free plan — the wrong
  anchor for this segment, since the target doesn't pay anything today for business management.
  Full pricing reasoning: `../references/2026-08-16-pricing-y-viabilidad.md`.
- **Riskiest assumption**: that the compliance pain (Hacienda + CCSS + patente combined) is
  really the #1 pain for this segment — as opposed to something desk research can't see
  (collecting payment on time, getting customers, finding reliable employees). A secondary risk
  folded into the same assumption: part of the informality in this segment is deliberate tax
  avoidance, not just lack of awareness — if so, no compliance tool fixes it, and the pitch has
  to be "avoid the fine and the closure," never "be a good taxpayer."
- **Test**: of 15-20 discovery interviews (no product pitch), at least 3 of 8 interviewees
  describe the joint-compliance pain unprompted. If that holds, show a clickable prototype of
  "sign up + first receipt" to 10 of the interviewees and ask price directly. Final test: of
  5-10 early adopters recruited into a manual ("Wizard of Oz") pilot — backend run by hand over
  WhatsApp, no real product yet — at least 3-5 commit to recurring payment and refer others.
  Full week-by-week plan: `../references/2026-08-16-plan-de-validacion-campo.md`.
- **Skin-in-the-game evidence** (Savoia, *The Right It*): completing a first real receipt
  through the manual pilot, returning to use it the following week, a recurring payment
  commitment, and referrals — not just polite interest in the idea of a compliance bot.
- **People to contact**: [PENDING — no real names/organizations yet]. Prioritized channel is
  in-person, not cold outreach: **Priority 1** — Feria del Agricultor and Cámara de
  Comercio/gremios of Pérez Zeledón (geographic-proximity advantage). **Priority 2** (after
  initial validation) — partnerships with Banca para el Desarrollo or INAMU formalization
  programs, which give access to dozens of already-organized entrepreneurs. **Priority 3** —
  WhatsApp/Facebook groups of entrepreneurs by canton, for awareness only, not cold selling.

## Why this segment first

The only combination identified in desk research that satisfies four conditions at once:
applies to any microenterprise regardless of industry (horizontal by industry), has real
adoption force (a concrete legal fine, not a "would be nice"), has no direct competitor solving
all three institutions together in Costa Rica today, and is cheap to validate. Deliberately
scoped narrow: **vertical in function** (sale → legal compliance → cash flow only — no
inventory, scheduling, or customer-service CRM, where mature competition already exists: Alegra,
Caronte, and the rest of `../references/2026-08-16-competencia-por-proceso.md`), **horizontal in
industry**. The channel (WhatsApp, app, voice, or a module inside an existing horizontal product
like Caronte) is deliberately left open — it gets decided with field data, not assumed. See
`../references/2026-08-16-procesos-compartidos-scoring.md` for why the top five ranked
compliance processes are one shared data root (each sale) rather than five separate products.

This is a **new, third front** alongside the two already active in
`../../../_config/current-strategy.md` (validating `plates`, and the business plan for Erik) —
unrelated to plate recognition. Logged here as a parallel discovery track per an explicit
in-session decision on 2026-08-16; see `../../../_config/decisions.md`. Not yet promoted to
`_config/current-strategy.md`'s "Current hypotheses" — that update is `discovery/03_synthesis`'s
job, after this hypothesis has evidence behind it, not before.
