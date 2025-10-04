# 🤖 Claude Code Agents Collection v1

A comprehensive collection of 26 specialized sub-agents for [Claude Code](https://docs.claude.com/claude-code) that dramatically enhance your AI-powered development workflow through intelligent orchestration and domain-specific expertise.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude-Code-7C3AED)](https://claude.com/code)
[![Agents](https://img.shields.io/badge/Agents-26-blue)](./agents/)

## 🚀 What's Included

### 🎯 7 Orchestrators (Team Managers)
- **master-orchestrator** - Top-level intelligent task router and coordinator
- **engineering-manager** - Software development task delegation
- **content-manager** - Copywriting and content creation coordination
- **design-manager** - UI/UX and mobile design management
- **seo-marketing-manager** - SEO and competitive analysis coordination
- **system-manager** - Agent ecosystem maintenance
- **copywriting-orchestrator** - Multi-agent copywriting workflows

### 💻 6 Engineering Agents
- **typescript-expert** - Advanced TypeScript and type systems
- **ai-engineer** - LLM apps, RAG systems, MCP tools
- **mcp-creator** - Custom Model Context Protocol servers
- **code-reviewer** - Code quality and security review
- **debugger** - Systematic debugging and root cause analysis
- **architect-review** - Architectural consistency and SOLID principles

### 🎨 2 Design Agents
- **ui-ux-designer** - UI/UX design, design systems, accessibility
- **mobile-ux-engineer** - Mobile interface design and UX

### 📝 5 Content & Marketing Agents
- **cialdini-copywriter** - High-converting copy with persuasion psychology
- **ad-copy-specialist** - Platform-specific ads (Facebook, Google, LinkedIn, TikTok)
- **landing-page-outline-researcher** - Data-driven landing page research
- **transcript-processor** - Audio/video transcript transformation
- **youtube-video-optimizer** - YouTube SEO and optimization

### 🔍 3 SEO Agents
- **seo-analyzer** - Technical SEO audits and analysis
- **seo-fixer** - Automated SEO error fixes
- **serp-competitor-analyzer** - Search result and competitor analysis

### 🛠️ 3 Agent Management Agents
- **agent-expert** - Agent design and architecture
- **agent-updater** - Agent ecosystem maintenance
- **meta-agent** - Generate new agents from descriptions

## ⚡ Quick Start

### Installation

**Option 1: Copy-Paste Installation (Easiest)**

1. Clone this repository:
```bash
git clone https://github.com/SteppieD/agents.v1.git
cd agents.v1
```

2. Copy agents to Claude Code:
```bash
cp agents/*.md ~/.claude/agents/
```

3. Restart Claude Code

**Option 2: Automated Installation**

Use the included installation script:
```bash
./install.sh
```

**Option 3: Use the Installation Prompt**

Copy the contents of `docs/agent-installation-prompt.md` and paste into Claude Code - it will guide you through installation.

### MCP Server Setup (Optional)

Install the recommended MCP servers for enhanced capabilities:

```bash
# Copy MCP configuration
cp mcp/mcp_settings.json ~/.claude/mcp_settings.json

# Replace YOUR_SUPABASE_ACCESS_TOKEN_HERE with your actual token
# Or remove the supabase section if not using it
```

See [MCP Setup Guide](./mcp/README.md) for detailed instructions.

## 📖 Usage

### Automatic Delegation

Claude automatically routes tasks to the right agent:

```
"Review this code for quality issues"
→ Invokes code-reviewer

"Create Facebook ads for my product"
→ Invokes ad-copy-specialist

"Build an AI chatbot"
→ Invokes ai-engineer
```

### Manual Invocation

Explicitly request an agent:

```
"Use the typescript-expert agent to refactor this code"
"Delegate to seo-analyzer to audit example.com"
```

### Orchestrator Pattern

For complex multi-step tasks:

```
"Use master-orchestrator to: Build a landing page with
SEO-optimized copy and conversion-focused design"

→ Routes to: landing-page-outline-researcher →
cialdini-copywriter → seo-fixer → ui-ux-designer
```

## 📚 Documentation

- **[Quick Start Guide](./docs/AGENTS-QUICK-START.md)** - Get up and running in 5 minutes
- **[Complete Setup Guide](./docs/agents-setup-guide.md)** - Comprehensive installation and usage
- **[Agent Reference](./docs/agents-list.md)** - Full catalog with descriptions and tools
- **[Installation Prompts](./docs/agent-installation-prompt.md)** - Copy-paste installation helpers

## 🎯 Common Use Cases

### For Developers
```bash
# Code review
"Review my TypeScript code for type safety"

# Debugging
"Debug this error: [paste error]"

# Architecture
"Check this PR for architectural consistency"

# AI Development
"Build a RAG system with Pinecone"
```

### For Marketers
```bash
# Ad Copy
"Create Google Ads for my SaaS product"

# Landing Pages
"Write conversion-focused copy for [product]"

# SEO
"Audit my website for technical SEO issues"

# Video
"Optimize my YouTube video title and description"
```

### For Designers
```bash
# Mobile Design
"Design an iOS onboarding flow"

# Design Systems
"Create a design system with tokens and components"

# UX Research
"Analyze user feedback and suggest UX improvements"
```

## 🏗️ Repository Structure

```
agents.v1/
├── agents/              # 26 agent markdown files
├── mcp/                 # MCP server configurations
│   ├── mcp_settings.json
│   └── README.md
├── docs/                # Documentation
│   ├── AGENTS-QUICK-START.md
│   ├── agents-setup-guide.md
│   ├── agents-list.md
│   └── agent-installation-prompt.md
├── install.sh          # Installation script
└── README.md           # This file
```

## 🔧 Customization

### Modify Agent Behavior

Edit any agent's `.md` file:

```yaml
---
name: agent-name
description: What it does
tools: Read, Write, Bash
color: Purple
---
```

### Create New Agents

Use the meta-agent:
```
"Use meta-agent to create a new agent for [purpose]
with tools: Read, Write, Bash"
```

### Update Agents

Use agent-updater:
```
"Use agent-updater to enhance all agents with [capability]"
```

## 🤝 Contributing

Contributions welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test with Claude Code
5. Submit a pull request

See [CONTRIBUTING.md](./CONTRIBUTING.md) for detailed guidelines.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## 🙏 Acknowledgments

- Built for [Claude Code](https://claude.com/code) by Anthropic
- Inspired by the [Model Context Protocol](https://modelcontextprotocol.io/)
- Community contributions and feedback

## 🆘 Support

- **Issues**: [GitHub Issues](https://github.com/SteppieD/agents.v1/issues)
- **Discussions**: [GitHub Discussions](https://github.com/SteppieD/agents.v1/discussions)
- **Claude Code Docs**: https://docs.claude.com/claude-code

## 🔄 Updates

Check [CHANGELOG.md](./CHANGELOG.md) for version history and updates.

**Current Version**: 1.0.0

---

**Built with ❤️ for the Claude Code community**

⭐ Star this repo if you find it useful!
