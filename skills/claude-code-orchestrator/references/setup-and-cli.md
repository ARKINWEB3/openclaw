# Setup and CLI Quick Reference

## Install

### Native installer (recommended)

```bash
# macOS / Linux / WSL
curl -fsSL https://claude.ai/install.sh | bash

# Windows PowerShell
irm https://claude.ai/install.ps1 | iex
```

### Alternatives

```bash
brew install --cask claude-code
winget install Anthropic.ClaudeCode
```

## First run

```bash
cd /path/to/project
claude
/login
```

## Core commands

```bash
claude                    # interactive
claude "task"             # interactive with initial prompt
claude -p "query"         # print mode (non-interactive)
claude -c                 # continue latest session in current dir
claude -r <session>       # resume named/ID session
claude update             # update client
claude agents             # list subagents
claude mcp                # manage MCP servers
```

## Useful flags

```bash
claude --model sonnet
claude --permission-mode plan
claude --add-dir ../shared
claude --agent my-agent
claude -p --output-format json "query"
claude -p --max-turns 5 "query"
claude --debug "api,mcp"
```

## Quick verification

```bash
claude --help
claude -p "say ok" --output-format text
claude agents
```

If login or model routing fails, check auth/provider setup first, then run troubleshooting steps.
