# MCP Suite Manager (Model Context Protocol) - SEOSiri

> 📖 **Official Architecture & Usability Guide:** [SEOSiri Technical Guide](https://www.seosiri.com/2026/08/vscode-mcp-manager.html) | [Developer Portal & Live Topology](https://developers.seosiri.com/) | [Central Master Directory](https://www.seosiri.com/2026/07/seosiri-mcp-servers.html) | [Marketplace Listing](https://marketplace.visualstudio.com/items?itemName=SEOSiri.seosiri-vscode-mcp-manager)

**SEOSiri MCP Suite Manager** is an enterprise Model Context Protocol (MCP) orchestrator for **Visual Studio Code, Cursor IDE, Claude Desktop, and Cline**. It eliminates manual JSON-RPC syntax errors, auto-generates client configuration files, audits extension security manifests, and monitors live Cloudflare Edge Gateways (`*.seosiri.com`) directly from your editor.

---

## 🛠️ In-Editor Usability & Operational Manual

### Step 1: Install the Extension
* **From VS Code / Cursor Marketplace:**
  1. Open your editor and press `Ctrl + Shift + X` (or `Cmd + Shift + X` on macOS).
  2. Search for **`SEOSiri MCP`** or **`seosiri-vscode-mcp-manager`**.
  3. Click **Install**.
* **Via Command Line (VSIX Install):**
  ```bash
  code --install-extension seosiri-vscode-mcp-manager-1.0.1.vsix
  ```

---

### Step 2: Open the Command Palette
Press `Ctrl + Shift + P` (or `Cmd + Shift + P` on macOS) to access all SEOSiri MCP operations:

```text
> SEOSiri: Generate MCP Client Configuration (Cursor / Claude / VS Code)
> SEOSiri: Audit Extension Manifest (Security & Permissions Scan)
> SEOSiri: Inspect Live Gateways (Telemetry & Latency Traces)
> SEOSiri: Sync Workspace Settings & Linters
```

---

### Step 3: Auto-Generate MCP Client Configurations

Select **`SEOSiri: Generate MCP Client Configuration`** and choose your target AI environment:

#### 1. For Cursor IDE (`.cursor/mcp.json`):
The extension automatically writes the verified JSON-RPC tool configuration to your project:
```json
{
  "mcpServers": {
    "seosiri-biopharma": {
      "command": "npx",
      "args": ["-y", "@seosiri/biopharma-mcp"]
    },
    "seosiri-aeo-geo": {
      "command": "uvx",
      "args": ["seosiri-aeo-geo-mcp"]
    },
    "seosiri-industrial-ai": {
      "command": "npx",
      "args": ["-y", "@seosiri/industrial-ai-gateway"]
    }
  }
}
```

#### 2. For Claude Desktop (`claude_desktop_config.json`):
```json
{
  "mcpServers": {
    "vscode-mcp-manager": {
      "command": "node",
      "args": ["D:/seosiri-vscode-mcp-manager/dist/index.js"]
    }
  }
}
```

---

### Step 4: Audit Extension Manifest Security (`package.json`)

Run **`SEOSiri: Audit Extension Manifest`** against any extension in your workspace:
* Validates `activationEvents` and `engines.vscode` compatibility.
* Scans for un-sandboxed command execution risks.
* Redacts hardcoded API tokens, private keys, and internal network endpoints.

---

### Step 5: Live Cloudflare Edge Telemetry Inspection

Run **`SEOSiri: Inspect Live Gateways`** to query live sub-10ms response latencies and server health across all 13 Cloudflare edge gateways:
- `biopharma.seosiri.com` (4PL Curves & FDA 21 CFR Part 11)
- `iaig.seosiri.com` (Industrial AI & ROS 2 Robotics)
- `rovomcp.seosiri.com` (Atlassian Rovo & PII Shield)
- `aeo.seosiri.com` (AEO/GEO Intelligence & /llm.txt)
- `schema.seosiri.com` (Schema.org JSON-LD & GA4)
- `keywords.seosiri.com` (384-D Vector RAG & Intent)
- `vscode.seosiri.com` (VS Code Suite Gateway)

---

## 🚀 4 Autonomous MCP Tools Exposed to AI Agents

| Tool Identifier | Capability & Primary Function | Target Protocol |
| :--- | :--- | :---: |
| **`vscode_generate_mcp_config`** | Compiles verified JSON-RPC client configurations for zero-setup execution. | Stdio / JSON-RPC 2.0 |
| **`vscode_audit_extension_manifest`** | Scans `package.json` for security vulnerabilities, activation triggers, and leaks. | Static AST Analysis |
| **`vscode_sync_workspace_settings`** | Synchronizes team linter rules, TypeScript settings, and MCP permissions. | Workspace Sync |
| **`vscode_inspect_live_gateways`** | Queries real-time HTTP latency and active tool capacity across all 13 gateways. | Edge Telemetry |

---

## 🔒 Zero-Trust Privacy & Security Guarantee
SEOSiri operates on a strict local-first, zero-log execution plane. All configuration generation, manifest audits, and workspace synchronizations run in-memory within your local workstation without third-party tracking.

---

## 👨‍💻 Lead Architect & Support
Designed and engineered by [Momenul Ahmad](https://www.seosiri.com/2026/08/vscode-mcp-manager.html), Founder of [SEOSiri Enterprise Labs](https://www.seosiri.com/).
* **Developer Portal:** [developers.seosiri.com](https://developers.seosiri.com/)
* **Corporate Support Desk:** info@seosiri.com
* **GitHub Repository:** [SEOSiri-Official/vscode-mcp-manager](https://github.com/SEOSiri-Official/vscode-mcp-manager/)

---

## 📄 License
Distributed under the [MIT License](https://github.com/SEOSiri-Official/vscode-mcp-manager/blob/main/LICENSE).
