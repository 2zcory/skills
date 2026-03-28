# UI Library Strategy

Use this reference when deciding how a UI library or design system should influence the screen.

## Core rule

A UI library is a production accelerant, not the product's visual identity.

## When a library helps

- You need accessible primitives quickly.
- The screen is operational, data-heavy, or app-like.
- The team needs consistency more than novelty.
- The visual direction is already defined and the library is only providing parts.

## When a library hurts

- The homepage or landing page needs a distinct authored feel.
- Every surface inherits the same card, button, and spacing defaults.
- The team is accepting library anatomy instead of designing hierarchy.
- The result looks interchangeable with many other products.

## Practical guidance

- Use primitives, not full visual defaults, for premium surfaces.
- Override spacing, radius, type scale, elevation, and component density early.
- Keep the design system for repeatable internals; allow custom composition for flagship surfaces.
- If the library fights the intended composition, bypass it for that surface.

## Decision framework

Evaluate the library against all five factors before recommending keep, override, or bypass:

1. `identity fit`
   - is the library appearance close enough to the intended product language
2. `velocity gain`
   - how much implementation speed the team actually gains
3. `override cost`
   - how much custom CSS, theming, or wrapper code is needed to get the intended result
4. `maintenance burden`
   - whether the team can realistically sustain those overrides over time
5. `surface criticality`
   - whether this is a flagship surface or a repeatable internal surface

Recommendation rule:

- Keep the library mostly as-is when velocity gain is high, identity fit is acceptable, and the surface is not flagship-critical.
- Use primitives only when behavior is useful but appearance is fighting the product.
- Bypass the library on a flagship surface when override cost is high and product identity matters more than consistency with internals.

## Mode patterns

### `ui-library-governance`

Use when the team is moving fast with a library but the product is becoming visually interchangeable.

- Keep accessibility primitives.
- Reject default card/page anatomy for flagship surfaces.
- Decide where the design system ends and custom composition begins.

Example pattern:

- Internal settings screen: library-heavy is acceptable
- Homepage, landing page, manifesto, hero section: primitives only, custom layout and CSS

Output checklist:

- current library role
- target library role
- keep / override / primitives-only / bypass recommendation
- expected maintenance tradeoff
- scope boundary between flagship and internal surfaces

## Common stacks

### `shadcn/ui`

- Good for accessible primitives and app surfaces.
- Risk: everything starts to look like the same rounded card system.
- For flagship pages, use primitives selectively and own the CSS.

Pattern:

- keep `Dialog`, `Popover`, `Tabs`, `Accordion`
- do not let `Card`, `Button`, and default spacing define the whole visual language

### MUI / Chakra / Ant Design

- Good when speed, enterprise consistency, and broad component coverage matter.
- Risk: heavy visual defaults and theme gravity.
- Use when the product surface is mostly application UI, not authored visual storytelling.

Pattern:

- good for admin or operator-facing surfaces
- weak fit for premium editorial homepage work unless heavily overridden

### Radix-based custom systems

- Strong middle ground when the team can invest in its own visual language.
- Best when product identity matters and repeated accessibility work should still be avoided.

Pattern:

- define custom page composition and flagship components
- keep Radix-level primitives for interaction behavior

## Decision test

Ask:

1. Is the library shaping behavior only, or also dictating appearance?
2. Does this screen need product identity more than default consistency?
3. Would a custom composition be faster than fighting the library theme?

If the library is shaping appearance more than behavior on a flagship surface, pull back.

## Output pattern

When this mode is active, end with a concrete recommendation such as:

- use the library unchanged
- use the library for primitives only
- override theme tokens and component density
- bypass the library on the flagship surface and keep it for internals
