FROM node:20-alpine
WORKDIR /app
# The code is cloned into server/mcp/docmost-mcp (see this folder's README)
COPY docmost-mcp/ ./
RUN npm ci && npm run build
RUN npm install -g supergateway@3.4.3
EXPOSE 8808
CMD ["supergateway", "--stdio", "node /app/build/index.js", "--port", "8808", "--outputTransport", "streamableHttp", "--httpPath", "/mcp"]
