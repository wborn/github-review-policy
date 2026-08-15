# Contributing

Contributions that improve the policy's correctness, portability, clarity, or project-specific guidance are welcome.

## Policy structure

Put a rule in `policy/generic.md` when it should apply to essentially any GitHub repository.

Put a rule in a project-specific file only when it depends on that project's architecture, tooling, conventions, compatibility requirements, or review workflow.

Do not promote one-off pull-request instructions into the permanent policy unless they clearly represent a reusable rule.

## Making changes

1. Edit the appropriate file under `policy/`.
2. Run `bash ./scripts/sync-policy.sh`.
3. Run `bash ./scripts/check-policy.sh`.
4. Review the generated `github-review-policy.md` diff.
5. Submit the change with a clear explanation of why the rule is broadly useful.

Keep policy text vendor-neutral unless a section specifically documents integration with a particular AI product.
