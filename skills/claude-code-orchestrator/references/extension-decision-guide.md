# Extension Decision Guide

Use this matrix when users ask "which feature should I use?"

## Choose by goal

- **Always-on project rules** → `CLAUDE.md`
- **Reusable task or domain playbook** → **Skill**
- **Deterministic event automation** (no model reasoning) → **Hook**
- **External systems/tools** (Jira/DB/Slack/browser APIs) → **MCP**
- **Isolated specialist worker in one session** → **Subagent**
- **Parallel independent sessions with coordination** → **Agent Teams**

## Quick comparisons

### Skill vs CLAUDE.md

- CLAUDE.md: loaded every session.
- Skill: loaded on-demand (manual or model-triggered).

### Skill vs Subagent

- Skill: instructions/knowledge/workflow.
- Subagent: isolated execution context and summarized return.

### Hook vs Skill

- Hook: deterministic script triggered by lifecycle events.
- Skill: model-guided workflow that can reason and branch.

## Practical patterns

- Start with `CLAUDE.md` + 1-2 skills.
- Add hooks for repetitive checks (format/lint/guardrails).
- Add MCP only when external data/actions are required.
- Add subagents when context isolation or parallel work is needed.
