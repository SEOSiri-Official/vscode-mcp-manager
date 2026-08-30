FROM node:20-slim AS builder

WORKDIR /app

# Copy dependency manifests and install all modules
COPY package*.json tsconfig.json ./
RUN npm install

# Copy source code and compile TypeScript to ESM in dist/
COPY src/ ./src/
RUN npm run build

# Production runtime container
FROM node:20-slim AS runner

WORKDIR /app

COPY package*.json ./
RUN npm install --omit=dev

# Copy compiled ESM files from builder stage
COPY --from=builder /app/dist ./dist

# Run MCP server over stdio
ENTRYPOINT ["node", "dist/index.js"]
