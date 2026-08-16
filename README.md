# GitHub Review Policy

A reusable, vendor-neutral policy for AI-assisted GitHub pull-request reviews.

The policy defines a rigorous generic review workflow and optional project-specific extensions for:

- openHAB
- OpenRemote
- jUPnP

The repository is designed to be usable by humans, ChatGPT, Codex, Claude, and other AI tools that can consume Markdown or Agent Skills.

## Source of truth

The modular files under [`policy/`](policy/) are the canonical source:

- [`policy/generic.md`](policy/generic.md) — rules that apply to every GitHub repository
- [`policy/openhab.md`](policy/openhab.md) — openHAB additions and overrides
- [`policy/openremote.md`](policy/openremote.md) — OpenRemote additions and overrides
- [`policy/jupnp.md`](policy/jupnp.md) — jUPnP additions and overrides

[`github-review-policy.md`](github-review-policy.md) is the generated combined policy for convenient reading, downloading, or pasting into an AI.

The copies under `skill/references/` are generated from `policy/` for the portable Agent Skill.

Repository-maintenance instructions are kept separately in [`AGENTS.md`](AGENTS.md) so they are not distributed as review-policy rules.

## Use with an AI

For a generic repository, load:

```text
policy/generic.md
```

For a project with an extension, load the generic policy plus the matching project policy. For example, for openHAB:

```text
policy/generic.md
policy/openhab.md
```

Project-specific rules add to or override the generic rules only where explicitly stated.

## Agent Skill

The [`skill/`](skill/) directory packages the policy as a portable Agent Skill. The skill entry point is [`skill/SKILL.md`](skill/SKILL.md).

The detailed policy intentionally lives in reference files rather than being duplicated inside `SKILL.md`.

## ChatGPT

See [`examples/chatgpt.md`](examples/chatgpt.md).

A useful pattern is to keep this repository connected/available to ChatGPT and instruct it to read the current policy before every GitHub review rather than relying on remembered or reconstructed policy text.

## Codex

See [`examples/codex.md`](examples/codex.md).

## Claude and other Agent Skills consumers

See [`examples/claude.md`](examples/claude.md).

## Updating the policy

Read and follow [`AGENTS.md`](AGENTS.md), edit the applicable canonical file under `policy/`, then run:

```bash
bash ./scripts/sync-policy.sh
```

This regenerates:

- `github-review-policy.md`
- `skill/references/*.md`

Validate that generated files are current with:

```bash
bash ./scripts/check-policy.sh
```

CI runs the same check.

## Design goals

- one stable, version-controlled source of truth;
- vendor-neutral policy text;
- generic rules separated from project-specific guidance;
- repository-maintenance instructions separated from review-policy content;
- portable Agent Skill packaging;
- deterministic generated combined policy;
- easy reuse across users and AI tools.

## License

MIT. See [`LICENSE`](LICENSE).
