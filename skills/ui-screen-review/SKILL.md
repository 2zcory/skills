---
name: "ui-screen-review"
description: "Use when the task involves screen-level UI/UX or multi-screen flow changes and the user wants a quick, durable review artifact in a project `-ctx` repository before implementation. Classify the change as `minor-ui`, `screen-review-required`, or `flow-review-required`; for review-required work, maintain the canonical `demos/screens/` layout, update `index.html`, prepare a concise review brief, and stop at the design-approval gate rather than jumping straight into production code."
---

# UI Screen Review

Use this skill for screen-level UI/UX work that needs a durable, quick-to-open review artifact before implementation.

## Use this skill when

- A new screen is being added.
- One screen's layout, hierarchy, CTA structure, or responsive behavior is changing meaningfully.
- A multi-screen flow or navigation sequence needs review.
- A UI regression should be isolated as a screen or flow artifact before another fix round.

Do not use this skill for obvious `minor-ui` changes such as tiny copy, spacing, color, or icon adjustments that do not materially change screen direction.

## Preconditions

- Identify the active source repo and the matching private project `-ctx` repo first.
- Verify the `-ctx` repo is available and trusted before storing internal review artifacts there.
- Follow the project's existing baseline and playbooks; this skill is an executor, not the source of truth for policy.

If the matching `-ctx` repo is missing or unverified, stop and report that the screen-review workflow is blocked.

## Workflow

1. Classify the UI change as `minor-ui`, `screen-review-required`, or `flow-review-required`.
2. If the change is `minor-ui`, say so explicitly and avoid creating heavy review ceremony unless the user still wants a full artifact.
3. For review-required work, locate or create the canonical layout under `demos/screens/`:
   - `demos/screens/index.html`
   - `demos/screens/assets/`
   - `demos/screens/screens/`
   - `demos/screens/flows/`
4. Keep one canonical file per durable screen or flow slug; do not create task-named variants like `screen-final-v2.html`.
5. Create or update the affected screen or flow artifacts and keep them directly openable from the filesystem.
6. Ensure the canonical set stays navigable:
   - update `demos/screens/index.html`
   - keep simple shared navigation across linked review files when useful
   - surface visible metadata such as title, scope, review status, last update, and intent
7. If the canonical HTML file cannot carry routing metadata, update the nearby wrapper note or trusted artifact index entry that records the screen-spec role and canonical path.
8. Produce a short review brief that names:
   - the UI change classification
   - in-scope screens or flows
   - the canonical artifact paths
   - the intended design direction
   - any important constraints
9. Stop at the design-review gate. Do not treat artifact creation as approval, and do not jump into production implementation unless the workflow already has direction approval.

## Boundaries

- Keep artifact fidelity at "reviewable and implementable"; do not overbuild a production-like prototype unless the task truly needs it.
- Do not invent new policy, trust rules, or artifact taxonomies inside the skill.
- Do not replace story, checklist, or decision artifacts with one generic HTML file.
- If implementation materially changes the approved direction later, update the canonical artifact or mark the old one superseded.

## Output shape

When this skill runs successfully, leave behind:

- an explicit UI change classification
- current canonical artifact paths under `demos/screens/`
- an updated `demos/screens/index.html` when the active set changed
- a short review brief ready for user approval
