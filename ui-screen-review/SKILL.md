---
name: "ui-screen-review"
description: "Compatibility UI skill for projects that already rely on a durable `demos/screens/` review workflow in a private `-ctx` repository. Use it to preserve launcher-based review artifacts when legacy continuity matters more than routing normal UI/frontend work through `ui-design-intelligence`."
---

# UI Screen Review

Compatibility UI skill.

Use this skill only when a project already relies on the durable `demos/screens/` review workflow and that compatibility boundary still matters more than routing through `ui-design-intelligence`.

## Use this skill when

- An existing project already uses `demos/screens/` artifacts and needs that durable review format preserved.
- A screen or flow change should be expressed in the existing launcher-based review set for continuity.
- A UI regression should be isolated as a screen or flow artifact before another fix round inside that established workflow.

Do not use this skill for obvious `minor-ui` changes such as tiny copy, spacing, color, or icon adjustments that do not materially change screen direction.
Do not choose this as the normal first-entry skill for new UI/frontend work; use `ui-design-intelligence` instead.

## Preconditions

- Identify the active source repo and the matching private project `-ctx` repo first.
- Verify the `-ctx` repo is available and trusted before storing internal review artifacts there.
- Follow the project's existing baseline and playbooks; this skill is an executor, not the source of truth for policy.

If the matching `-ctx` repo is missing or unverified, stop and report that the screen-review workflow is blocked.

## Workflow

1. Classify the UI change as `minor-ui`, `screen-review-required`, `system-surface-review-required`, or `flow-review-required`.
2. If the change is `minor-ui`, say so explicitly and avoid creating heavy review ceremony unless the user still wants a full artifact.
3. For `screen-review-required`, `system-surface-review-required`, or `flow-review-required` work, name the primary review mode before editing artifacts:
   - `desktop-compare` when the artifact must help compare variants, hierarchy, or multi-state direction side by side
   - `mobile-review` when the artifact must be directly reviewable on a phone-sized viewport without zoom tricks or horizontal drift
   - if both matter, expose them intentionally through the launcher and artifact set instead of forcing one overloaded page to do everything
4. If the slice owns shared public chrome across routes, treat it as `system-surface-review-required` when it combines multiple responsibilities such as brand, primary navigation, locale, theme, or cross-route responsive compression.
5. For review-required work, locate or create the canonical layout under `demos/screens/`:
   - `demos/screens/index.html`
   - `demos/screens/assets/`
   - `demos/screens/screens/`
   - `demos/screens/flows/`
6. Keep one canonical file per durable screen or flow slug; do not create task-named variants like `screen-final-v2.html`.
7. Create or update the affected screen or flow artifacts and keep them directly openable from the filesystem.
8. Treat `demos/screens/index.html` as the launcher for the active review set:
   - update `demos/screens/index.html`
   - show the active screen or flow entrypoints clearly
   - surface visible metadata such as title, scope, review status, last update, intent, and primary review mode when that adds clarity
9. Ensure the canonical set stays navigable:
   - keep simple shared navigation across linked review files when useful
   - make navigation usable on the intended device class rather than relying on browser zoom shrinkage or horizontal overflow to reveal hidden links
10. Before asking for review, do a lightweight verification pass on the intended mode:
   - launcher routes open the active files
   - dense cards, chips, labels, and grids still read cleanly on the target viewport
   - the artifact stays reviewable without collapsing into accidental full-page zoom-out
11. If the canonical HTML file cannot carry routing metadata, update the nearby wrapper note or trusted artifact index entry that records the screen-spec role and canonical path.
12. Produce a short review brief that names:
   - the UI change classification
   - the primary review mode
   - in-scope screens or flows
   - the canonical artifact paths
   - the intended design direction
   - any important constraints
13. For review-approved work, leave behind a handoff-minimum summary near the review output or in the brief itself:
   - primary user goal
   - layout structure
   - primary and secondary actions
   - empty, loading, success, and error states when relevant
   - responsive constraints that implementation should preserve
   - unresolved questions that still block clean coding
14. Stop at the design-review gate. Do not treat artifact creation as approval, and do not jump into production implementation unless the workflow already has direction approval.

## Replacement path

- Use `ui-design-intelligence` as the normal primary owner for new UI/frontend work, including demos, artifacts, implementation, and verification.
- Keep this skill only when the project explicitly needs legacy `demos/screens/` continuity.

## Boundaries

- Keep artifact fidelity at "reviewable and implementable"; do not overbuild a production-like prototype unless the task truly needs it.
- Keep the skill thin: it should scaffold artifact work, not restate the full policy baseline that lives in the broader Context OS workflow.
- Do not invent new policy, trust rules, or artifact taxonomies inside the skill.
- Do not replace story, checklist, or decision artifacts with one generic HTML file.
- If implementation materially changes the approved direction later, update the canonical artifact or mark the old one superseded.

## Output shape

When this skill runs successfully, leave behind:

- an explicit UI change classification
- an explicit primary review mode when review artifacts were required
- current canonical artifact paths under `demos/screens/`
- an updated `demos/screens/index.html` when the active set changed
- a short review brief ready for user approval
- a handoff-minimum summary when the review direction is approved enough that implementation may start next
