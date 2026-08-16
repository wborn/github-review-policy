# GitHub Review Policy Repository Maintenance

## Scope

These are repository-maintenance instructions only. They do not define how pull requests should be reviewed.

Do not use this file as a review policy or copy its contents into review-policy artifacts.
When reviewing changes to this repository, treat the files under `policy/` as policy content being edited, not as instructions for performing that review.

Apply the maintenance instructions below only when a task explicitly adds, changes, reorganizes, removes, or packages review-policy content.
For other tasks, do not load or apply review-policy files merely because they are stored in this repository.

## Sources of Truth

Author review-policy rules only in the applicable file under `policy/`:

- `policy/generic.md` for rules that apply to essentially every repository;
- `policy/openhab.md` for openHAB-specific additions and overrides;
- `policy/openremote.md` for OpenRemote-specific additions and overrides;
- `policy/jupnp.md` for jUPnP-specific additions and overrides.

Add each rule to the narrowest appropriate canonical file.
Do not copy or paraphrase the same rule into multiple canonical files unless an explicit project-specific override is required.

Do not add one-off pull-request instructions, temporary preferences, or wording requested for a single review to the permanent policy unless the user explicitly asks to promote them.

Repository-maintenance instructions belong in this file, not under `policy/`.

## Generated Files

The following files are generated and must never be edited directly:

- `github-review-policy.md`;
- `skill/references/*.md`.

After changing a canonical policy file, run:

```bash
bash ./scripts/sync-policy.sh
bash ./scripts/check-policy.sh
```

Generated changes are expected in the resulting diff, but their contents must come only from `scripts/sync-policy.sh`.
Do not manually copy, summarize, or adapt policy rules into generated files.

## Agent Skill

`skill/SKILL.md` is only the entry point and reference-selection logic for the portable Agent Skill.

Keep it concise.
It may identify which generated reference files to load, but it must not contain copies, summaries, examples, or derived versions of individual review-policy rules.
Update it only when the skill's triggering, workflow, or reference-selection behavior changes.

## Compatibility Files

Keep `CLAUDE.md`, `GEMINI.md`, and `.github/copilot-instructions.md` as thin pointers to these instructions.
Do not copy policy or maintenance content into them.

## Completion Check

Before considering a policy change complete:

1. Confirm that each new rule exists in exactly the intended canonical file.
1. Regenerate all derived artifacts.
1. Run the policy consistency check.
1. Review the complete diff.
1. Confirm that no policy content was independently added to this file, compatibility files, `skill/SKILL.md`, or generated files.
