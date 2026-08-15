# Policy maintenance

## M.1 What belongs in this file

Add a rule to the **generic** section when it should apply to essentially any GitHub repository.

Add a rule to a **project-specific** section only when it is tied to that project's architecture, tooling, conventions, compatibility requirements, or review workflow.

Do not permanently add one-off PR instructions such as:

- skipping a topic for one specific review;
- deliberately omitting test requests for one specific PR;
- temporary scope exclusions;
- wording requested only for one comment.

Those instructions should remain scoped to the relevant review unless the user explicitly promotes them into this policy.

## M.2 Stable-source principle

Treat this Markdown file as the canonical policy rather than relying on a reconstructed or compacted chat memory.

When this policy is updated:

1. edit this file explicitly;
2. review the resulting diff;
3. keep memory, skills, or `AGENTS.md` references short and point them to this canonical file where possible.
