# Decision log
Format: date — decision — reason — who.

- 2026-08-14 — Adopted ICM (this Git repo, Umbrella form) as Keeis's working structure;
  Docmost becomes the publishing library for stable, already-approved documents. —
  Our workflows are sequential, reviewable, and repeatable (exactly the case the paper scopes for);
  we're two people using Claude Code; Git gives sync, history, and traceability with no extra infrastructure. —
  Kendall + Isaac.

- 2026-08-14 — Integration architecture v2: connections via MCP (Jira: Atlassian's official
  Rovo; Docmost CE: community server), capabilities as versioned skills in
  `.claude/skills/`, ProDesk cadence limited to read-only reports in `_reports/`.
  External effects (creating pages/issues) only in `04-publish` stages with human
  approval in an interactive session. — Completes the four layers (context, connections,
  capabilities, cadence) without breaking ICM's review gates. — Kendall + Isaac.

- 2026-08-14 — Automatic publishing v3: amends the rule "the server never writes to
  Docmost/Jira." New rule: the server never GENERATES or DECIDES publications, but it does
  TRANSPORT approved artifacts. The review gate moves from "interactive session" to an act
  on the filesystem: moving the artifact to `04-publish/approved/` + commit + push
  (auditable in Git). Bot connectors kept separate from the laptops' (laptops: wisflux +
  Rovo OAuth; bot: MrMartiniMo stdio + Rovo with a scoped API token). — Keeps ICM's human
  gate intact and turns transport into reliable, idempotent mechanics. — Kendall + Isaac.

- 2026-08-14 — Final output layer v5: the system settles into two verbs with a human gate
  between them. `derive` mounts artifacts per `_config/output-catalog.md` (documents →
  owning project's folder, company = `projects/keeis/`; payloads → `outputs/<destination>/`).
  `activate` is the only point with external effect (in-session command as the main route;
  backup: a commit to `outputs/*/approved/` that the ProDesk publisher transports). The
  `04-publish` stages are removed: publishing IS `derive` + `activate`. Day-one templates:
  spec, architecture, lean-canvas, bmc, jira-tasks, docmost-page. `meetings/03` closes
  with "Derivation proposals" (the system proposes; the humans trigger). — Kendall + Isaac.

- 2026-08-14 — English becomes the internal working language for the entire keeis-brain
  system (docs, rules, and all future runs); previously Spanish was internal and English was
  reserved for investor-facing material only (`_config/voice.md`). Every existing document
  rewritten from Spanish to English in place. — Kendall's call, stated directly. — Kendall.

- 2026-08-14 — Full Anglicization: every folder, file, skill name, and catalog/front-matter
  identifier in the repo renamed from Spanish to English (`bandeja`→`inbox`,
  `descubrimiento`→`discovery`, `plan-negocio`→`business-plan`, `reuniones`→`meetings`,
  `proyectos`→`projects`, `salidas`→`outputs`, `servidor`→`server`, `derivar`→`derive`,
  `activar`→`activate`, `nuevo-proyecto`→`new-project`, catalog keys `arquitectura`→`architecture`,
  `tareas-jira`→`jira-tasks`, `pagina-docmost`→`docmost-page`, front-matter fields
  `proyecto:`→`project:` and `origen:`→`source:`, and the `placas` project renamed to `plates`).
  All cross-references across every doc updated to match. English is now the language of the
  system's vocabulary itself, not just its prose. — Kendall's call, stated directly. — Kendall.

- 2026-08-14 — Adopted three pieces from a proposed company-wide "brain" structure (org-by-
  department) into the existing ICM pipeline structure, without replacing it:
  `_config/invariant-rules.md` (business/compliance restrictions that never break, distinct
  from `CLAUDE.md`'s agent-behavior rules), `_config/confidentiality-classification.md`
  (public/internal/confidential/restricted), `_config/glossary.md` (shared vocabulary), and a
  company-wide `references/` folder for external research with no clear pipeline yet. Declined
  the rest of the proposed structure (`operations/`, `legal-compliance/`, `finance/`, `hr/`,
  `brand-communications/` as full department trees) as premature scaffolding for a pre-product,
  two-person company with no validated client — see `current-strategy.md`'s open question. —
  These three fill real gaps in Layer 3 without conflicting with the derive/activate pipeline
  model; the rest can be added later as single files when there's something real to put in
  them. — Kendall.

- 2026-08-16 — Logged a third discovery hypothesis (informal microenterprise tax/CCSS/municipal
  compliance in Costa Rica — `discovery/01_hypotheses/output/2026-08-16-hypothesis-formalizacion-microempresas.md`)
  as an active parallel run, migrated from desk research captured in `files/`. This knowingly
  exceeds `current-strategy.md`'s stated "max 2 fronts at a time" (currently `plates`
  validation + the business plan for Erik) — accepted explicitly as a temporary parallel
  exploration, not a resolved reprioritization. — Unrelated to plate recognition; needs a
  deliberate human call (drop a front, formally add a third, or pause this one) before it
  reaches `discovery/03_synthesis`. — Kendall + Isaac, pending explicit resolution.

- 2026-08-26 — Promoted the consultative-sales-teams hypothesis (high-ticket B2B sales teams in
  Costa Rica — `discovery/01_hypotheses/output/2026-08-26-hypothesis-consultative-sales-teams.md`)
  to primary discovery front in `_config/current-strategy.md`, replacing `plates` (license-plate
  recognition), which is paused, not disproven or discarded (`projects/plates/CONTEXT.md`). The
  business plan for Erik (front #2) stays as-is and is explicitly decoupled from `plates`: Erik's
  2026-08-12 ask was for a milestone-based plan, framed around `plates` only as the concrete
  example on hand that day, not a requirement to keep that scope. The parallel microempresas
  exploration (2026-08-16 entry above) is unaffected by this pivot and remains its own pending
  resolution. — Two real data points already in hand for consultative-sales-teams (Mauricio
  Castro/Eurohogar, Fernando Carazo/La Lima) vs. `plates` still lacking real interviews; Kendall's
  explicit call to prioritize the front with live signal. — Kendall.

- 2026-08-26 — Same day, later: also paused the informal-microenterprise-compliance hypothesis
  (`discovery/01_hypotheses/output/2026-08-16-hypothesis-formalizacion-microempresas.md`),
  superseding the "unaffected by this pivot" line in the entry immediately above. All company
  discovery effort now sits on consultative-sales-teams alone; `plates` and microempresas are
  both paused, not disproven, in `_config/current-strategy.md`. This also resolves the
  2026-08-16 entry's open flag ("needs a deliberate human call... before it reaches
  `discovery/03_synthesis`") — the call was to pause it, not promote it further. — Kendall's
  explicit call: single-front focus on the hypothesis with live signal. — Kendall.
