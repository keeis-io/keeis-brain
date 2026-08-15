# Publisher — automatic transport of approved artifacts

Principle: **the human approves; the machine publishes.** The server never generates and
publishes content without review — but once a human has approved an artifact, pushing it to
Docmost/Jira is mechanical work that doesn't need a chat session.

## The review gate is now a filesystem act

1. Stage 03 produces its output; the human reviews and edits it as always.
2. Approving = **moving the file to `outputs/<destination>/approved/` and committing + pushing.**
   That commit is the gate: who approved and when stays in the Git history.
3. The ProDesk's `post-receive` hook invokes `run.sh`, which detects artifacts in `approved/`
   with no receipt and runs the `server/jobs/publisher.md` job in headless mode.
4. The job publishes (dated page in Docmost, issues in Jira), writes
   `output/receipt-<artifact>.md`, and commits `[bot]`. The receipt's existence IS the
   idempotency check: with a receipt, it never publishes again.
5. If something fails: a report in `_reports/`, no blind retries.

The interactive route still exists (asking "publish this" in a session); the automatic one is
the same mechanics with no human at the keyboard during transport.

## Identities (different from the laptops')

The server bot can't use wisflux (its auth is desktop-based). It uses its own connectors,
defined in `mcp.headless.json` (copy from `mcp.headless.example.json`; the real one stays out
of Git):
- **Docmost**: `MrMartiniMo/docmost-mcp` over local stdio (auth via environment variables) with
  the service user `claude@keeis` — clone into `/srv/mcp/docmost-mcp` and build (`npm ci && npm run build`).
- **Jira**: the Atlassian remote endpoint with a scoped **headless auth API token**: only
  create/edit issues for Keeis's project. Exact header format: see the Rovo MCP's API token
  auth guide (https://github.com/atlassian/atlassian-mcp-server).

## Rollout (in order, don't skip step 1)

```bash
# 1) Test it BY HAND twice before wiring anything up:
cd /srv/keeis-brain && server/publisher/run.sh
# check the receipts, the Docmost page, and the Jira issues

# 2) Only then, enable the automatic trigger:
#    - the post-receive hook already calls run.sh (line included)
#    - add the backup cron from server/cron.example (every 10 min)
```

Note: verify the current syntax of `--mcp-config` and `--allowedTools` with `claude --help`
before the first run; adjust `run.sh` if your version differs.
