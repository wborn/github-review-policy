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

if ! diff -qr skill/references "$tmp_dir/references" >/dev/null; then
  echo "skill/references is out of date. Run bash ./scripts/sync-policy.sh and commit the result." >&2
  status=1
fi

exit "$status"
