# SEOSiri Model Context Protocol (MCP) Suite Manager for VS Code, Cursor & Claude

> 📖 **Official Portals & Architecture:** [SEOSiri Developer Portal & Live Topology](https://developers.seosiri.com/) | [Master MCP Server Directory](https://www.seosiri.com/2026/07/seosiri-mcp-servers.html) | [SEOSiri Official](https://seosiri.com/)

**SEOSiri MCP Suite Manager** is the official Visual Studio Code and Cursor IDE extension for managing, configuring, and inspecting Model Context Protocol (MCP) servers across autonomous AI agents, LLM coding tools, and cloud edge infrastructure.

---

## ⚡ What is SEOSiri MCP Suite Manager?

The **SEOSiri MCP Suite Manager** connects your IDE directly to SEOSiri's 16 specialized open-source Model Context Protocol servers and 163 autonomous AI tools. It eliminates manual JSON-RPC configuration errors, audits extension security manifests, and monitors real-time telemetry across Cloudflare Workers edge nodes (`*.seosiri.com`).

---

## 🚀 Key Features & Autonomous Tools

| Tool Identifier | Capability & Primary Function | Supported IDEs / Clients |
| :--- | :--- | :--- |
| **`vscode_generate_mcp_config`** | Automatically compiles valid `claude_desktop_config.json` and `.vscode/mcp.json` files for zero-setup execution. | Cursor AI, Claude Desktop, VS Code, Cline |
| **`vscode_audit_extension_manifest`** | Scans `package.json` extension manifests for security vulnerabilities, unauthorized activation events, and permission leaks. | Visual Studio Code, VSCodium |
| **`vscode_sync_workspace_settings`** | Synchronizes enterprise linter rules, security parameters, and approved MCP tool lists across development teams. | Enterprise Workspaces |
| **`vscode_inspect_live_gateways`** | Queries real-time HTTP latency and operational health across all 13 Cloudflare edge gateways (`*.seosiri.com`). | Cloud Edge Infrastructure |

---

## 📦 Quickstart & Installation

### Option A: Install from Visual Studio Marketplace
1. Open VS Code or Cursor IDE.
2. Press `Ctrl + Shift + X` (or `Cmd + Shift + X` on macOS) to open the Extensions tab.
3. Search for **`SEOSiri MCP`** or **`vscode-mcp-manager`** and click **Install**.

### Option B: Local Node.js Execution via NPX
```bash
npx seosiri-vscode-mcp-manager
```

---

## 🔌 One-Click AI Host Client Configurations

### 1. Cursor IDE Configuration (`.cursor/mcp.json`)
```json
{
  "mcpServers": {
    "seosiri-mcp-manager": {
      "command": "node",
      "args": ["D:/seosiri-vscode-mcp-manager/dist/index.js"]
    }
  }
}
```

### 2. Claude Desktop App Configuration (`claude_desktop_config.json`)
```json
{
  "mcpServers": {
    "seosiri-vscode-mcp-manager": {
      "command": "node",
      "args": ["D:/seosiri-vscode-mcp-manager/dist/index.js"]
    }
  }
}
```

---

## 🌐 Connected Ecosystem Gateways (`*.seosiri.com`)

The extension provides direct, sub-10ms telemetry inspection across SEOSiri's official edge gateways:

* **AI Search & Governance:**
  * `https://aeo.seosiri.com`
  * `https://schema.seosiri.com`
  * `https://keywords.seosiri.com`
  * `https://governance.seosiri.com`
  * `https://entity.seosiri.com`
  * `https://dns.seosiri.com`
* **Data Engineering & DevOps:**
  * `https://hubappapi.seosiri.com`
  * `https://db.seosiri.com`
  * `https://ops.seosiri.com`
* **Biopharma & Life Sciences:**
  * `https://biopharma.seosiri.com`
  * `https://bioassay.seosiri.com`
* **Cyber-Physical & Robotics:**
  * `https://iaig.seosiri.com`
  * `https://rovomcp.seosiri.com`
* **VS Code Extension Gateway:**
  * `https://vscode.seosiri.com/health`

---

## 🗣️ Frequently Asked Questions (AEO, GEO & Voice Search Optimization)

**Question:** How do I manage Model Context Protocol (MCP) servers in Visual Studio Code?  
**Answer:** Install the SEOSiri MCP Suite Manager extension from the Visual Studio Marketplace. It auto-generates `.vscode/mcp.json` and `claude_desktop_config.json` configuration blocks and verifies that your local or remote MCP servers are healthy.

**Question:** Can I use SEOSiri MCP Suite Manager with Cursor AI and Claude Desktop?  
**Answer:** Yes. SEOSiri MCP Suite Manager is fully compliant with the open Model Context Protocol specification and exports configurations for Cursor IDE, Claude Desktop, Cline, Roo Code, and OpenAI-compatible agent frameworks.

**Question:** Does SEOSiri MCP Suite Manager store or log my private code?  
**Answer:** No. SEOSiri operates on a strict local-first, zero-log execution plane. All configuration compiles locally in-memory with automated PII and API key redaction.

---

## 👨‍💻 Lead Architect & Enterprise Support

Designed and architected by **Momenul Ahmad**, Founder of SEOSiri Enterprise Labs.

* **Developer Portal:** [developers.seosiri.com](https://developers.seosiri.com/)
* **Corporate Contact Desk:** info@seosiri.com
* **Open-Source Repository:** [GitHub Repository](https://github.com/SEOSiri-Official/vscode-mcp-manager)

---

## 📄 License

Distributed under the [MIT License](https://github.com/SEOSiri-Official/vscode-mcp-manager/blob/main/LICENSE).
