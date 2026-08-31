---
name: derive
description: Generates a derivative artifact (spec, architecture, canvas, Jira task draft, Docmost page, etc.) from a source artifact, and mounts it in the correct folder per _config/output-catalog.md. Use on "derive", "mount me", "pull the specs/tasks/canvas from X".
---

# Derive

## Steps

1. Identify the **source** (Layer 4): the file the human points to, or the most recent one that
   fits (confirm if ambiguous). Read its front-matter: `project:` decides the owner.
2. Look up the requested **type** in `_config/output-catalog.md`. If the row doesn't exist, say
   so and offer to create it (row + template) instead of improvising a destination.
3. Load ONLY: the type's template, the source, and the owning project's `CONTEXT.md` if applicable.
4. Mount the result in the folder the catalog dictates, with the agreed-upon name.
   - Documents → the project's folder (`projects/<slug>/…`; company-level → `projects/keeis/`).
   - Payloads → `outputs/<destination>/`, with front-matter `source:` and `project:`.
5. `derive` **never publishes or calls write MCPs**. Close by stating the next step:
   review the file; if it's a payload, approve it and use the `activate` skill.
6. Any data missing from the source gets flagged `[PENDING: what's missing]` — never filled in with imagination.
7. Chaining is fine if the human asks for it ("from the plan: architecture, then tasks"), mounting
   each derivative in its sector and stopping between steps for review.
