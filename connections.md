# Connections — registry of reachable systems

## Placement principle

Laptops only load the **core** (repo + Claude Code) and each person's interactive connections.
Any service **Keeis operates** lives on the **ProDesk**, tailnet-only. **Provider-remote**
MCPs (Jira/Rovo) are consumed directly with per-user OAuth. The server's **bot** has its own
connectors, separate from the humans'.

## Docmost — two identities, one destination
- Service: `http://[EDIT: tailscale-hostname]:3000` (tailnet-only).
- **Laptops (interactive)**: `wisflux/docmost-local-mcp` — ✓ already installed and configured.
  Desktop auth (webview + keychain): each person with their own session.
- **Server (headless publisher)**: `MrMartiniMo/docmost-mcp` over stdio, service user
  `claude@keeis` with minimal permissions, auth via environment variables — see `server/publisher/`.
  wisflux doesn't apply on the server: its auth requires a desktop.
- Future option (documented in `server/mcp/`): a central HTTP hub on the ProDesk. Makes sense
  if a third person joins or you want a single identity; not needed today.
- CE limitation that `publish` already handles: "update" recreates the page → always new
  dated pages; indexes curated by humans.

## Jira — provider-remote MCP
- Site: `https://[EDIT].atlassian.net` · Project: `[EDIT: key, e.g. KEEIS]`.
- **Laptops**: official Rovo MCP (in `.mcp.json`): `https://mcp.atlassian.com/v1/mcp/authv2`,
  per-user OAuth 2.1 — each person acts with their own permissions and issues stay attributed.
- **Server (publisher)**: same endpoint with a scoped **headless API token** (create/edit
  issues only in Keeis's project) — configured in `server/publisher/mcp.headless.json`.
- One-time requirements (site admin): Cloud plan, Rovo enabled, Remote MCP server activated.

## Git (the brain)
- Origin: bare repo on the ProDesk — `ssh://[EDIT user]@[EDIT hostname]/srv/git/keeis-brain.git`
- Backup mirror: private GitHub — `git@github.com:[EDIT]/keeis-brain.git` (pushed by the hook).

## ProDesk (server)
- Network: Tailscale, hostname `[EDIT]`. Nothing exposed to the internet.
- Services: Docmost (+ Postgres, Redis) · bare Git repo + hook · publisher · cadence cron.

General rule: credentials NEVER in the repo; every actor (human or bot) with minimal permission.
