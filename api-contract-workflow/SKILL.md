---
name: "api-contract-workflow"
description: "Use when a frontend-backend boundary needs an explicit API contract before implementation or integration continues. Clarify request and response shape, error behavior, pagination, filtering, auth expectations, and client-state assumptions, then leave behind a concise contract with open questions and ownership boundaries. Do not use this as the primary surface for a full software-project documentation system; use `software-docs-system` for the broader doc pack and route here only for the API-boundary slice."
---

# API Contract Workflow

Use this skill when a web application needs a clear API contract between consumers and providers before implementation drifts.

If the user is asking for a full project doc pack, use `software-docs-system` as the primary surface and route here only when the API contract itself is the specialist bottleneck.

## Use this skill when

- Frontend and backend work is starting from a vague interface.
- A feature needs agreement on payloads, errors, pagination, or filtering.
- Client-state behavior depends on server guarantees that are still implicit.

Do not use this skill for low-level protocol detail unless the task actually depends on it.

## Workflow

1. Name the API interaction or feature boundary in scope.
2. Identify the contract participants:
   - consumer
   - provider
   - any external dependency or gateway
3. Make the contract explicit:
   - request shape
   - response shape
   - error shape and status handling
   - pagination, filtering, and sorting behavior
   - auth or permission expectations
   - idempotency or retry assumptions when relevant
4. Call out client-state implications:
   - optimistic updates
   - cache invalidation expectations
   - loading and empty states
   - partial failure handling
5. Separate confirmed contract points from open questions.
6. Leave behind a concise contract summary with ownership and next decision points.

## Output shape

When this skill runs successfully, leave behind:

- scope and participants
- request and response contract
- error and status behavior
- client-state implications
- open questions and owners

## Boundaries

- Keep the workflow contract-oriented, not protocol encyclopedic.
- Do not hide unresolved questions behind fake precision.
- Prefer explicit contract gaps over implicit assumptions in chat.
- Keep the skill reusable across common web-app API patterns.
