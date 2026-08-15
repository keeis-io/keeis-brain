# ProDesk MCP hub (Docmost)

Exposes the Docmost MCP as an HTTP endpoint on the tailnet, so laptops only consume
one URL (the one already in `.mcp.json`) with no local processes or credentials.

Architecture: `Claude Code (laptop) → HTTP/Tailscale → supergateway (ProDesk) → docmost-mcp (stdio) → Docmost API (same host)`

## Deployment (one-time, on the ProDesk)

```bash
cd /srv/keeis-brain/server/mcp

# 1) MCP server code (stays out of Git; see .gitignore)
git clone https://github.com/MrMartiniMo/docmost-mcp.git docmost-mcp

# 2) Service user in Docmost (UI): claude@keeis, minimal permissions per space.

# 3) Credentials — ONE single place
cp .env.example .env && nano .env     # TAILSCALE_IP, DOCMOST_API_URL, EMAIL, PASSWORD

# 4) Bring it up
docker compose up -d --build

# 5) Test from a laptop (at the repo root)
claude mcp list          # docmost should show connected after editing the hostname in .mcp.json
```

## Notes

- Port 8808 is published ONLY on the tailnet IP (`${TAILSCALE_IP}` in the compose file), not on
  all interfaces. Also add a Tailscale ACL limiting the port to the two laptops:
  whoever reaches the endpoint acts as Docmost's service user.
- supergateway ≥ 3.3 handles concurrent clients over a single stdio process: both partners
  can be connected at the same time.
- If your supergateway version doesn't accept `--outputTransport streamableHttp`, remove those
  two flags from the Dockerfile: you'll be left with the SSE endpoint at `/sse`, and `.mcp.json`
  should use `{"type": "sse", "url": "http://<host>:8808/sse"}`. Verify with `supergateway --help`.
- If your `docmost-mcp` build differs (different scripts), send its README; adjust the Dockerfile.
- Updates: `git -C docmost-mcp pull && docker compose up -d --build`.
