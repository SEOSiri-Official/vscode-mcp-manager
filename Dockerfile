FROM node:20-slim

WORKDIR /app

# Copy dependency definitions and typescript config
COPY package*.json tsconfig.json ./

# Install all dependencies (including typescript)
RUN npm install

# Copy source code
COPY src ./src

# Build native ESM dist/index.js
RUN npm run build

# Start MCP stdio server
ENTRYPOINT ["node", "dist/index.js"]
