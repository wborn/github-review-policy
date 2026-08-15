# OpenRemote

The generic GitHub policy applies to OpenRemote. Do **not** import openHAB-specific checklists or conventions unless an OpenRemote repository explicitly adopts them.

No broad OpenRemote-specific override has been established that replaces the generic policy. The following recurring checks from prior OpenRemote work apply when relevant.

## OR.1 Architecture and conventions

- Follow the architecture and conventions of the specific OpenRemote module being changed rather than assuming conventions from another project.
- Compare with nearby OpenRemote implementations when useful, while still independently checking correctness.

## OR.2 Public APIs, models, and generated artifacts

When a change affects a public API, data model, or generated API artifact:

- consider backward/API compatibility;
- verify that API definitions and implementation behavior remain aligned;
- verify generated OpenAPI/client artifacts when they are part of the repository workflow;
- check that documentation and examples remain consistent with renamed or changed fields/types;
- avoid treating generated output as authoritative when it exposes a mismatch with the actual implementation.

## OR.3 TypeScript/UI/configuration changes

For TypeScript, UI model, or configuration-related changes, where relevant:

- verify examples reflect the actual supported API/types;
- check defaults and optional/required behavior;
- check serialization/deserialization or configuration compatibility;
- verify naming and documentation stay synchronized with the implementation.

## OR.4 Scope

OpenRemote review findings should remain tied to the PR being reviewed. Historical or neighboring OpenRemote issues should not be converted into blockers unless the PR introduces, worsens, or directly depends on them.
