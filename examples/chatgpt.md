# Using the policy with ChatGPT

Keep this repository available to ChatGPT and treat it as the canonical policy source.

A useful instruction is:

> For GitHub pull-request reviews, use the current GitHub Review Policy from this repository. Read `policy/generic.md` and the matching project-specific policy before reviewing. Do not reconstruct the policy from memory when the repository is accessible.

Example prompts:

```text
Review openhab/openhab-addons#12345 using my GitHub Review Policy.
```

```text
Re-review owner/repository#123 using the current policy and show the proposed review before submitting.
```

For an openHAB review, ChatGPT should load:

```text
policy/generic.md
policy/openhab.md
```

For other repositories without a project-specific extension, only `policy/generic.md` is required.

If the ChatGPT environment supports installing Agent Skills, the `skill/` directory can be used as the packaged form of the same policy.
