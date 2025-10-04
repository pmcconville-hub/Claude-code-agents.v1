#!/bin/bash

# Claude Code Agents v1 Installation Script

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}🤖 Claude Code Agents v1 Installer${NC}"
echo ""

# Determine agents directory
CLAUDE_DIR="$HOME/.claude"
AGENTS_DIR="$CLAUDE_DIR/agents"

# Create directory if it doesn't exist
if [ ! -d "$AGENTS_DIR" ]; then
    echo -e "${YELLOW}Creating agents directory: $AGENTS_DIR${NC}"
    mkdir -p "$AGENTS_DIR"
fi

# Get the script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Count agents to install
AGENT_COUNT=$(ls -1 "$SCRIPT_DIR/agents"/*.md 2>/dev/null | wc -l | tr -d ' ')

if [ "$AGENT_COUNT" -eq 0 ]; then
    echo -e "${RED}❌ No agent files found in $SCRIPT_DIR/agents/${NC}"
    exit 1
fi

echo -e "${BLUE}Found $AGENT_COUNT agents to install${NC}"
echo ""

# Backup existing agents
if [ "$(ls -A $AGENTS_DIR/*.md 2>/dev/null)" ]; then
    BACKUP_DIR="$AGENTS_DIR/backups/pre-install-$(date +%Y%m%d_%H%M%S)"
    echo -e "${YELLOW}Backing up existing agents to: $BACKUP_DIR${NC}"
    mkdir -p "$BACKUP_DIR"
    cp "$AGENTS_DIR"/*.md "$BACKUP_DIR/" 2>/dev/null || true
    echo -e "${GREEN}✓ Backup complete${NC}"
    echo ""
fi

# Copy agents
echo -e "${BLUE}Installing agents...${NC}"
cp "$SCRIPT_DIR/agents"/*.md "$AGENTS_DIR/"

echo -e "${GREEN}✓ Successfully installed $AGENT_COUNT agents${NC}"
echo ""

# List installed agents
echo -e "${BLUE}Installed agents:${NC}"
ls -1 "$AGENTS_DIR"/*.md | xargs -n 1 basename | sed 's/.md$//' | sed 's/^/  - /'

echo ""
echo -e "${GREEN}✓ Installation complete!${NC}"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo "1. Restart Claude Code"
echo "2. Try: 'Use the master-orchestrator to help me with a task'"
echo "3. See docs/ folder for complete documentation"
echo ""
echo -e "${BLUE}Optional: Install MCP servers${NC}"
echo "See mcp/README.md for MCP server installation instructions"
echo ""
