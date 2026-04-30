---
name: "frontend-studio"
description: "Primary frontend skill for owning UI work end to end: design direction, artifacts, implementation, motion or asset choices, and practical verification without falling into generic output."
---

# Frontend Studio

Use this skill when the task needs one primary owner for UI or frontend work across the full path:

- retrieval-backed direction setting
- durable artifact or demo creation
- HTML/CSS/JS or framework implementation
- icon, image, and animation strategy
- practical verification, including unit-test thinking when warranted

This skill is now the normal first-entry owner for UI and frontend work. Retrieval is still part of the method, but it is no longer the limit of the skill.

Load the bundled search engine only when needed. Do not dump raw catalog output into the user response when a short synthesis is enough.

`frontend-studio` is the real-task owner, not the training lab. When repeated work exposes a reusable weakness, recurring failure shape, or a lesson that needs benchmark pressure before it becomes durable guidance, route that improvement work into the private `ui-ux-lab` loop instead of bloating this skill's normal task flow.

## Use this skill when

- The user asks what visual direction fits a product, audience, or industry.
- A screen, route, or product surface needs structured inspiration instead of generic prompting.
- A durable demo, reviewable artifact, or HTML-first concept should be created or revised.
- The chosen direction should be implemented into frontend code.
- The task needs icon, image, placeholder, or motion direction and possibly code.
- The frontend change needs explicit quality checks or targeted unit tests.
- A UI review would benefit from retrieval-backed critique before or during implementation.

## Do not use this skill when

- The task is purely backend, infrastructure, or non-UI architecture.
- The main contradiction is between materially different product or design directions and should be synthesized first. Use `dialectical-review`.
- The task is a tiny one-off visual tweak that does not need retrieval.
- The user explicitly asks for a narrower specialist lens instead of one end-to-end UI owner.

## Core rule

Treat this skill as the primary UI/frontend owner, but do not let that become vague omnibus behavior.

The correct operating model is:

- choose the direction with evidence
- generate or revise the artifact that expresses that direction
- implement the direction cleanly
- verify the user-facing result proportionally

When a surface feels equally loud, crowded, or accidentally dense, restore structure before adding visual polish:

- separate primary, main, and support regions
- allow a bounded near-primary alert band only when urgency is real
- increase spacing between groups more than spacing inside groups
- compress mobile by task priority rather than by inherited desktop order

For compact UI, never compress density mechanically just because the surface is small:

- every visible token must still self-explain its role without relying on a tooltip
- the primary row belongs to the primary content, not to support metadata unless that metadata is the actual task cue
- hover-only or hidden controls must not permanently reserve layout space
- saved space is not a win if it reappears as ambiguity, duplication, or dead space elsewhere

When using imagery, prefer meaning control over image convenience:

- use an image only when its content meaning is understood and defensible for the screen's job
- prefer omission to weak, generic, or only atmospherically relevant images
- do not treat a visually convenient reference as proof unless it actually reduces uncertainty about the product or the next user action

Do not override an approved design system or project constraint, but do not artificially split the job across several UI skills when one coherent pass would be better.

## Modes

- `direction`
  Use for style, palette, typography, product-fit, landing pattern, chart, or UX direction selection.
- `artifact`
  Use for durable demos, reviewable HTML artifacts, launcher updates, or stronger visual direction output.
- `implementation`
  Use for frontend code work after the direction is selected or while direction and code need to evolve together.
- `motion-and-assets`
  Use for icon role, image role, placeholder strategy, animation role, reduced-motion, and motion implementation decisions.
- `verification`
  Use for UX, accessibility, responsive, and practical unit-test or behavior verification.

## Workflow

1. State the real design question:
   - direction
   - artifact
   - implementation
   - motion and assets
   - verification
2. Choose the narrowest mode:
   - `direction`
   - `artifact`
   - `implementation`
   - `motion-and-assets`
   - `verification`
3. Run the minimum useful query against the bundled dataset instead of freehand guessing.
4. Synthesize the retrieved result with project-local context:
   - existing tokens
   - approved screens
   - product requirements
   - platform constraints
5. If the surface feels crowded, equally weighted, or generic, fix the structure before styling it:
   - decide what is primary, what belongs in the main working region, and what should become a quieter support region
   - let urgent content rise near the top only when it genuinely changes the operator's next action
   - make mobile ordering follow task priority instead of desktop inheritance
6. If the task involves icons, imagery, or placeholders, make the asset decision explicit before adding or changing assets:
   - what role the asset serves: status, wayfinding, proof, orientation, tone, or none
   - whether omission is stronger than a weak or generic asset
   - whether the asset's content meaning is understood and defensible for this screen
7. Decide the next concrete output:
   - recommendation only
   - artifact update
   - code change
   - motion or asset contract
   - verification pass
8. Execute the lightest end-to-end pass that resolves the task instead of stopping at prose if artifact or code output is the real need.
9. Before close-out on an existing UI, run a short adversarial self-review:
   - what the eye lands on first
   - what each badge, chip, or control communicates without tooltip
   - whether any compacting move displaced ambiguity or dead space instead of removing it
10. Return a compact result:
   - chosen mode
   - what fits
   - why it fits
   - what was created or changed
   - what to avoid
   - what the next verification or implementation step should be

## Relation To UI UX Lab

- Use `frontend-studio` for real project work: direction, artifact, implementation, assets, and verification.
- Use `ui-ux-lab` only for skill-improvement work behind the production path.
- Open `ui-ux-lab` when a lesson needs repeated validation, a benchmark, or a named anti-pattern before it should influence production guidance.
- Do not route routine product delivery into `ui-ux-lab`.
- Do not turn `frontend-studio` itself into a warehouse of half-proven lessons.

## Commands

Run the bundled search tool from the runtime skill path:

```bash
python3 ~/.codex/skills/frontend-studio/scripts/search.py "<query>" --domain <domain>
python3 ~/.codex/skills/frontend-studio/scripts/search.py "<query>" --stack <stack>
python3 ~/.codex/skills/frontend-studio/scripts/search.py "<query>" --design-system -f markdown
```

Prefer targeted domain or stack searches first. Use `--design-system` only when the user really needs an initial direction pack.

## Query patterns

- product-fit direction:
  `python3 ~/.codex/skills/frontend-studio/scripts/search.py "fintech dashboard trust premium" --domain product`
- style lookup:
  `python3 ~/.codex/skills/frontend-studio/scripts/search.py "editorial portfolio monochrome" --domain style`
- palette lookup:
  `python3 ~/.codex/skills/frontend-studio/scripts/search.py "health wellness calming" --domain color`
- typography lookup:
  `python3 ~/.codex/skills/frontend-studio/scripts/search.py "luxury editorial serif" --domain typography`
- UX review support:
  `python3 ~/.codex/skills/frontend-studio/scripts/search.py "form accessibility loading feedback" --domain ux`
- stack guidance:
  `python3 ~/.codex/skills/frontend-studio/scripts/search.py "suspense streaming caching" --stack nextjs`

## Pairing guidance

- Pair with `dialectical-review` first when two materially different directions are both plausible and the contradiction should be resolved before more UI work.
- Pair with `web-testing-strategy` only when a broader product-risk testing plan is explicitly needed beyond this skill's normal verification pass.

## Domains

- `product`
- `style`
- `color`
- `typography`
- `landing`
- `chart`
- `ux`
- `icons`
- `react`
- `web`
- `google-fonts`

## Stacks

- `react`
- `nextjs`
- `vue`
- `svelte`
- `astro`
- `swiftui`
- `react-native`
- `flutter`
- `nuxtjs`
- `nuxt-ui`
- `html-tailwind`
- `shadcn`
- `jetpack-compose`
- `threejs`
- `angular`
- `laravel`

## Implementation Tips

- **Sidepanels & Constrained UI:** Every pixel counts. Prefer `rounded-2xl` over massive radii to maximize usable content area. Tighten `gap` and `padding` incrementally until focus is purely on the primary content cards.
- **Smart Motion:** 
  - Use **Overflow-aware Marquees**: Only trigger title scrolling when the text actually overflows its container using `useRef` measurements.
  - Use **Adaptive Durations**: Calculate marquee duration based on text length (`duration = length / speed`) to maintain constant reading speed.
- **React-driven Indicators:** For sliding tabs or nav menus that need to "travel," prefer React `ref` measurements and dynamic `left`/`width` styles over pure CSS `:has()` or static selectors for 100% reliability in Extension environments.
- **Invisible Scrolling:** For horizontal icon ribbons, hide scrollbars and implement wheel-to-horizontal scrolling (`onWheel` event) for a premium feel.

## Output shape

Prefer compact outputs such as:

- chosen mode
- best-fit recommendation or findings
- rationale grounded in retrieved results
- artifacts or files created or changed when relevant
- anti-patterns or constraints
- whether to keep, adapt, or reject the suggested direction
- implementation or verification note when relevant
- next step for review, coding, or validation

## Boundaries

- Do not let retrieved suggestions override an approved project direction.
- Do not present generated design systems as canonical without review.
- Do not stop at recommendation prose when the real task is artifact or code ownership.
- Do not dump raw search output without synthesis.
- Do not turn \"end-to-end\" into careless overbuilding; choose the lightest output that fully resolves the task.
