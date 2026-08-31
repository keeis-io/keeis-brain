# Invariant rules

Restrictions that never break, for humans and agent alike. Business/compliance invariants —
distinct from `CLAUDE.md`'s agent-behavior rules, which govern how the agent operates inside a
session. Read this before proposing scope, publishing anything, or handling external material.

1. **No credentials, keys, or secrets in this repo — ever**, regardless of file or folder.
   Server-side secrets live in gitignored env files on the ProDesk only. See `connections.md`.
2. **No external effect without a human gate.** Nothing gets written to Jira, Docmost, or any
   third-party system except through the `activate` skill, on a payload a human approved (an
   in-session command, or a commit to `outputs/*/approved/`). The server publisher never
   generates or decides — it only transports what's already approved.
3. **No fabricated data.** Anything missing from a source gets flagged
   `[PENDING: what's missing]` — never invented numbers, dates, quotes, or claims.
4. **Calibrate every mention of a named external contact.** Erik Mekelburg (and anyone else who
   joins this list) gets described only with language matching what was actually said — no
   implied commitment beyond it, in any material, internal or external.
5. **EIF408 coursework stays fully separate.** Argana/UNA deliverables are individually graded;
   none of that material mixes with this repo.
6. **Product code never lives here.** This repo holds business context and decisions about the
   product, not its implementation. Code lives in its own repos; `projects/<slug>/` holds
   pointers, specs, and architecture docs only.
7. **No new technical scope until the open question is answered.** Per
   `_config/current-strategy.md`: no new features or expanded scope until there's evidence of
   who pays, for what pain, and how much.

New invariants get proposed here the same way decisions do: raise it in session, add it once a
human agrees.
