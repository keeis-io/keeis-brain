# ProDesk — role in the orchestra

Three functions. None of them exposes anything to the internet: everything travels over Tailscale.

1. **Brain's Git origin**: bare repo + `post-receive` hook that updates the working clone
   at `/srv/keeis-brain` and pushes a mirror to private GitHub.
2. **Report cadence**: cron + non-interactive Claude Code. The digest is READ-ONLY on
   the repo and writes only to `_reports/` (commit `[bot]`).
3. **Single network point**: Tailscale hostname registered in `connections.md`.

No publishing destination is configured today — Jira and Docmost were dropped (see
`_config/decisions.md`). When a replacement is chosen, its transport mechanics (headless
connector, approval gate, receipts) get documented here and in `connections.md`.

## Setup (one-time)

```bash
# 1) Bare repo + working clone
sudo mkdir -p /srv/git /srv/keeis-brain
git init --bare /srv/git/keeis-brain.git
git clone /srv/git/keeis-brain.git /srv/keeis-brain

# 2) GitHub mirror (external backup)
cd /srv/git/keeis-brain.git
git remote add github git@github.com:[EDIT]/keeis-brain.git

# 3) Hook (updates the clone and the mirror)
cp /srv/keeis-brain/server/hooks/post-receive hooks/post-receive
chmod +x hooks/post-receive

# 4) Test the digest job BY HAND twice (see server/jobs/weekly-digest.md)
# 5) Cron: paste the digest line from server/cron.example
```

## Security

- Real credentials for any future headless connector stay out of Git (gitignored), `600` permissions.
- Test every job by hand at least twice before scheduling it.
- Syntax for `claude -p` and `--allowedTools`: verify with `claude --help`
  (docs: https://docs.claude.com/en/docs/claude-code/overview) and adjust jobs if it differs.
