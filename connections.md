# Connections — registry of reachable systems

## Placement principle

Laptops only load the **core** (repo + Claude Code) and each person's interactive connections.
Any service **Keeis operates** lives on the **ProDesk**, tailnet-only. The server's **bot** has
its own connectors, separate from the humans', when a headless one is needed.

## Publishing destination — none configured

Jira and Docmost were dropped (see `_config/decisions.md`); no external publishing destination
is wired up today. The `activate` skill has nothing to activate against until a replacement is
chosen and a row lands in `_config/output-catalog.md`.

## Git (the brain)
- Origin: bare repo on the ProDesk — `ssh://[EDIT user]@[EDIT hostname]/srv/git/keeis-brain.git`
- Backup mirror: private GitHub — `git@github.com:[EDIT]/keeis-brain.git` (pushed by the hook).

## ProDesk (server)
- Network: Tailscale, hostname `[EDIT]`. Nothing exposed to the internet.
- Services: bare Git repo + hook · cadence cron.

General rule: credentials NEVER in the repo; every actor (human or bot) with minimal permission.
