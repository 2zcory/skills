---
name: "ui-design-intelligence"
description: "Use when a UI or UX task needs data-backed design recommendations instead of taste-only prompting. Helpful for choosing product-fit styles, color directions, typography pairings, landing patterns, chart choices, UX checks, and stack-specific guidance before review, handoff, or implementation. Best for early direction setting, retrieval-backed UI review, and cross-industry inspiration without overriding an existing project design system."
---

# UI Design Intelligence

Use this skill when the task needs retrieval-backed design judgment from a bundled catalog of UI styles, color palettes, typography pairings, product patterns, charts, UX guidelines, and stack notes.

This skill complements the existing design pipeline:

- use this skill for recommendation, lookup, and retrieval-backed review
- use `ui-screen-review` for durable review artifacts
- use `html-ui-art-director` for stronger HTML-first concept direction
- use `ui-ux-promax` when an accepted direction still needs premium refinement
- use `design-to-frontend-handoff` or `frontend-screen-implementation` after direction is accepted

Load the bundled search engine only when needed. Do not dump raw catalog output into the user response when a short synthesis is enough.

## Use this skill when

- The user asks what visual direction fits a product, audience, or industry.
- A screen needs structured inspiration instead of generic prompting.
- You want a quick style, palette, typography, landing, chart, or UX recommendation with supporting retrieval.
- A UI review would benefit from a retrieval-backed checklist.
- The task needs stack-specific frontend guidance from a bundled reference set.

## Do not use this skill when

- The project already has an approved design direction and only needs polish. Use `ui-ux-promax`.
- The project workflow requires a durable design review artifact first. Use `ui-screen-review`.
- The task is a tiny one-off visual tweak that does not need retrieval.
- The user needs implementation only and the direction is already approved.

## Core rule

Treat this skill as decision support, not as an authority that overrides the repository's existing design system, product constraints, or approved UI review artifacts.

## Modes

- `recommend`
  Use for style, palette, typography, product-fit, landing pattern, or chart selection.
- `review`
  Use for retrieval-backed UX, accessibility, or UI quality checks.
- `stack-guidance`
  Use for stack-specific frontend heuristics after the product direction is known.

## Workflow

1. State the real design question:
   - product-fit direction
   - UI review
   - stack guidance
2. Choose the narrowest mode:
   - `recommend`
   - `review`
   - `stack-guidance`
3. Run the minimum useful query against the bundled dataset instead of freehand guessing.
4. Synthesize the retrieved result with project-local context:
   - existing tokens
   - approved screens
   - product requirements
   - platform constraints
5. Return a compact recommendation:
   - what fits
   - why it fits
   - what to avoid
   - what the next design or implementation step should be

## Commands

Run the bundled search tool from the runtime skill path:

```bash
python3 ~/.codex/skills/ui-design-intelligence/scripts/search.py "<query>" --domain <domain>
python3 ~/.codex/skills/ui-design-intelligence/scripts/search.py "<query>" --stack <stack>
python3 ~/.codex/skills/ui-design-intelligence/scripts/search.py "<query>" --design-system -f markdown
```

Prefer targeted domain or stack searches first. Use `--design-system` only when the user really needs an initial direction pack.

## Query patterns

- product-fit direction:
  `python3 ~/.codex/skills/ui-design-intelligence/scripts/search.py "fintech dashboard trust premium" --domain product`
- style lookup:
  `python3 ~/.codex/skills/ui-design-intelligence/scripts/search.py "editorial portfolio monochrome" --domain style`
- palette lookup:
  `python3 ~/.codex/skills/ui-design-intelligence/scripts/search.py "health wellness calming" --domain color`
- typography lookup:
  `python3 ~/.codex/skills/ui-design-intelligence/scripts/search.py "luxury editorial serif" --domain typography`
- UX review support:
  `python3 ~/.codex/skills/ui-design-intelligence/scripts/search.py "form accessibility loading feedback" --domain ux`
- stack guidance:
  `python3 ~/.codex/skills/ui-design-intelligence/scripts/search.py "suspense streaming caching" --stack nextjs`

## Pairing guidance

- Pair with `ui-screen-review` when a screen-level change needs a durable artifact in a project `-ctx` repository before implementation.
- Pair with `html-ui-art-director` when retrieved direction should turn into a reviewable HTML artifact.
- Pair with `ui-ux-promax` after the broad direction is already accepted and the remaining job is premium refinement, hierarchy tightening, or execution polish.
- Pair with `design-to-frontend-handoff` or `frontend-screen-implementation` only after the chosen direction is stable enough to implement.

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

## Output shape

Prefer compact outputs such as:

- chosen mode
- best-fit recommendation or findings
- rationale grounded in retrieved results
- anti-patterns or constraints
- whether to keep, adapt, or reject the suggested direction
- next step for review, handoff, or implementation

## Boundaries

- Do not let retrieved suggestions override an approved project direction.
- Do not present generated design systems as canonical without review.
- Do not use this skill as a substitute for real UI critique when the task is screen-specific and high-stakes.
- Do not dump raw search output without synthesis.
