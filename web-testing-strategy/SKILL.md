---
name: "web-testing-strategy"
description: "Use when a web app needs a pragmatic testing strategy. Map real risks and change scope to the lightest mix of unit, integration, end-to-end, visual, smoke, and manual checks."
---

# Web Testing Strategy

Use this skill when a web application needs a proportional verification plan before or alongside implementation.

## Use this skill when

- A new feature needs a testing plan.
- The current test setup feels too shallow, too brittle, or too expensive for the value it provides.
- A team needs to decide what should be unit-tested, integration-tested, smoke-tested, or end-to-end tested.

Do not use this skill as a substitute for project-local acceptance criteria or to generate framework-specific test code by default.

## Workflow

1. Identify the change scope and the main failure risks.
2. Separate what must be prevented from what only needs detection after release.
3. Map the relevant surfaces:
   - pure logic
   - component or UI state behavior
   - API integration
   - user-critical flows
   - release smoke checks
4. Choose the lightest mix of test types that covers the real risk:
   - unit
   - integration
   - end-to-end
   - visual or regression checks
   - manual smoke checks
5. Call out where tests are likely to become flaky, slow, or low-signal.
6. Recommend what to automate now, what to leave manual for now, and what to revisit later as the product grows.

## Output shape

When this skill runs successfully, leave behind:

- change scope and risk summary
- recommended test layers
- what each layer should cover
- explicit exclusions or manual checks
- main tradeoffs and maintenance risks

## Boundaries

- Favor pragmatic coverage over exhaustive checklists.
- Do not default to end-to-end coverage for everything.
- Do not force tests whose maintenance cost is higher than their likely value.
- Keep the testing strategy aligned with the actual release risk and product surface.
