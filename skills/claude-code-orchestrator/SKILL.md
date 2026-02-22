---
name: claude-code-orchestrator
description: Claude Code documentation and operations copilot. Use when the user asks about Claude Code setup, CLI flags, settings scopes, CLAUDE.md conventions, skills, hooks, MCP integration, subagents, agent teams, security/permissions, troubleshooting, or migration plans. Also use to generate ready-to-run command sequences and implementation checklists from https://code.claude.com/docs.
---

# Claude Code Orchestrator

Provide practical, execution-first guidance from Claude Code official docs.

## Workflow

1. Read `references/doc-map.md` to locate the right official page(s).
2. Read only the needed reference file sections for the user request.
3. Return:
   - direct answer,
   - minimum command set,
   - validation steps,
   - rollback/safety note when relevant.
4. If the request is implementation-heavy, provide a staged plan (`phase 1/2/3`) with acceptance criteria.

## Output Contract

Default response format:

1. **What to do now** (1-3 bullets)
2. **Commands** (copy/paste)
3. **Verify** (exact checks)
4. **Gotchas** (short)

## Fast Paths

- **Install / login / first run**: use `references/setup-and-cli.md`
- **Flags / non-interactive / automation**: use `references/setup-and-cli.md` + `references/ops-patterns.md`
- **Settings / policy / scope precedence**: use `references/settings-and-governance.md`
- **Skills / hooks / MCP / subagents decision**: use `references/extension-decision-guide.md`
- **Troubleshooting / blocked workflows**: use `references/ops-patterns.md`

## Guardrails

- Prefer official CLI and config paths from docs; avoid invented flags.
- For destructive/system-level changes, include a backup or rollback step.
- When docs conflict with local environment constraints, state both and provide a safe fallback.

## Bundled Resources

- `references/doc-map.md`: curated map of official docs and when to use each page.
- `references/setup-and-cli.md`: setup + CLI command/flag quick reference.
- `references/settings-and-governance.md`: settings scopes, precedence, and managed policy model.
- `references/extension-decision-guide.md`: CLAUDE.md vs Skills vs Hooks vs MCP vs Subagents vs Agent Teams.
- `references/ops-patterns.md`: practical deployment/checklist/troubleshooting patterns.
- `scripts/fetch_docs_index.sh`: refresh docs index (`llms.txt`) to keep references current.
