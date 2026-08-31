# Output catalog (the derivation map)

The `derive` skill consults this table to know which template to use and where to mount each type.
**Scaling the system = adding a row here + a template in `_config/templates/`.** Nothing else.

Two output classes:
- **Document**: lives with its owner (a project, or the company = `projects/keeis/`). Source of truth in the repo.
- **Payload**: draft of an external send. Mounted in `outputs/<destination>/` and waits for the activator.

| Type | Class | Template | Mounted in | Activation |
|---|---|---|---|---|
| `spec` | Document | `templates/spec.md` | `projects/<slug>/specs/` | — |
| `architecture` | Document | `templates/architecture.md` | `projects/<slug>/architecture/` | — |
| `lean-canvas` | Document | `templates/lean-canvas.md` | `projects/<slug>/canvas/` | — |
| `bmc` | Document | `templates/bmc.md` | `projects/<slug>/canvas/` | — |

No `Payload` rows are defined today — Jira and Docmost were dropped
(see `_config/decisions.md`); a replacement destination adds a row here + a template + an
`outputs/<destination>/` folder, same as any other scaling.

Conventions:
- With no `project:` declared in the source, company-level documents go to `projects/keeis/`.
- Name: `YYYY-MM-DD-<type>-<topic>.md` (documents may version `-vN`).
- Every payload carries front-matter: `source:` (source path) and `project:` (if applicable).
- `derive` NEVER publishes. The external effect is exclusive to the `activate` skill.
