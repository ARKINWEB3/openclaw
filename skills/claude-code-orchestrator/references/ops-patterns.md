# Ops Patterns (Execution-first)

## Pattern: rollout Claude Code in a team repo

1. Add project `CLAUDE.md` with coding and review conventions.
2. Add `.claude/settings.json` for shared permissions and defaults.
3. Add project skills under `.claude/skills/*` for recurring workflows.
4. Add hooks for deterministic checks (format/lint/tests).
5. Verify with a smoke task and one non-interactive run.

## Pattern: non-interactive automation

```bash
claude -p --output-format json --max-turns 5 "<task>"
```

Use bounded turns and structured output for CI pipelines.

## Pattern: troubleshoot quickly

1. Confirm version and auth.
2. Reproduce with smallest command.
3. Enable debug category (`--debug "api,mcp"`).
4. Isolate config scope conflicts (user/project/local/managed).
5. Verify network/proxy/certs for enterprise environments.

## Pattern: safe change management

- Before high-risk change: snapshot config files.
- Apply change in local scope first.
- Promote to project/managed only after validation.
- Keep rollback commands next to rollout commands.

## Standard verification block

- `claude --help` works
- `claude -p "say ok"` succeeds
- required tools/servers discoverable (`claude mcp`, `claude agents`)
- target workflow executes once end-to-end
