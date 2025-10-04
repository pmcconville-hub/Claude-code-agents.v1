# Claude Code Agents Setup Guide

This package contains 26 specialized sub-agents for Claude Code that dramatically enhance your development workflow through intelligent orchestration and specialized expertise.

## 🤖 What Are Claude Code Agents?

Agents are specialized AI assistants that Claude Code can automatically delegate tasks to. They have:
- **Focused expertise** in specific domains (coding, design, marketing, SEO, etc.)
- **Custom tools** tailored to their responsibilities
- **Automated delegation** - Claude intelligently routes tasks to the right agent
- **Orchestration capabilities** - Manager agents coordinate teams of specialized agents

## 📦 Included Agents (26 Total)

### 🎯 Orchestrators (Managers)
- **master-orchestrator** - Top-level intelligent task router and delegation coordinator
- **engineering-manager** - Delegates software development tasks to engineering specialists
- **content-manager** - Coordinates copywriting, ads, and content creation specialists
- **design-manager** - Manages UI/UX and mobile design tasks
- **seo-marketing-manager** - Coordinates SEO and competitive analysis specialists
- **system-manager** - Manages agent creation, updates, and ecosystem maintenance
- **copywriting-orchestrator** - Manages comprehensive copywriting projects with multi-agent workflow

### 💻 Engineering & Development
- **typescript-expert** - Advanced TypeScript with type system expertise
- **ai-engineer** - LLM applications, RAG systems, MCP tools
- **mcp-creator** - Creates custom Model Context Protocol servers
- **code-reviewer** - Expert code review for quality and security
- **debugger** - Systematic debugging and root cause analysis
- **architect-review** - Architectural consistency and SOLID principles

### 🎨 Design & UX
- **ui-ux-designer** - UI/UX design, design systems, accessibility
- **mobile-ux-engineer** - Mobile UI/UX with modern design principles

### 📝 Content & Copywriting
- **cialdini-copywriter** - High-converting copy using persuasion principles
- **ad-copy-specialist** - Platform-specific ad copy (Facebook, Google, LinkedIn, TikTok)
- **landing-page-outline-researcher** - Data-driven landing page research and outlines
- **transcript-processor** - Transforms transcribed audio/video to structured content
- **youtube-video-optimizer** - YouTube SEO and video optimization

### 🔍 SEO & Marketing
- **seo-analyzer** - Technical SEO audits and Google indexing analysis
- **seo-fixer** - Fixes SEO structural errors automatically
- **serp-competitor-analyzer** - Analyzes search results and competitor strategies

### 🛠️ Agent Management
- **agent-expert** - Designs and creates new agents with best practices
- **agent-updater** - Maintains and improves existing agents
- **meta-agent** - Generates complete agent configurations from descriptions

## 🚀 Quick Installation

### Option 1: Automated Installation (Recommended)

Copy and paste this prompt to Claude Code:

```
I want to install a set of 26 specialized agents for Claude Code. Please:

1. Create the ~/.claude/agents/ directory if it doesn't exist
2. Download all agent files from this location: [PROVIDE ZIP/REPO URL]
3. Extract all .md files to ~/.claude/agents/
4. Verify the installation by listing all installed agents
5. Explain how to use the orchestrator agents

Do this step by step and confirm when complete.
```

### Option 2: Manual Installation

1. **Create agents directory:**
   ```bash
   mkdir -p ~/.claude/agents
   ```

2. **Copy all agent .md files** from this package to `~/.claude/agents/`

3. **Verify installation:**
   ```bash
   ls -la ~/.claude/agents/
   ```

   You should see 26 .md files

4. **Restart Claude Code** for agents to be recognized

### Option 3: Use the Installation Prompt File

Use the `agent-installation-prompt.md` file included in this package. Simply copy its contents and paste to Claude Code.

## 📋 How to Use Agents

### Automatic Delegation
Claude will automatically invoke the appropriate agent based on your request:

```
User: "Review this code for architectural issues"
→ Claude automatically invokes architect-review agent

User: "Write Facebook ad copy for my SaaS product"
→ Claude automatically invokes ad-copy-specialist agent
```

### Manual Invocation
You can explicitly request an agent:

```
User: "Use the typescript-expert agent to refactor this code"
User: "Delegate to the seo-analyzer to audit my website"
```

### Orchestrator Pattern
For complex tasks, use orchestrators:

```
User: "Use the master-orchestrator to analyze this request and delegate to appropriate specialists"
User: "Use content-manager to create a complete landing page with copy and ads"
```

## 🎯 Common Usage Scenarios

### For Developers:
- "Review my PR for code quality" → **code-reviewer**
- "Help debug this error" → **debugger**
- "Build an AI chatbot feature" → **ai-engineer**
- "Check architectural consistency" → **architect-review**

### For Marketers:
- "Create Google Ads for my product" → **ad-copy-specialist**
- "Write a high-converting landing page" → **cialdini-copywriter**
- "Optimize my YouTube video" → **youtube-video-optimizer**
- "Analyze competitor search rankings" → **serp-competitor-analyzer**

### For Designers:
- "Design a mobile onboarding flow" → **mobile-ux-engineer**
- "Create a design system" → **ui-ux-designer**

### For SEO:
- "Audit my site for SEO issues" → **seo-analyzer**
- "Fix my meta tags and structured data" → **seo-fixer**

### For Agent Management:
- "Create a new agent for X" → **agent-expert** or **meta-agent**
- "Update all agents with new tools" → **agent-updater**

## 🔧 Customization

### Modify Agent Tools
Edit the YAML frontmatter in any .md file:

```yaml
---
name: agent-name
description: What the agent does
tools: Read, Write, Edit, Bash, WebSearch
color: Purple
---
```

### Adjust Agent Behavior
Edit the "Instructions" section in the agent file to change workflows and processes.

### Create New Agents
Use the **meta-agent** or **agent-expert**:
```
User: "Create a new agent for database optimization with tools: Read, Write, Bash"
```

## 🏗️ Agent Architecture

### File Structure
```
~/.claude/agents/
├── master-orchestrator.md
├── engineering-manager.md
├── content-manager.md
├── typescript-expert.md
├── ai-engineer.md
├── [... 21 more agents]
└── backups/
    └── [timestamped backups]
```

### Agent File Format
Each agent is a markdown file with:
1. **YAML Frontmatter** - Configuration (name, description, tools, color)
2. **Purpose Section** - Agent's role and expertise
3. **Instructions Section** - Step-by-step workflows
4. **Best Practices** - Guidelines and tips
5. **Output Format** - How the agent structures responses

## 🆘 Troubleshooting

### Agents not appearing?
1. Ensure files are in `~/.claude/agents/` (use absolute path)
2. Check file names end with `.md`
3. Restart Claude Code completely
4. Verify YAML frontmatter is valid

### Agent not being invoked automatically?
1. Check the agent's description is clear and action-oriented
2. Try explicit delegation: "Use the [agent-name] agent to..."
3. Use an orchestrator to analyze and delegate

### Agent errors?
1. Check tool permissions in the YAML frontmatter
2. Verify the agent has access to required tools
3. Review the agent's instructions for clarity

### Want to modify agents?
1. Edit the .md file directly, OR
2. Ask **agent-updater**: "Update the X agent to include Y capability"

## 📚 Additional Resources

- **Claude Code Docs**: https://docs.claude.com/claude-code
- **MCP Protocol**: https://modelcontextprotocol.io/
- **Agent Best Practices**: See agent-expert.md and agent-updater.md

## 🔄 Keeping Agents Updated

To update all agents with new features:
```
User: "Use agent-updater to scan all agents and update them with the latest Claude Code features"
```

To update a specific agent:
```
User: "Use agent-updater to enhance the [agent-name] with [new capability]"
```

## 🎉 Getting Started

1. ✅ Install agents using one of the methods above
2. ✅ Restart Claude Code
3. ✅ Try: "Use master-orchestrator to help me build a landing page"
4. ✅ Watch Claude automatically delegate to specialists!

The agent system works best when you let Claude analyze your request and automatically choose the right specialist. The orchestrators are particularly powerful for complex, multi-step tasks.

**Pro Tip**: Start with the master-orchestrator for any complex task - it will analyze your needs and coordinate the perfect team of specialists.
