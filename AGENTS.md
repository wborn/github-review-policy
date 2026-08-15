# AGENTS.md

## Repository purpose

This repository maintains a canonical, vendor-neutral GitHub pull-request review policy and a portable Agent Skill derived from it.

## Editing rules

- Treat `policy/*.md` as the canonical source.
- Do not hand-edit `github-review-policy.md` or `skill/references/*.md`; regenerate them with `bash ./scripts/sync-policy.sh`.
- Put cross-repository rules in `policy/generic.md`.
- Put project-specific additions or overrides only in the corresponding project file.
- Preserve the distinction between blocking and non-blocking review findings.
- Keep examples and integration guidance outside the canonical policy unless the behavior itself is part of the review policy.
- Run `bash ./scripts/check-policy.sh` after changes.

## Review references

When reviewing changes to this repository, also read `README.md` and `CONTRIBUTING.md`.
