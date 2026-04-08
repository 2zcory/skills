---
name: "ui-ux-promax"
description: "Use when a UI or UX task needs a stronger premium direction with clearer hierarchy, richer visuals, better composition, and more purposeful motion while still staying disciplined, scannable, and product-correct. Use it to improve design direction, HTML/CSS/JS execution quality, UI library choices, and modern frontend presentation without collapsing into generic templates or decorative excess."
---

# UI UX Pro Max

Deprecated public UI skill.

Primary replacement path:

1. use `ui-design-intelligence` when the direction is still unclear
2. use `html-ui-art-director` when the artifact or layout direction still needs to be generated or reset

Keep this skill only as a temporary compatibility bridge while its strongest premium-refinement guidance is being absorbed into the surviving core UI path.

Use this skill when a screen, flow, or product surface should feel more premium and more intentional without becoming noisy, bloated, or visually confused.

Keep this file focused on the operating model. Load reference files only when the task needs deeper guidance:

- `references/design-direction.md` for composition, visual mass, premium hierarchy, imagery, motion, and homepage art direction.
- `references/frontend-execution.md` for HTML/CSS/JS execution rules and implementation heuristics.
- `references/ui-library-strategy.md` for deciding whether to use, avoid, or adapt a UI library or design system.

## Use this skill when

- The user wants the UI to feel more premium, more visual, more polished, or more "pro max".
- A screen feels too generic, too flat, or too dashboard-like.
- The current design has weak hierarchy even if the feature logic is correct.
- Motion exists or is desired, but it needs stronger purpose and restraint.
- A product surface needs to look richer while still optimizing for clarity and fast decision-making.
- A homepage, landing page, portfolio, or editorial-style surface needs stronger composition and modern presentation.
- HTML, CSS, JS, and component choices are technically fine but visually ordinary.
- The team is over-relying on a UI library and needs stronger product-specific direction.

Do not use this skill for tiny polish requests such as one spacing tweak, one color tweak, or one icon swap unless those changes are part of a larger direction shift.
Do not use this skill as the first artifact generator when the task still lacks a clear layout archetype or authored HTML direction; route to `html-ui-art-director` first when the base artifact does not exist yet.
Do not choose this as a first-choice public UI skill when the three-core path already covers the task.

## Goal

Upgrade the experience toward disciplined premium UX:

- one strong path at a time
- richer hero surfaces
- calmer support surfaces
- purposeful motion
- less clutter, not more
- stronger composition, not just prettier components
- frontend execution that matches the design intent

## Modes

Pick the narrowest fitting mode for the task:

- `surface-polish`
  Use for stronger hierarchy, calmer support areas, tighter motion, and premium refinement on an existing screen.
- `composition-reset`
  Use when the real problem is visual mass, layout architecture, whitespace, or dominant-versus-support balance.
- `frontend-execution`
  Use when the design direction is acceptable but the HTML/CSS/JS implementation quality is too generic or too weak.
- `ui-library-governance`
  Use when a UI library or design system is helping speed but hurting product character, hierarchy, or composition.

## Mode selection matrix

Use the first strong match. If two modes still apply, name the primary mode and one secondary mode explicitly.

- Choose `surface-polish` when:
  - the layout architecture is mostly working
  - the problem is emphasis, density, rhythm, or generic visual treatment
  - one or two rounds of visual refinement are likely enough
- Choose `composition-reset` when:
  - emptiness, imbalance, or weak support mass keeps recurring
  - the first viewport feels structurally wrong, not merely under-styled
  - the page reads like stacked components instead of one authored composition
- Choose `frontend-execution` when:
  - the direction is accepted but the implementation looks generic or fragile
  - HTML hierarchy, CSS rhythm, interaction states, or motion execution are the bottleneck
  - the task needs concrete implementation guidance or code changes
- Choose `ui-library-governance` when:
  - a library is accelerating delivery but flattening product identity
  - the team is fighting theme defaults, card anatomy, or token drift
  - the real decision is whether to keep, override, limit, or bypass the library

Escalate from `surface-polish` to `composition-reset` if two polish rounds fail to resolve the same spatial complaint.

## Core rule

Do not confuse "premium" with "more stuff."

The correct direction is usually:

- fewer competing surfaces
- sharper hierarchy
- stronger top-of-screen focus
- better pacing
- motion that explains state instead of decorating emptiness
- structure before ornament
- composition before component count

## Workflow

1. State the real UX job of the screen or flow.
2. Choose the mode:
   - `surface-polish`
   - `composition-reset`
   - `frontend-execution`
   - `ui-library-governance`
3. Identify the current contradiction:
   - premium versus clarity
   - motion versus speed
   - information richness versus scanability
   - app-first focus versus utility clutter
   - composition versus convenience
   - library default versus product identity
4. Separate the surface into:
   - hero surfaces
   - orientation or snapshot surfaces
   - support or utility surfaces
   - quiet space
5. Re-rank those surfaces:
   - make the hero more dominant
   - simplify or calm support surfaces
   - remove duplicate or near-duplicate actions
   - merge, dissolve, or delete weak surfaces instead of endlessly restyling them
6. Apply progressive disclosure:
   - keep the first screen region focused on the next decision
   - move secondary detail into rails, sheets, accordions, `+N more`, or later screens
7. Define a motion contract:
   - orientation motion for entry
   - continuity motion for next-step flow
   - feedback motion for meaningful progress
   - signature motion for high-impact surfaces only
   - avoid idle looping motion unless it serves a clear purpose
8. Tighten the copy:
   - shorter labels
   - less explanatory filler
   - more state shown through hierarchy and component design
9. If implementation is in scope, map the direction into frontend execution:
   - HTML structure that reflects information hierarchy
   - CSS that uses spacing, scale, and rhythm intentionally
   - JS only when interaction or motion needs state or sequencing
   - UI library usage only when it helps velocity without flattening the product
10. End with a concrete direction:
   - what becomes stronger
   - what becomes quieter
   - what gets removed, merged, or deferred
   - what mode owns the next step

## Heuristics

- Premium should concentrate at the top of the screen, not spread evenly across everything.
- If every card tries to be important, nothing feels premium.
- If a screen can answer the next decision in one viewport, prefer that over stacking many sections.
- Motion should usually happen once on entry or at meaningful state changes, not pulse forever.
- Keep one primary CTA truly primary.
- Prefer "hero + snapshot + one action" over mini-dashboard layouts.
- If a support area competes with the study or task path, calm it down.
- If a support area remains weak after two rounds, question the layout architecture instead of polishing the card again.
- For premium homepage work, treat whitespace as active composition, not spare room to fill or trim mechanically.
- Do not add charts, counters, or imagery unless they improve structure, credibility, or orientation.
- Avoid UI-library default anatomy when the screen needs a distinct authored feel.

## Reference loading guidance

- Load `references/design-direction.md` when the task involves art direction, homepage layout, composition, motion identity, statistics boards, imagery, or modern premium visual language.
- Load `references/frontend-execution.md` when the task requires converting direction into HTML/CSS/JS, improving implementation quality, or avoiding generic markup and styling.
- Load `references/ui-library-strategy.md` when the task involves evaluating `shadcn/ui`, MUI, Chakra, Ant Design, Radix-based stacks, or an existing design system.
- Load only the needed reference files. Do not pull all three unless the task genuinely spans all three domains.

## Pairing guidance

- Use `ui-design-intelligence` first when the task needs retrieval-backed direction, product-fit style selection, or structured inspiration before premium refinement begins.
- Use this skill together with `ui-screen-review` when the work needs a durable screen or flow artifact in a project `-ctx` repository.
- Use this skill with `dialectical-review` when the design is cycling across competing layout or visual directions and needs a synthesis before another implementation round.
- Use this skill before implementation when the direction of the screen still feels visually weak, cluttered, or inconsistent.
- Use project-local product or workflow context as the source of truth; this skill improves direction, not policy.

## Expected output shape

Prefer compact outputs such as:

- chosen mode
- the screen's real job
- the core contradiction
- what should be hero versus support
- whether the layout architecture should be kept or reset
- what should be removed or compressed
- the motion role
- the visual direction
- implementation implications for HTML/CSS/JS or library use when relevant
- the next review or implementation step

## Boundaries

- Do not turn premium UX into decorative excess.
- Do not let this skill replace first-pass artifact generation when the screen still needs a defended layout choice and authored HTML direction.
- Do not replace product requirements with visual taste.
- Do not make motion heavier than the task justifies.
- Do not duplicate project-local UI workflow or policy.
- Do not skip durable review artifacts when the project workflow requires them.
- Do not treat a UI library as the design.
- Do not let this skill expand into a full frontend architecture skill; stay focused on the user-facing surface.
