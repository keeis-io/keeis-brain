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
