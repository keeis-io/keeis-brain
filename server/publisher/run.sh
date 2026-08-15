#!/bin/sh
# Activator backup: detects payloads in outputs/*/approved/ with no receipt and launches the
# publisher job (headless). Deterministic detection; hard-rule execution.
set -e
LOCK=/tmp/keeis-publisher.lock
exec 9>"$LOCK"
flock -n 9 || exit 0

cd /srv/keeis-brain
unset GIT_DIR
git pull --ff-only >/dev/null 2>&1 || true

PENDING=0
for f in outputs/*/approved/*.md; do
  [ -e "$f" ] || continue
  dest=$(dirname "$(dirname "$f")")
  base=$(basename "$f")
  [ -f "$dest/receipts/receipt-$base" ] || PENDING=$((PENDING+1))
done
[ "$PENDING" -gt 0 ] || exit 0

claude -p "$(cat server/jobs/publisher.md)" \
  --mcp-config server/publisher/mcp.headless.json \
  --allowedTools "Read,Glob,Grep,Write,Bash(git *),mcp__docmost__*,mcp__atlassian__*" \
  >> /var/log/keeis-publisher.log 2>&1
