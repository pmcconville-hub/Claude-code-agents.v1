# 🤖 Claude Code Agent Installation Prompt

Copy and paste the entire prompt below to Claude Code to install 26 specialized agents:

---

## Installation Prompt (Copy Everything Below)

```
I want to install a comprehensive set of 26 specialized sub-agents for Claude Code. These agents provide expert capabilities in development, design, marketing, SEO, and AI engineering with intelligent orchestration.

Please follow these steps:

### Step 1: Prepare the Environment
1. Check if ~/.claude/agents/ directory exists
2. If not, create it: `mkdir -p ~/.claude/agents`
3. List current agents (if any) so we know what's already installed

### Step 2: Download and Install Agents

I have 26 agent files to install. You can access them from:
[USER: PASTE YOUR GITHUB REPO, ZIP URL, OR FOLDER PATH HERE]

OR if I provide the files individually, install them one by one to ~/.claude/agents/

The 26 agents are:

**Orchestrators:**
- master-orchestrator.md
- engineering-manager.md
- content-manager.md
- design-manager.md
- seo-marketing-manager.md
- system-manager.md
- copywriting-orchestrator.md

**Engineering:**
- typescript-expert.md
- ai-engineer.md
- mcp-creator.md
- code-reviewer.md
- debugger.md
- architect-review.md

**Design:**
- ui-ux-designer.md
- mobile-ux-engineer.md

**Content & Marketing:**
- cialdini-copywriter.md
- ad-copy-specialist.md
- landing-page-outline-researcher.md
- transcript-processor.md
- youtube-video-optimizer.md

**SEO:**
- seo-analyzer.md
- seo-fixer.md
- serp-competitor-analyzer.md

**Agent Management:**
- agent-expert.md
- agent-updater.md
- meta-agent.md

### Step 3: Verification
1. List all installed agents: `ls -la ~/.claude/agents/`
2. Count the files: `ls -1 ~/.claude/agents/*.md | wc -l` (should be 26)
3. Verify a few agents by reading their frontmatter

### Step 4: Explain Usage
1. Explain how agents work with automatic delegation
2. Show me how to use the master-orchestrator
3. Give examples of common tasks and which agents handle them

### Step 5: Test
1. Use the master-orchestrator to analyze what agents are now available
2. Demonstrate how to manually invoke an agent

Please proceed step by step and confirm each step is complete before moving to the next.
```

---

## Alternative: Quick Install (If agents are in a folder)

```
I have 26 Claude Code agent files in [FOLDER_PATH]. Please:

1. Copy all .md files from [FOLDER_PATH] to ~/.claude/agents/
2. Verify 26 files were copied successfully
3. List all installed agents with their descriptions
4. Explain how to use the orchestrators (especially master-orchestrator)

Command to use:
cp [FOLDER_PATH]/*.md ~/.claude/agents/
```

---

## Alternative: From GitHub Repository

```
I want to install Claude Code agents from a GitHub repository:

Repository: [YOUR_GITHUB_REPO_URL]

Please:
1. Clone or download the repository
2. Copy all .md files from the agents/ folder to ~/.claude/agents/
3. Verify installation (should have 26 agents)
4. Show me how to use the master-orchestrator
5. Clean up any temporary files

Proceed step by step.
```

---

## After Installation - First Steps

Once agents are installed, try:

```
Use the master-orchestrator to analyze this request: "I need to build a landing page for my SaaS product with SEO optimization and conversion-focused copy"
```

This will demonstrate how the orchestrator delegates to specialists like:
- landing-page-outline-researcher (research)
- cialdini-copywriter (copy)
- seo-fixer (SEO optimization)
- ui-ux-designer (design)

---

## Managing Agents

To update agents:
```
Use agent-updater to scan all agents and check if any need updates based on new Claude Code features
```

To create new agents:
```
Use meta-agent to create a new agent for [SPECIFIC TASK] with tools: [LIST TOOLS]
```

---

## Verification Checklist

After installation, verify:
- [ ] ~/.claude/agents/ directory exists
- [ ] 26 .md files are present
- [ ] Each file has valid YAML frontmatter
- [ ] Claude Code has been restarted
- [ ] Can manually invoke agents: "Use the code-reviewer agent to..."
- [ ] Orchestrators work: "Use master-orchestrator to..."

---

## Need Help?

If installation fails:
1. Check file permissions: `ls -la ~/.claude/agents/`
2. Verify Claude Code can read the directory
3. Check logs: `~/.claude/logs/`
4. Manually create the directory and copy files
5. Restart Claude Code completely

For agent issues:
1. Use agent-expert to debug agent configurations
2. Use agent-updater to fix broken agents
3. Check YAML frontmatter syntax
4. Verify tool names are correct
