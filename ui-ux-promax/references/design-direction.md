# Design Direction

Use this reference when the task needs stronger composition, visual identity, image strategy, or motion language.

## Composition-first rules

- Start with visual mass, not cards.
- Classify the screen into `dominant`, `support`, and `quiet` zones.
- If the support zone is visually weak, either merge it into the main composition or replace the layout architecture.
- Do not keep a two-column layout just because it is convenient.
- Treat whitespace as an active surface that creates contrast, pacing, and emphasis.

## Mode patterns

### `surface-polish`

Use when the structure is basically correct but the screen still feels generic or flat.

- Keep the layout architecture.
- Reduce competing emphasis.
- Strengthen one hero region and calm the rest.
- Tighten typography, spacing, and motion before adding new sections.

Example pattern:

- Before: 6 equally loud cards, repeated icon chips, multiple medium-weight CTAs
- After: 1 dominant entry surface, 1 snapshot strip, quieter supporting cards, 1 truly primary CTA

### `composition-reset`

Use when spacing, asymmetry, or support areas feel wrong at a structural level.

- Re-evaluate the whole first viewport.
- Decide whether the screen wants one mass, split masses, or layered overlays.
- Remove weak columns rather than re-skinning them.
- Rebuild the rhythm of section transitions.

Example pattern:

- Before: hero left, thin rail right, both technically balanced but visually dead
- After: one poster-led composition with integrated support signals, or a denser asymmetric split where both sides carry visual weight

### Quick diagnostic

Choose `composition-reset` over `surface-polish` if two or more are true:

- the user complains about emptiness rather than color or spacing
- the right rail or secondary column keeps failing after multiple tweaks
- every section becomes a card
- stats, images, or charts feel bolted on
- the screen reads like stacked components instead of one authored surface

## Homepage and premium surface heuristics

- A premium homepage usually needs one clearly authored first impression, not several equal-intensity blocks.
- If the top of the page feels like a dashboard, remove or merge surfaces before restyling them.
- Use 2-3 compositional anchors per viewport at most.
- Reduce repeated card anatomy when the page needs an editorial or gallery feel.
- Use asymmetry only when the lighter side still has clear visual purpose.

## Typography and rhythm

- Let typography carry authority before adding more decoration.
- Large type should create a focal point, not flatten the rest of the layout.
- Tighten spacing around strong signals; open spacing around quiet zones.
- Repeated headings should step down in scale quickly so sections do not compete with the hero.

Pattern example:

- Hero title: one strong move
- Section titles: one quick step down
- Card titles: clearly subordinate

If card titles start to compete with section titles, the type scale is wrong, not just "too big."

## Imagery

- Images should have a job:
  - identity
  - atmosphere
  - evidence
  - navigation
- Prefer one strong image strategy over many unrelated images.
- Crop for tension and composition, not completeness.
- If the image does not improve hierarchy or mood, remove it.

Example strategies:

- `poster anchor`: one large cropped image carrying atmosphere in the first viewport
- `evidence fragments`: small supporting images for notes, projects, or essays
- `material texture`: grain, paper, scan, or environmental fragments used as surface material instead of standalone photos

Avoid mixing all three without a clear hierarchy.

## Motion

- Define one signature motion pattern for the screen.
- Add supporting motion only where it improves orientation, continuity, or feedback.
- Avoid ambient looping motion across many surfaces.
- Keep `prefers-reduced-motion` support when motion is not purely decorative.

Example motion contracts:

- `editorial reveal`: one curtain or mask reveal on entry, then mostly still
- `signal scan`: one sweep, node pulse, or line trace that explains navigation or data orientation
- `gallery drift`: one slow image drift with subtle supporting fades

If three different motion ideas compete in the first viewport, cut back to one signature and one support motion.

## Professional signals

- Stats, counters, and charts should justify their presence through credibility or wayfinding.
- Do not bolt metrics onto the screen just to look "serious."
- If a signal board exists, integrate it into the main composition or remove it.
- Small charts should read as clean instruments, not miniature dashboards.

Example pattern:

- Good: a compact signal board that explains scale, cadence, or activity at a glance
- Bad: three decorative counters and a chart inserted into a weak side rail with no compositional role
