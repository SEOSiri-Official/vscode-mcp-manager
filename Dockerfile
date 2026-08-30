FROM node:20-slim

WORKDIR /app

# Copy all source files
COPY . .

# Install dependencies and build self-contained dist/index.js
RUN npm install
RUN npm run build

# Start MCP stdio server
ENTRYPOINT ["node", "dist/index.js"]
