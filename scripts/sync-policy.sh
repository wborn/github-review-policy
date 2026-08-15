#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

for file in generic openhab openremote jupnp maintenance; do
  cp "policy/${file}.md" "skill/references/${file}.md"
done

{
  cat <<'HEADER'
# GitHub Review Policy

> **Canonical policy**
>
> This file is generated from the modular policy files under `policy/`.
> Do not edit it directly. Run `./scripts/sync-policy.sh` after changing the canonical files.

## Scope and precedence

Apply rules in this order:

1. GitHub/platform requirements and the repository's explicit contribution/review instructions.
2. The applicable project-specific section, when one exists.
3. The generic GitHub review policy.

Project-specific sections add to or override the generic policy only where explicitly necessary.

---

HEADER
  cat policy/generic.md
  printf '\n---\n\n# Project-Specific Policies\n\n'
  cat policy/openhab.md
  printf '\n---\n\n'
  cat policy/openremote.md
  printf '\n---\n\n'
  cat policy/jupnp.md
  printf '\n---\n\n'
  cat policy/maintenance.md
} > github-review-policy.md
