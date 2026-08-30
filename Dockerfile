# Generated production Dockerfile for SEOSiri VSCode MCP Manager
FROM node:20-slim AS builder

WORKDIR /app

# Copy package manifests and install dependencies
COPY package*.json tsconfig.json ./
RUN npm install

# Copy source code and compile TypeScript to dist/index.js
COPY src/ ./src/
RUN npm run build

# Production runtime container
FROM node:20-slim AS runner

WORKDIR /app

COPY package*.json ./
RUN npm install --omit=dev

# Copy compiled executable bundle from builder
COPY --from=builder /app/dist ./dist

# Run MCP server over stdio
ENTRYPOINT ["node", "dist/index.js"]
