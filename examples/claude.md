# Using the policy with Claude or another Agent Skills consumer

The `skill/` directory is designed as a portable Agent Skill:

```text
skill/
├── SKILL.md
└── references/
    ├── generic.md
    ├── openhab.md
    ├── openremote.md
    ├── jupnp.md
    └── maintenance.md
```

Install/copy the skill according to the AI tool's Agent Skills mechanism.

The skill uses progressive loading:

- always load `references/generic.md`;
- load only the relevant project-specific reference;
- load `references/maintenance.md` only when changing the policy itself.

This avoids spending context on unrelated project rules while keeping the canonical behavior consistent.
