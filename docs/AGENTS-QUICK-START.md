# 🚀 Claude Code Agents - Quick Start

## ⚡ TL;DR - Installation in 3 Steps

### For Users Receiving This Package:

**Step 1:** Copy this entire prompt to Claude Code:

```
I want to install 26 specialized agents for Claude Code. I have the agent files ready.

Please:
1. Create directory: mkdir -p ~/.claude/agents
2. Copy all .md files from [FOLDER_PATH] to ~/.claude/agents/
3. Verify: ls -la ~/.claude/agents/
4. Confirm 26 agents are installed
5. Explain how to use master-orchestrator

Replace [FOLDER_PATH] with the actual path to the agents.
```

**Step 2:** Restart Claude Code

**Step 3:** Test it:
```
Use master-orchestrator to help me build a landing page
```

---

## 📦 What's Included?

**26 Specialized Agents** organized into teams:

### 🎯 7 Orchestrators (Team Managers)
Route complex tasks to the right specialists automatically

### 💻 6 Engineering Agents
TypeScript, AI/ML, MCP tools, code review, debugging, architecture

### 🎨 2 Design Agents
UI/UX design, mobile interfaces, design systems

### 📝 5 Content Agents
Copywriting, ads, landing pages, video optimization, transcripts

### 🔍 3 SEO Agents
Technical audits, fixes, competitor analysis

### 🛠️ 3 Agent Management
Create, update, and maintain agents

---

## 🎯 Most Common Use Cases

**"Review my code"**
→ Auto-invokes: `code-reviewer`

**"Build an AI chatbot"**
→ Auto-invokes: `ai-engineer`

**"Write Facebook ads"**
→ Auto-invokes: `ad-copy-specialist`

**"Create a landing page"**
→ Auto-invokes: `copywriting-orchestrator` → coordinates multiple specialists

**"Fix SEO issues"**
→ Auto-invokes: `seo-fixer`

**"Design a mobile app"**
→ Auto-invokes: `mobile-ux-engineer`

---

## 🔥 Power User Tips

### Use Orchestrators for Complex Tasks
```
Use master-orchestrator to: [complex task]
```
The orchestrator analyzes and delegates to the perfect team.

### Manual Invocation
```
Use the [agent-name] agent to [task]
```

### Multi-Agent Workflows
```
Use copywriting-orchestrator to:
1. Research competitors
2. Create landing page outline
3. Write persuasive copy
4. Generate ad variations
```

### Update Agents
```
Use agent-updater to enhance all agents with [new capability]
```

### Create New Agents
```
Use meta-agent to create a new agent for [purpose] with tools: [tools]
```

---

## 📁 File Structure After Installation

```
~/.claude/
└── agents/
    ├── master-orchestrator.md
    ├── engineering-manager.md
    ├── content-manager.md
    ├── design-manager.md
    ├── seo-marketing-manager.md
    ├── system-manager.md
    ├── copywriting-orchestrator.md
    ├── typescript-expert.md
    ├── ai-engineer.md
    ├── mcp-creator.md
    ├── code-reviewer.md
    ├── debugger.md
    ├── architect-review.md
    ├── ui-ux-designer.md
    ├── mobile-ux-engineer.md
    ├── cialdini-copywriter.md
    ├── ad-copy-specialist.md
    ├── landing-page-outline-researcher.md
    ├── transcript-processor.md
    ├── youtube-video-optimizer.md
    ├── seo-analyzer.md
    ├── seo-fixer.md
    ├── serp-competitor-analyzer.md
    ├── agent-expert.md
    ├── agent-updater.md
    └── meta-agent.md
```

---

## 🛠️ For Package Creators (You)

### Package Your Agents for Sharing:

```bash
# Run the packaging script
./package-agents.sh

# This creates:
# - claude-agents-[timestamp].tar.gz
# - claude-agents-[timestamp].zip
# - Both contain all agents + docs + install script
```

### Or Manually Share:

**Option 1: Share the folder**
- Zip `~/.claude/agents/` folder
- Include `agents-setup-guide.md`
- Include `agent-installation-prompt.md`

**Option 2: GitHub Repository**
```bash
# Create repo structure
mkdir claude-code-agents
mkdir claude-code-agents/agents
cp ~/.claude/agents/*.md claude-code-agents/agents/
cp agents-setup-guide.md claude-code-agents/README.md
cp agent-installation-prompt.md claude-code-agents/
cp agents-list.md claude-code-agents/

# Push to GitHub
cd claude-code-agents
git init
git add .
git commit -m "Initial commit: 26 Claude Code agents"
git remote add origin [your-repo-url]
git push -u origin main
```

**Option 3: Simple Prompt**
- Share `agent-installation-prompt.md`
- Recipients paste it to Claude
- Claude guides the installation

---

## ✅ Verification Checklist

After installation, verify:

- [ ] Run: `ls -la ~/.claude/agents/`
- [ ] Count: `ls -1 ~/.claude/agents/*.md | wc -l` (should be 26)
- [ ] Restart Claude Code
- [ ] Test: "Use master-orchestrator to list available specialists"
- [ ] Test: "Use code-reviewer to review this code: [paste code]"

---

## 🆘 Troubleshooting

**Agents not showing up?**
1. Ensure absolute path: `~/.claude/agents/` not `.claude/agents/`
2. Restart Claude Code completely (quit and relaunch)
3. Check file names end with `.md`
4. Verify YAML frontmatter is valid

**Can't invoke agents?**
1. Try explicit: "Use the [agent-name] agent"
2. Check agent description is clear
3. Use orchestrator: "Use master-orchestrator to..."

**Permission errors?**
1. Check file permissions: `chmod 644 ~/.claude/agents/*.md`
2. Ensure directory permissions: `chmod 755 ~/.claude/agents/`

---

## 📚 Documentation Files Included

1. **agents-setup-guide.md** - Complete setup and usage guide
2. **agent-installation-prompt.md** - Copy-paste installation prompts
3. **agents-list.md** - Full agent catalog with descriptions
4. **AGENTS-QUICK-START.md** - This file (quick reference)
5. **package-agents.sh** - Script to package agents for sharing

---

## 🎉 Ready to Go!

**For Users:**
1. Install using the prompt above
2. Restart Claude Code
3. Try: "Use master-orchestrator to help me [task]"

**For Creators:**
1. Run `./package-agents.sh` to create shareable package
2. Share the .tar.gz or .zip file
3. Include the installation prompt

---

## 💡 Examples to Try

```
# Development
"Review this TypeScript code for type safety issues"
"Build a RAG system with vector search"
"Debug this error: [paste error]"

# Marketing
"Create Facebook ads for my SaaS product"
"Write a high-converting landing page for [product]"
"Optimize my YouTube video: [title]"

# Design
"Design a mobile checkout flow"
"Create a design system for my app"

# SEO
"Audit my website for SEO issues: example.com"
"Analyze what's ranking for 'best project management tools'"

# Complex Projects
"Use master-orchestrator to: Build a landing page with SEO-optimized copy and conversion-focused design for my AI writing assistant"
```

The agent system shines on complex, multi-step tasks. Let the orchestrators coordinate the specialists for you!
