# openHAB

The generic GitHub policy applies to openHAB. The following rules add to it.

## OH.1 Project guidance

In addition to the generic repository-guidance checks, inspect openHAB-specific guidance including:

- the openHAB developer documentation in `openhab-docs`;
- the **openHAB Add-ons Review Checklist** when reviewing add-ons;
- similar existing openHAB implementations when useful.

Common openHAB repositories include:

- `openhab/openhab-core`;
- `openhab/openhab-addons`;
- `openhab/openhab-docker`;
- other repositories belonging to the openHAB project.

**jUPnP is not an openHAB project.** Do not apply openHAB repository rules to jUPnP merely because openHAB consumes it.

## OH.2 Add-ons and bindings

For bindings/add-ons, consider where applicable:

- handler lifecycle;
- service lifecycle;
- discovery;
- Thing definitions;
- channel definitions;
- configuration definitions and bounds;
- metadata;
- localization/i18n;
- error/status handling;
- resource cleanup;
- communication/API behavior;
- tests;
- established binding/add-on architecture and conventions.

Compare against similar existing add-ons to understand established patterns, but do not let an existing pattern override a demonstrable correctness issue.

For automation add-ons, specifically compare with other existing openHAB automation add-ons.

When an integration depends on an external service, protocol, or API, verify behavior against relevant upstream documentation/specifications when available.

## OH.3 OSGi, Karaf, and shared infrastructure

For OSGi/Karaf-related changes, consider where relevant:

- lifecycle;
- service availability;
- bundle wiring;
- package imports/exports;
- feature provisioning;
- start levels/order;
- dynamic installation/removal;
- configuration behavior;
- existing deployment behavior.

For infrastructure or shared-library changes:

- inspect relevant downstream openHAB usages and linked PRs when compatibility may be affected;
- verify that lifecycle assumptions remain valid;
- consider dynamic runtime changes, not only startup behavior.

For library/platform migrations such as Jetty changes, inspect API compatibility and how changed APIs are consumed by related openHAB repositories.

For concurrency/networking changes such as mDNS/JmDNS handling, consider:

- asynchronous lifecycle races;
- stale callbacks after state changes;
- interface/address addition and removal;
- stale state;
- cleanup;
- behavior during dynamic network changes.

## OH.4 Static-analysis reports from PR builds

For openHAB PRs where the GitHub Actions build produces an attached static-analysis report, inspect that report as part of the normal review.

Treat it as an additional source alongside:

- the code diff;
- tests;
- repository guidance;
- CI;
- manual technical analysis.

Only add review comments for findings **newly introduced or materially worsened by the PR**.

Do not comment on:

- findings already present on the base branch;
- findings in unrelated code;
- unchanged legacy violations merely surfaced by the report;
- duplicate findings already covered by another review comment.

Determine whether a finding is new using the best available evidence, such as:

- base revision/base-branch comparison;
- whether the relevant code was added or materially changed;
- Git history/blame where necessary;
- previous CI/static-analysis results when available.

A finding on a changed line is **not automatically new**.

Before commenting:

- verify the finding still applies to the current PR HEAD;
- check whether it is a genuine issue rather than an expected exception or false positive;
- understand the underlying rule sufficiently to explain why the finding matters;
- apply the normal confidence and severity rules.

Prefer an inline comment on the relevant source line when actionable.

Do not paste raw analyzer diagnostics without context. Explain the concrete issue and expected fix direction where useful.

If multiple findings share one root cause, avoid repetitive comments.

On re-review:

- inspect the latest static-analysis report;
- verify previously raised analyzer issues are fixed;
- check for new findings caused by the latest changes;
- resolve corresponding threads when fully addressed.

If the expected report is unavailable, inaccessible, incomplete, or clearly belongs to an outdated PR revision, do not infer its contents. Mention the limitation when it materially affects review completeness.
