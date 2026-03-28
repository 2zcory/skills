---
name: "html-ui-art-director"
description: "Use when a UI or UX task needs a stronger HTML-first design artifact with clear art direction, modern layout judgment, icon and asset strategy, and built-in critique against generic rounded-card output. Use it when the user wants sharper visual taste, stronger UX sensitivity, and a reviewable HTML/CSS direction before production implementation."
---

# HTML UI Art Director

Use this skill when the output should be a stronger HTML-first UI artifact rather than a vague visual prompt or a generic component stack.

Keep this file focused on the operating model. Load only the reference files the task needs:

- `references/request-intake.md` for classifying the product, user posture, trust needs, and asset availability before choosing a direction.
- `references/visual-languages.md` for selecting a visual language and surface treatment.
- `references/layout-patterns.md` for choosing a layout archetype from the screen job.
- `references/layout-selection-rubric.md` for deciding which layout archetype actually fits the request.
- `references/asset-and-icon-strategy.md` for icons, logos, imagery, and placeholder handling.
- `references/anti-patterns.md` for critique and quality control.
- `references/design-critique-rubric.md` for scoring hierarchy, layout quality, and anti-generic strength.
- `references/html-output-contract.md` for the output structure and implementation contract.
- `references/output-template.md` for the preferred response shape when presenting the artifact and rationale.
- `references/demo-archetypes.md` for choosing the closest bundled demo artifact as a quality reference.

When the task needs a concrete quality bar for HTML output, inspect the demo artifacts under `assets/` and adapt the closest one instead of defaulting to generic blocks.

## Use this skill when

- The user wants modern HTML/CSS UI output instead of generic mockup prose.
- Current design work keeps repeating the same rounded-card or stacked-dashboard motif.
- The screen needs stronger art direction, visual identity, or composition.
- The task needs explicit icon, logo, image, or placeholder strategy.
- The user wants the model to show better taste in layout, hierarchy, and restraint.
- A reviewable design artifact should exist before frontend implementation.

Do not use this skill for tiny one-off styling tweaks unless those tweaks are part of a broader surface reset.

## Goal

Produce a reviewable HTML-first design artifact that is:

- visually distinct
- structurally intentional
- UX-aware
- asset-aware
- responsive
- critique-checked

The skill should improve design judgment, not just styling density.

## Core operating rule

Do not begin with components.

Start with:

1. the screen's real job
2. the next user decision
3. the right visual language
4. the right layout archetype
5. the right asset strategy

Only then choose markup and styling.

## Workflow

1. State the screen or flow job in one sentence.
   Use `references/request-intake.md` when the request is under-specified.
2. Identify the target feeling:
   - trusted
   - fast
   - premium
   - calm
   - exploratory
   - powerful
   - editorial
3. Choose one visual language, not a vague blend.
4. Choose the layout archetype from the screen job instead of defaulting to stacked cards.
   Use `references/layout-selection-rubric.md` when the choice is unclear.
5. Rank the surfaces:
   - hero
   - orientation
   - action
   - support
   - quiet space
6. Decide the asset strategy:
   - icons required or not
   - logo present, absent, or placeholder slot
   - imagery required, abstracted, or intentionally omitted
7. Run a UX sensitivity check:
   - what should the user notice first
   - what decision should feel easiest
   - what should be quieter
   - what should be removed instead of decorated
8. Build the HTML-first output using the contract in `references/html-output-contract.md`.
9. If the task is under-specified, use the closest demo artifact under `assets/` as a structural quality reference, then adapt it to the product instead of copying it blindly.
10. Run a critique pass using `references/anti-patterns.md`.
11. Score the result with `references/design-critique-rubric.md`.
12. End with a compact rationale:
   - chosen visual language
   - chosen layout archetype
   - asset strategy
   - anti-patterns avoided
   - critique score
   - next implementation note if needed
   Use `references/output-template.md` when presenting the result.

## Mandatory decisions

Before outputting HTML, explicitly decide:

- visual language
- layout archetype
- why this layout archetype beats the nearest alternative
- dominant surface
- radius policy
- shadow policy
- icon policy
- image policy
- background treatment
- responsive behavior

If any of these stay implicit, the result usually drifts back to generic UI.

If the layout choice cannot be defended in one or two sentences, the skill should pause and re-evaluate the screen job before generating HTML.

## Design stance

- Prefer one authored direction over blended indecision.
- Prefer composition over card count.
- Prefer hierarchy over ornament.
- Prefer restraint over default decoration.
- Prefer image slots with purpose over random stock-like filler.
- Prefer explicit absence over weak fake assets.
- Prefer clear icon systems over mixed icon noise.

## HTML-first output expectations

- Output should usually be an artifact made of `index.html`, `styles.css`, and optional `script.js`.
- HTML structure should reflect information hierarchy, not only visual grouping.
- CSS should define variables for type, spacing, color, radius, and shadow policy.
- Use motion only for entry, orientation, or meaningful interaction feedback.
- Include hover, focus, and responsive behavior when the task is interactive.
- When no project design system is provided, the artifact should still meet the quality bar implied by the demo artifacts in `assets/`.

## Critique pass

Before finalizing, check for:

- repeated card soup
- weak first-view hierarchy
- over-rounded surfaces without rationale
- decorative shadows without structural value
- icon overuse
- imagery with no trust or orientation benefit
- too many equal-weight sections
- generic hero copy with no product signal
- mobile collapse that destroys hierarchy

If two or more appear, revise the layout or visual language before presenting the result.

## Pairing guidance

- Pair with `ui-screen-review` when a durable review artifact must be created in a private project `-ctx` repo.
- Pair with `ui-ux-promax` when the chosen direction needs a stronger premium finish after the layout and art direction are already clear.
- Pair with `frontend-screen-implementation` after the HTML artifact is approved and implementation should move into production code.
- Pair with `dialectical-review` when two competing design directions are both plausible and the contradiction needs synthesis first.

## Output shape

Prefer compact outputs that contain:

- screen job
- chosen visual language
- chosen layout archetype
- why this archetype was chosen
- hero versus support split
- icon and asset strategy
- HTML artifact files
- critique summary
- critique score
- implementation note when relevant

## Boundaries

- Do not treat every surface as a card.
- Do not let radius style become the whole visual identity.
- Do not add icons, images, or logos without role clarity.
- Do not fake “premium” through blur, glow, or gradients alone.
- Do not skip critique just because the first render looks polished.
- Do not replace project-specific product requirements with style preference.
