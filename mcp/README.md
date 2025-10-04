# MCP Server Configuration

This directory contains configuration for Model Context Protocol (MCP) servers that enhance Claude Code agents with additional capabilities.

## Quick Setup

1. Copy the MCP configuration:
```bash
cp mcp_settings.json ~/.claude/mcp_settings.json
```

2. Configure your API tokens (see below)

3. Restart Claude Code

## Included MCP Servers

### 1. Supabase (`@supabase/mcp-server-supabase`)
**Purpose**: Interact with Supabase databases and backend services

**Setup**:
1. Get your access token from [Supabase Dashboard](https://supabase.com/dashboard)
2. Replace `YOUR_SUPABASE_ACCESS_TOKEN_HERE` in `mcp_settings.json`

**Usage**: "Query my Supabase database" or "Create a new table"

**Docs**: https://github.com/supabase/mcp-server-supabase

---

### 2. Serena (IDE Assistant)
**Purpose**: Advanced IDE assistance and code analysis

**Setup**:
```bash
# Install uvx if needed
pip install uvx
# or
pipx install uvx
```

**Usage**: "Analyze this codebase structure" or "Help me refactor this code"

**Docs**: https://github.com/oraios/serena

---

### 3. Playwright (Browser Automation)
**Purpose**: Automate browsers, take screenshots, scrape web content

**Setup**: No additional configuration needed (runs headless)

Optional - install browsers:
```bash
npx playwright install
```

**Usage**: "Take a screenshot of example.com" or "Click the login button"

**Docs**: https://github.com/playwright/mcp

---

### 4. Jina MCP Server (AI Search & Content)
**Purpose**: AI-powered web search and content processing

**Setup**: No additional configuration needed

**Usage**: "Search the web for latest AI news" or "Extract content from this URL"

**Docs**: https://github.com/jina-ai/mcp

## Configuration Format

```json
{
  "mcpServers": {
    "server-name": {
      "command": "npx|uvx|node",
      "args": ["package-name", ...],
      "env": {
        "ENV_VAR": "value"
      }
    }
  }
}
```

## Adding Custom MCP Servers

1. Edit `~/.claude/mcp_settings.json`
2. Add your server configuration
3. Restart Claude Code

Example:
```json
{
  "mcpServers": {
    "my-custom-server": {
      "command": "npx",
      "args": ["-y", "@myorg/mcp-server@latest"]
    }
  }
}
```

## Troubleshooting

### Server not appearing
1. Check the configuration syntax (valid JSON)
2. Ensure the command is available (`which npx`, `which uvx`)
3. Restart Claude Code completely
4. Check logs: `~/.claude/logs/`

### Authentication errors
1. Verify API tokens are correct
2. Check token permissions in service dashboards
3. Ensure environment variables are set correctly

### Command not found
```bash
# Install npx (comes with Node.js)
brew install node  # macOS
# or download from nodejs.org

# Install uvx
pip install uvx
# or
pipx install uvx
```

## Removing MCP Servers

1. Edit `~/.claude/mcp_settings.json`
2. Remove the server entry
3. Restart Claude Code

## Advanced Configuration

### Custom PATH
Some servers (like Playwright) may need custom PATH settings:

```json
"playwright": {
  "command": "npx",
  "args": ["-y", "@playwright/mcp@latest"],
  "env": {
    "PATH": "/usr/local/bin:/usr/bin:/bin"
  }
}
```

### Multiple Environments
For different projects, you can maintain separate MCP configs:

```bash
# Development
cp mcp_settings.dev.json ~/.claude/mcp_settings.json

# Production
cp mcp_settings.prod.json ~/.claude/mcp_settings.json
```

## Security Notes

⚠️ **Never commit API keys or tokens to version control**

- Use environment variables when possible
- Store sensitive tokens in secure password managers
- Rotate tokens regularly
- Use read-only tokens when full access isn't needed

## Learn More

- [Model Context Protocol Docs](https://modelcontextprotocol.io/)
- [Claude Code MCP Guide](https://docs.claude.com/claude-code/mcp)
- [MCP Server Directory](https://github.com/modelcontextprotocol/servers)

## Creating Custom MCP Servers

Use the **mcp-creator** agent to build custom MCP servers:

```
"Use mcp-creator to build an MCP server for [your use case]"
```

See the [MCP Creator Agent](../agents/mcp-creator.md) for more details.
