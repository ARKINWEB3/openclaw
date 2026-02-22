# Settings and Governance

## Scope model

- **Managed** (highest, org enforced)
- **Command line args** (session override)
- **Local** (`.claude/settings.local.json`)
- **Project** (`.claude/settings.json`)
- **User** (`~/.claude/settings.json`)

Managed rules cannot be overridden by lower scopes.

## Typical file locations

- User: `~/.claude/settings.json`
- Project: `.claude/settings.json`
- Local: `.claude/settings.local.json` (gitignored)
- Managed (Linux): `/etc/claude-code/managed-settings.json`

## Governance baseline

1. Put personal defaults in user scope.
2. Put team conventions in project scope.
3. Put mandatory compliance in managed scope.
4. Keep secrets out of repo-tracked files.

## Example permissions block

```json
{
  "permissions": {
    "allow": ["Bash(npm run test *)", "Read(./src/**)"],
    "deny": ["Read(./.env*)", "Bash(curl *)"]
  }
}
```

## Validation checklist

- Effective setting source is clear (managed/project/local/user).
- Local overrides are not accidentally committed.
- Policy denies sensitive reads and dangerous shell patterns.
