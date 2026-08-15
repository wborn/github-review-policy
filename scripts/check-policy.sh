#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

cp github-review-policy.md "$tmp_dir/github-review-policy.md"
mkdir -p "$tmp_dir/references"
cp skill/references/*.md "$tmp_dir/references/"

bash ./scripts/sync-policy.sh

status=0

if ! cmp -s github-review-policy.md "$tmp_dir/github-review-policy.md"; then
  echo "github-review-policy.md is out of date. Run bash ./scripts/sync-policy.sh and commit the result." >&2
  status=1
fi

for file in generic openhab openremote jupnp maintenance; do
  if ! cmp -s "skill/references/${file}.md" "$tmp_dir/references/${file}.md"; then
    echo "skill/references/${file}.md is out of date. Run bash ./scripts/sync-policy.sh and commit the result." >&2
    status=1
  fi
done

exit "$status"
