# Using the policy with Codex

Use the repository policy as the canonical source instead of duplicating the full policy into repository-local instructions.

A repository-level instruction can point Codex to this policy, for example:

```text
For pull-request review work, apply the GitHub Review Policy from the configured policy repository.
Always load the generic policy and any applicable project-specific extension.
Repository-local AGENTS.md, CONTRIBUTING.md, and README.md still take precedence where they define repository-specific requirements.
```

When Agent Skills are supported in the active Codex environment, install or expose the `skill/` directory and invoke the `github-review-policy` skill for PR review work.
