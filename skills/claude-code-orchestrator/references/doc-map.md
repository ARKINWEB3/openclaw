# Claude Code Docs Map (official)

Source root: `https://code.claude.com/docs`
Docs index: `https://code.claude.com/docs/llms.txt`

## Core pages

- `en/overview.md` — product/surface overview
- `en/quickstart.md` — install/login/first session
- `en/cli-reference.md` — CLI commands and flags
- `en/common-workflows.md` — practical coding workflows
- `en/best-practices.md` — usage guidance
- `en/troubleshooting.md` — operational fixes

## Configuration and control

- `en/settings.md` — user/project/local/managed scopes + precedence
- `en/permissions.md` — permission modes and constraints
- `en/security.md` — security model and safe usage
- `en/network-config.md` — proxy/CA/mTLS enterprise networking

## Extensions and automation

- `en/features-overview.md` — CLAUDE.md vs Skills vs MCP vs Hooks vs Subagents
- `en/skills.md` — skill structure, locations, invocation
- `en/hooks.md` + `en/hooks-guide.md` — event hooks and automation patterns
- `en/mcp.md` — external tool integration via MCP
- `en/sub-agents.md` — custom subagents
- `en/agent-teams.md` — parallel team orchestration

## Integrations

- `en/vs-code.md`, `en/jetbrains.md`, `en/desktop.md`, `en/claude-code-on-the-web.md`
- `en/github-actions.md`, `en/gitlab-ci-cd.md`, `en/slack.md`, `en/chrome.md`

## When user asks X → Read Y

- "怎么安装/登录" → quickstart + setup
- "这个 flag 怎么用" → cli-reference
- "团队统一策略" → settings + permissions + server-managed-settings
- "什么时候用 skill/hook/mcp/subagent" → features-overview + related pages
- "CI 自动化" → github-actions / gitlab-ci-cd + hooks
- "企业网络/代理" → network-config
