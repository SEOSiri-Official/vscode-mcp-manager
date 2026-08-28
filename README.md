# seosiri-vscode-mcp-manager


> 🛡️ **Verified Glama MCP Server:** [SEOSiri VSCode MCP on Glama](https://glama.ai/mcp/servers/SEOSiri-Official/vscode-mcp-manager)
> 📖 **Official Architecture & Documentation:** [SEOSiri Developer Portal](https://developers.seosiri.com/) | [Central Master Directory](https://www.seosiri.com/2026/07/seosiri-mcp-servers.html) | [Corporate Gateway](https://seosiri.com/)

An enterprise Model Context Protocol (MCP) server and VS Code Suite Manager orchestrating IDE configuration generation, extension manifest security audits, and live edge gateway inspection across Cursor, Claude Desktop, and VS Code.

---

## 🚀 Key Features & Tools

* **`vscode_generate_mcp_config`**
  * Auto-compiles verified `.vscode/mcp.json` and `claude_desktop_config.json` files for zero-setup execution.
* **`vscode_audit_extension_manifest`**
  * Audits extension manifests for security vulnerabilities, activation triggers, and tool bindings.
* **`vscode_sync_workspace_settings`**
  * Synchronizes team settings, linters, and MCP permissions.
* **`vscode_inspect_live_gateways`**
  * Inspects real-time connection status across all 13 Cloudflare edge gateways directly from the IDE.

---

## 📦 Quickstart

```bash
npm install seosiri-vscode-mcp-manager
npm run build
npm start
```

---

## 🔌 Claude Desktop Configuration

```json
{
  "mcpServers": {
    "vscode-mcp-manager": {
      "command": "node",
      "args": [
        "D:/seosiri-vscode-mcp-manager/dist/index.js"
      ]
    }
  }
}
```

---

## 🌐 Live Edge Gateway

* **Edge Route:** https://vscode.seosiri.com/health

---

## 📄 License

Distributed under the MIT License. See the official [GitHub License File](https://github.com/SEOSiri-Official/vscode-mcp-manager/blob/main/LICENSE) for explicit authorizations.
