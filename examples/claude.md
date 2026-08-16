# Using the policy with Claude or another Agent Skills consumer

The `skill/` directory is designed as a portable Agent Skill:

```text
skill/
├── SKILL.md
└── references/
    ├── generic.md
    ├── openhab.md
    ├── openremote.md
    └── jupnp.md
```

Install/copy the skill according to the AI tool's Agent Skills mechanism.

The skill uses progressive loading:

- always load `references/generic.md`;
- load only the relevant project-specific reference.

This avoids spending context on unrelated project rules while keeping the canonical behavior consistent.

The skill contains only review behavior. Repository-maintenance instructions remain in the repository's root `AGENTS.md` and are not distributed with the skill.
