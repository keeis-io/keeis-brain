# ProDesk — role in the orchestra

Five functions. None of them exposes anything to the internet: everything travels over Tailscale.

1. **Docmost host** (already deployed). Publishing destination.
2. **Publisher** (`server/publisher/`): transports to Docmost/Jira the artifacts a
   human approved by moving them to `outputs/<destination>/approved/` + push. Uses the
   bot's own connectors (MrMartiniMo stdio + Rovo with a scoped API token), never the humans'.
   Doesn't generate or decide content: only transports what's approved, with receipts and idempotency.
   (The central HTTP hub in `server/mcp/` remains a future option.)
3. **Brain's Git origin**: bare repo + `post-receive` hook that updates the working clone
   at `/srv/keeis-brain`, pushes a mirror to private GitHub, and triggers the publisher.
4. **Report cadence**: cron + non-interactive Claude Code. The digest is READ-ONLY on
   the repo and writes only to `_reports/` (commit `[bot]`). The only job with
   external writes is the publisher.
5. **Single network point**: Tailscale hostname registered in `connections.md`.

## Setup (one-time)

```bash
# 1) Bare repo + working clone
sudo mkdir -p /srv/git /srv/keeis-brain /srv/mcp
git init --bare /srv/git/keeis-brain.git
git clone /srv/git/keeis-brain.git /srv/keeis-brain

# 2) GitHub mirror (external backup)
cd /srv/git/keeis-brain.git
git remote add github git@github.com:[EDIT]/keeis-brain.git

# 3) Hook (updates the clone, the mirror, and triggers the publisher)
cp /srv/keeis-brain/server/hooks/post-receive hooks/post-receive
chmod +x hooks/post-receive

# 4) Bot's Docmost connector
git clone https://github.com/MrMartiniMo/docmost-mcp.git /srv/mcp/docmost-mcp
cd /srv/mcp/docmost-mcp && npm ci && npm run build
cd /srv/keeis-brain/server/publisher
cp mcp.headless.example.json mcp.headless.json && nano mcp.headless.json  # bot credentials

# 5) Test the publisher BY HAND twice (see server/publisher/README.md)
# 6) Cron: paste the lines from server/cron.example (digest + publisher backup)
```

## Security

- Two separate identities: humans (wisflux + Rovo OAuth, on laptops) and the bot (Docmost
  service user + scoped Jira API token, on the server). Revocable independently.
- Real `mcp.headless.json` stays out of Git (already in `.gitignore`); `600` permissions.
- The publisher only processes `approved/` and only writes receipts: any other write is a bug.
- Test every job by hand at least twice before scheduling it.
- Syntax for `claude -p`, `--mcp-config`, and `--allowedTools`: verify with `claude --help`
  (docs: https://docs.claude.com/en/docs/claude-code/overview) and adjust `run.sh` if it differs.
