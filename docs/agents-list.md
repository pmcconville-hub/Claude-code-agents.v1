# Claude Code Agents - Complete List

## Orchestrators (7)

### master-orchestrator
**Color:** Purple
**Tools:** Task, TodoWrite, Read, Grep
**Description:** Top-level intelligent task router that analyzes requests and delegates to specialized team managers. Automatically engaged for optimal agent selection and coordination. Provides unified progress tracking across all teams.

### engineering-manager
**Color:** Purple
**Tools:** Task, TodoWrite, Read, Glob, Grep
**Description:** Engineering team lead agent that intelligently delegates to specialized engineering agents. Use for all software development, code quality, architecture, debugging, and technical implementation tasks.

### content-manager
**Color:** Orange
**Tools:** Task, TodoWrite, Read, Glob, Grep
**Description:** Content and copywriting team lead agent that coordinates specialized content creation agents. Use for all copywriting, content strategy, ad copy, video optimization, and transcript processing tasks.

### design-manager
**Color:** Cyan
**Tools:** Task, TodoWrite, Read, Glob, Grep
**Description:** Design and UX team lead agent that coordinates specialized UI/UX and mobile design agents. Use for all user interface design, user experience optimization, design systems, and mobile app design tasks.

### seo-marketing-manager
**Color:** Green
**Tools:** Task, TodoWrite, Read, Glob, Grep
**Description:** SEO and marketing team lead agent that coordinates specialized SEO and competitive analysis agents. Use for all SEO audits, fixes, SERP analysis, and competitive research tasks.

### system-manager
**Color:** Purple
**Tools:** Task, TodoWrite, Read, Write, Edit, Glob, Grep
**Description:** Agent and system management team lead that coordinates specialized agents for creating, updating, and maintaining the agent ecosystem. Use for agent creation, updates, system architecture, and agent optimization tasks.

### copywriting-orchestrator
**Color:** Orange
**Tools:** Task, Read, Write, MultiEdit, Glob, LS, TodoWrite, WebSearch
**Description:** Manages comprehensive copywriting projects that require competitive analysis, landing page creation, and multi-platform ad copy. Orchestrates workflow between serp-competitor-analyzer, landing-page-outline-researcher, cialdini-copywriter, and ad-copy-specialist agents.

---

## Engineering & Development (6)

### typescript-expert
**Color:** Blue
**Tools:** Read, Write, Edit, MultiEdit, Grep, Glob, Bash, WebSearch, TodoWrite
**Description:** Write type-safe TypeScript with advanced type system features, generics, and utility types. Implements complex type inference, discriminated unions, conditional types, and framework-specific typing (React, Playwright, MCP). Use PROACTIVELY for TypeScript development.

### ai-engineer
**Color:** Purple
**Tools:** Read, Write, Edit, MultiEdit, Bash, Grep, Glob, WebFetch, WebSearch, TodoWrite
**Description:** Build LLM applications, RAG systems, MCP tools, and prompt pipelines. Implements vector search, agent orchestration, AI API integrations, and custom MCP servers. Use PROACTIVELY for LLM features, chatbots, AI-powered applications.

### mcp-creator
**Color:** Purple
**Tools:** Read, Write, Edit, MultiEdit, Bash, Grep, Glob, WebFetch, WebSearch, TodoWrite
**Description:** Use proactively when building Model Context Protocol (MCP) servers, creating custom integrations between AI tools and external systems, or implementing MCP tools, resources, and prompts. Expert in both local stdio servers and remote HTTP/SSE servers with OAuth support.

### code-reviewer
**Color:** Yellow
**Tools:** Read, Grep, Glob, Bash
**Description:** Expert code review specialist. Proactively reviews code for quality, security, and maintainability. Use immediately after writing or modifying code to catch issues before commit.

### debugger
**Color:** Red
**Tools:** Read, MultiEdit, Grep, Glob, Bash, WebSearch, TodoWrite
**Description:** Use proactively for debugging errors, test failures, unexpected behavior, and performing root cause analysis. Specialist in systematic debugging, hypothesis testing, and minimal fixes.

### architect-review
**Color:** Cyan
**Tools:** Read, Grep, Glob, Bash
**Description:** Reviews code changes for architectural consistency and patterns. Use PROACTIVELY after any structural changes, new services, or API modifications. Ensures SOLID principles, proper layering, maintainability, and system scalability.

---

## Design & UX (2)

### ui-ux-designer
**Color:** Cyan
**Tools:** Read, Write, Edit, MultiEdit, Grep, Glob, WebFetch, WebSearch, TodoWrite
**Description:** Use proactively for UI/UX design, design systems, user experience optimization, accessibility compliance, and design implementation. Expert in user research, wireframing, prototyping, modern design principles, and responsive design across all devices.

### mobile-ux-engineer
**Color:** Cyan
**Tools:** Read, Write, Edit, MultiEdit, Grep, Glob, Bash, WebFetch, mcp__playwright-mcp__playwright_navigate, mcp__playwright-mcp__playwright_screenshot, TodoWrite
**Description:** Design mobile user interfaces and experiences with modern design principles, accessibility standards, and design systems. Expert in mobile user research, wireframing, prototyping, and design implementation. Use PROACTIVELY for mobile UI/UX design, responsive design systems, touch interactions.

---

## Content & Marketing (5)

### cialdini-copywriter
**Color:** Orange
**Tools:** Read, Write, MultiEdit, WebSearch, WebFetch, TodoWrite
**Description:** Use proactively for writing high-converting landing page copy, sales pages, and marketing content using Cialdini's principles of persuasion and Copyhackers methodologies. Specialist in psychological triggers, conversion optimization, and persuasive storytelling.

### ad-copy-specialist
**Color:** Orange
**Tools:** Write, WebSearch, WebFetch, TodoWrite
**Description:** Use proactively for creating optimized advertising copy across Facebook, Google, LinkedIn, and TikTok platforms, including video scripts. Specialist in platform-specific best practices, character limits, viral content strategies, and A/B testing frameworks.

### landing-page-outline-researcher
**Color:** Orange
**Tools:** WebSearch, WebFetch, Read, Write, mcp__perplexity-mcp__search, mcp__perplexity-mcp__reason, mcp__perplexity-mcp__deep_research
**Description:** Use proactively for researching target audiences, analyzing competitor landing pages, and creating data-driven landing page outlines with proven conversion frameworks.

### transcript-processor
**Color:** Blue
**Tools:** Read, Write, Edit, MultiEdit, TodoWrite
**Description:** Specialist for processing and transforming transcribed text from videos/audio. Use proactively for cleaning up raw transcripts, extracting key information, creating structured documentation, and converting informal speech to clear written content. Expert in content structuring and markdown formatting.

### youtube-video-optimizer
**Color:** Red
**Tools:** WebSearch, WebFetch, Write, Read, mcp__perplexity-mcp__search, TodoWrite
**Description:** YouTube SEO and optimization specialist. Use proactively for video title optimization, keyword research, hook creation, description writing, hashtag selection, and comprehensive video optimization packages. Expert in YouTube trends, algorithm best practices, and platform-specific content strategies.

---

## SEO & Marketing (3)

### seo-analyzer
**Color:** Green
**Tools:** WebFetch, Read, Grep, mcp__playwright-mcp__playwright_navigate, mcp__playwright-mcp__playwright_screenshot, mcp__playwright-mcp__playwright_click, mcp__playwright-mcp__playwright_fill, mcp__playwright-mcp__playwright_evaluate
**Description:** Use proactively for analyzing websites for technical SEO issues that impact Google indexing and search visibility. Performs comprehensive technical audits including page speed, mobile-friendliness, structured data validation, and crawlability analysis.

### seo-fixer
**Color:** Green
**Tools:** Read, Write, MultiEdit, Glob, Grep, TodoWrite
**Description:** Use proactively for fixing SEO structural errors including meta tags, Open Graph, structured data, heading hierarchy, alt text, canonical URLs, robots.txt, sitemaps, and semantic HTML issues. Implements automated SEO fixes with code quality preservation.

### serp-competitor-analyzer
**Color:** Green
**Tools:** WebSearch, WebFetch, mcp__jina-mcp__jina_search, mcp__jina-mcp__jina_reader, mcp__perplexity-mcp__search
**Description:** Use proactively to analyze search engine results pages (SERPs) and understand which websites, pages, and copy are ranking well for specific search queries. Extracts and analyzes competitor content, meta descriptions, titles, and ranking patterns to inform SEO and content strategies.

---

## Agent Management (3)

### agent-expert
**Color:** Purple
**Tools:** Read, Write, Edit, MultiEdit, Glob, Grep, LS, WebFetch, WebSearch, TodoWrite
**Description:** Use proactively for designing, creating, optimizing, and managing Claude Code sub-agents. Specialist for agent architecture, prompt engineering, domain modeling, system integration, and quality assurance of agent configurations. Expert in 2025 agent patterns and MCP integration.

### agent-updater
**Color:** Purple
**Tools:** Read, Write, Edit, MultiEdit, Bash, Grep, Glob, WebFetch, WebSearch, Task
**Description:** Use proactively to maintain and continuously improve the agent ecosystem. Specialist for analyzing existing agents, researching domain best practices, updating agent capabilities with new features and workflows, ensuring consistency across all agents, and keeping them aligned with the latest Claude Code features and MCP developments.

### meta-agent
**Color:** Purple
**Tools:** Write, WebFetch, mcp__firecrawl-mcp__firecrawl_scrape, mcp__firecrawl-mcp__firecrawl_search, MultiEdit, TodoWrite
**Description:** Generates a new, complete Claude Code sub-agent configuration file from a user's description. Use this to create new agents. Use proactively when the user asks you to create a new sub-agent or needs agent architecture guidance.

---

## Quick Reference by Use Case

**Code Development:**
- typescript-expert, code-reviewer, debugger, architect-review

**AI/ML Projects:**
- ai-engineer, mcp-creator

**Website/Landing Pages:**
- ui-ux-designer, cialdini-copywriter, landing-page-outline-researcher, seo-fixer

**Advertising:**
- ad-copy-specialist, youtube-video-optimizer

**SEO:**
- seo-analyzer, seo-fixer, serp-competitor-analyzer

**Mobile Apps:**
- mobile-ux-engineer, ui-ux-designer

**Complex Projects:**
- master-orchestrator, engineering-manager, content-manager, design-manager, seo-marketing-manager

**Agent Management:**
- agent-expert, agent-updater, meta-agent, system-manager

---

## Installation

All agents are .md files that go in: `~/.claude/agents/`

See `agent-installation-prompt.md` for installation instructions.
