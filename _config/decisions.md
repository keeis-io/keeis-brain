# Decision log
Format: date — decision — reason — who.

- 2026-08-30 — Renamed `inbox/` to `ideas/` (folder + every cross-reference in `CLAUDE.md`,
  `CONTEXT.md`, `progress.md`, `README.md`, `server/jobs/weekly-digest.md`, and the folder's own
  `README.md`). — Requested directly; no reason beyond preference recorded. Left the 2026-08-14
  entry below (`bandeja`→`inbox`) untouched — it documents what was decided that day, not what
  the folder is called now. — Kendall.

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

- 2026-09-05 — Gave the pilot channel decided on 2026-09-04 (entry at the end of this log) a home
  in the structure: added **`discovery/02b_pilot/`** as a *second stage-02 evidence channel*,
  parallel to `02_interviews` — not a successor to it, and deliberately not numbered `04`, which
  would place it after synthesis. Both channels feed `03_synthesis`. Wired into every file that
  routes or loads context: `CLAUDE.md` (map), root `CONTEXT.md` (routing table),
  `discovery/CONTEXT.md`, `discovery/MOC.md`, `HOME.md`, `02_interviews/CONTEXT.md` (pointer), and
  — the one that mattered — `03_synthesis/CONTEXT.md`, whose Inputs named only
  `02_interviews/output/` and would therefore have issued a verdict blind to every piece of pilot
  evidence, while applying an interview-count threshold that pilot-channel runs will never meet.
  — A channel with no stage folder has nowhere to put its artifacts, and a synthesis stage that
  doesn't know the channel exists silently produces wrong verdicts. — Kendall + Isaac.

- 2026-09-05 — The pilot's **first target profile** is the ENHMED-like one (technical consultative
  B2B distribution, ~10 reps, no CRM occupying the field-visit workflow). **This is a sequencing
  call, not a narrowing of the segment.** The hypothesis under validation remains what
  `discovery/01_hypotheses/output/2026-08-26-hypothesis-consultative-sales-teams.md` states:
  Costa Rican companies with consultative, high-ticket sales — the pilot exists to keep validating
  that segment *more realistically*, not to shrink it to one vertical. Purdy (automotive) and
  Disrupt (real estate) stay inside the segment; they are simply harder first tests because an
  incumbent CRM already occupies the workflow. The governing plan requires the opposite of
  narrowing: Phase 4 repeats across 2–3 more companies and Phase 5 refuses any decision built on
  fewer than two distinct sales profiles. A second profile gets its own value-proposition pass;
  the differences between profiles are themselves evidence. — Kendall's explicit correction, made
  when the first draft of
  `discovery/02b_pilot/output/2026-09-04-value-proposition-technical-b2b.md` described the choice
  as a segment narrowing; the artifacts were corrected to match. — Kendall.

- 2026-09-05 — **Product form the pilot tests**: a *delivered analysis service* — the conversation
  is captured and the manager receives a pre-digested, actionable read of it, listening to nothing
  and reviewing no recordings. Explicitly not the two competing forms the interviews surfaced:
  not compliance/follow-up control (what Carlos Salazar asked for), and not a self-serve
  supervision tool the manager operates. — Chosen because it is the only form that answers Pablo
  Ramirez's three principled objections at once (manager as a finite resource / empowerment vs.
  micromanagement, spontaneity, and privacy), while still delivering the conversation content that
  no CRM captures. Recorded as an explicit, falsifiable bet: if the pilot fails, this decision is
  one of the named suspects, per
  `discovery/02b_pilot/output/2026-09-04-assumptions-prioritized.md` (assumption #12). — Kendall +
  Isaac.

- 2026-09-04 — Replaced cold-email/call outreach with a field pilot ("piloto del piloto",
  concierge MVP) as the Stage 02 validation channel for the consultative-sales-teams hypothesis:
  a free one-week manual recording-and-analysis pilot with a real sales team, validating product
  and process at once. New evidence threshold, specific to this hypothesis only: at least 3
  completed pilots across at least 2 distinct sales profiles, with real commitment (payment or an
  unprompted request to continue) — not general interview counts. Recorded in
  `discovery/01_hypotheses/references/2026-09-04-plan-de-validacion-campo-ventas-consultivas.md`
  and in the hypothesis's `Test` field
  (`discovery/01_hypotheses/output/2026-08-26-hypothesis-consultative-sales-teams.md`). Does NOT
  change `discovery/03_synthesis/references/validation-criteria.md` — that stays the pipeline's
  default for hypotheses validated by interview alone; only generalize it if a future hypothesis
  also validates by pilot. — Prompted by Roberto Solano's advice (advisor/connector, not a
  segment interviewee — `meetings/02_notes/output/2026-09-04-notes-roberto-solano.md`): ~60 cold
  emails yielded 5 responses, which isn't real validation ("no hay piel en el cuerpo"); a free
  field pilot produces real behavioral commitment instead of opinion. — Kendall + Isaac.
