---
name: "ui-ux-promax"
description: "Use when a UI or UX task needs a stronger premium direction with clearer hierarchy, richer visuals, and more purposeful motion, but still must stay disciplined, scannable, and product-correct. Re-rank hero versus support surfaces, reduce dashboard-like clutter, use progressive disclosure, and make motion serve orientation, continuity, and feedback rather than decoration."
---

# UI UX Pro Max

Use this skill when a screen, flow, or product surface should feel more premium and more intentional without becoming noisy, bloated, or visually confused.

## Use this skill when

- The user wants the UI to feel more premium, more visual, more polished, or more "pro max".
- A screen feels too generic, too flat, or too dashboard-like.
- The current design has weak hierarchy even if the feature logic is correct.
- Motion exists or is desired, but it needs stronger purpose and restraint.
- A product surface needs to look richer while still optimizing for clarity and fast decision-making.

Do not use this skill for tiny polish requests such as one spacing tweak, one color tweak, or one icon swap unless those changes are part of a larger direction shift.

## Goal

Upgrade the experience toward disciplined premium UX:

- one strong path at a time
- richer hero surfaces
- calmer support surfaces
- purposeful motion
- less clutter, not more

## Core rule

Do not confuse "premium" with "more stuff."

The correct direction is usually:

- fewer competing surfaces
- sharper hierarchy
- stronger top-of-screen focus
- better pacing
- motion that explains state instead of decorating emptiness

## Workflow

1. State the real UX job of the screen or flow.
2. Identify the current contradiction:
   - premium versus clarity
   - motion versus speed
   - information richness versus scanability
   - app-first focus versus utility clutter
3. Separate the surface into:
   - hero surfaces
   - orientation or snapshot surfaces
   - support or utility surfaces
4. Re-rank those surfaces:
   - make the hero more dominant
   - simplify or calm support surfaces
   - remove duplicate or near-duplicate actions
5. Apply progressive disclosure:
   - keep the first screen region focused on the next decision
   - move secondary detail into rails, sheets, accordions, `+N more`, or later screens
6. Define a motion contract:
   - orientation motion for entry
   - continuity motion for next-step flow
   - feedback motion for meaningful progress
   - avoid idle looping motion unless it serves a clear purpose
7. Tighten the copy:
   - shorter labels
   - less explanatory filler
   - more state shown through hierarchy and component design
8. End with a concrete direction:
   - what becomes stronger
   - what becomes quieter
   - what gets removed, merged, or deferred

## Heuristics

- Premium should concentrate at the top of the screen, not spread evenly across everything.
- If every card tries to be important, nothing feels premium.
- If a screen can answer the next decision in one viewport, prefer that over stacking many sections.
- Motion should usually happen once on entry or at meaningful state changes, not pulse forever.
- Keep one primary CTA truly primary.
- Prefer "hero + snapshot + one action" over mini-dashboard layouts.
- If a support area competes with the study or task path, calm it down.

## Pairing guidance

- Use this skill together with `ui-screen-review` when the work needs a durable screen or flow artifact in a project `-ctx` repository.
- Use this skill before implementation when the direction of the screen still feels visually weak, cluttered, or inconsistent.
- Use project-local product or workflow context as the source of truth; this skill improves direction, not policy.

## Expected output shape

Prefer compact outputs such as:

- the screen's real job
- the core contradiction
- what should be hero versus support
- what should be removed or compressed
- the motion role
- the visual direction
- the next review or implementation step

## Boundaries

- Do not turn premium UX into decorative excess.
- Do not replace product requirements with visual taste.
- Do not make motion heavier than the task justifies.
- Do not duplicate project-local UI workflow or policy.
- Do not skip durable review artifacts when the project workflow requires them.
