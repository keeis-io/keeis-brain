# Confidentiality classification

Four tiers. Default assumption for anything in this repo, unless marked otherwise: **internal**.

| Tier | Meaning | Examples in this repo today |
|---|---|---|
| Public | Safe for anyone, published on purpose | Nothing yet — pre-launch. A published artifact only becomes public once it's actually shared outside Keeis. |
| Internal | Default. Safe for Kendall + Isaac, not meant to leave the two-person context without thought | Most of this repo: strategy, meeting notes, decisions, pipeline runs. |
| Confidential | Real damage if it leaks to a competitor, a candidate client, or a casual contact | Financials/runway once tracked, cap table or equity terms, the plate-recognition model's technical internals, unreleased specs, raw interview notes with real names before anonymization, specifics of live negotiations (e.g. Erik/VC conversations). |
| Restricted | Never stored in this repo at all, any tier | Credentials, API tokens, private keys — see `invariant-rules.md` #1. If ever unavoidable: server-only, gitignored, `600` permissions. |

## Marking a document

Optional front-matter field on a document that isn't plain internal:
`confidentiality: public | internal | confidential | restricted`. Absent = internal.

Confidential documents still live in the repo (that's the point of a private SSOT) — the tier is
a handling instruction for humans (who you share it with, whether it goes in an external payload)
not a storage rule. Restricted material never gets a tier tag because it never gets stored here
in the first place.
