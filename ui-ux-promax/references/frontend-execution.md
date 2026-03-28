# Frontend Execution

Use this reference when the task includes implementing or refactoring the surface in HTML, CSS, and JavaScript.

## HTML

- Reflect hierarchy in markup before styling it.
- Use sectioning elements and headings that match the reading order.
- Avoid wrapper inflation. Extra containers usually signal unclear layout intent.
- Do not let every content unit become a card with the same anatomy.
- Prefer meaningful groups over repetitive utility wrappers.

Pattern example:

- Good: `main > section.hero > div.hero-main + aside.hero-support`
- Bad: 6 nested `div` wrappers before reaching the first real content group

If the HTML cannot explain the reading order without CSS, the structure is probably weak.

## CSS

- Use spacing, scale, alignment, and contrast as primary tools before adding effects.
- Create a small, clear set of custom properties for color, spacing, radius, and typography.
- Radius should be intentional and limited. Overuse makes the surface soft and generic.
- Build responsive layouts from compositional intent, not from a stack of arbitrary breakpoints.
- Use motion sparingly and attach it to named roles such as entry, continuity, and feedback.
- Prefer transform and opacity for animation when possible.

Pattern example:

- Start with 4-6 spacing tokens and 2-3 radius tokens max.
- If every component defines its own padding and radius, the surface will drift into visual noise.
- If a support card needs too many CSS exceptions, the composition is likely wrong.

## JavaScript

- Add JavaScript only when interaction, sequencing, or state requires it.
- CSS should handle purely presentational transitions.
- Use JS for:
  - staged reveals based on state
  - counters that need synchronized timing
  - interaction-driven motion
  - filters, tabs, or navigation state
- Do not add JS just to simulate richness.

Pattern example:

- Use CSS for entry fades or transforms.
- Use JS when a chart bar, counter, or route scan must coordinate timing with state changes.
- Avoid scroll-driven effects unless the page truly benefits from them and performance is controlled.

## Stateful UI patterns

- Define the full set of visible states before polishing the happy path:
  - default
  - hover and focus
  - loading
  - empty
  - error
  - disabled when relevant
- If a state changes the reading order or dominant surface, account for that in the layout rather than inserting one-off fixes.
- Empty states should keep the composition intentional; they should not collapse the page into awkward blank space.
- Loading states should preserve spatial continuity whenever possible.

Pattern example:

- Good: skeleton or placeholder shape preserves the eventual rhythm of the section
- Bad: loading spinner replaces a large surface and makes the layout jump

## Motion and interaction lifecycle

- Name the motion role before implementing it:
  - entry
  - continuity
  - feedback
  - emphasis
- Define start and stop conditions.
- Ensure motion does not keep running after its UX job is complete.
- For JS-driven motion, define:
  - trigger
  - duration
  - interruption behavior
  - reduced-motion fallback

Pattern example:

- Good: count-up runs once when the section enters view, then becomes still
- Bad: counters and glows loop forever without changing user understanding

## Performance and resilience

- Treat animation budget and layout stability as product concerns, not polish extras.
- Avoid layout thrash from JS-driven measurements during scroll.
- Prefer CSS transforms over properties that trigger expensive layout or paint when possible.
- Test the surface with slower devices or throttled conditions when motion is central to the experience.
- Ensure the page still reads correctly if JS fails or is delayed.

## Responsive behavior

- Decide what remains dominant on mobile; do not merely stack desktop blocks.
- Remove or compress weak support surfaces earlier on small screens.
- Reduce simultaneous focal points on mobile.
- Keep tap targets and focus states explicit.

Mode mapping:

- `surface-polish`: preserve structure, compress density
- `composition-reset`: choose a new dominant mobile composition rather than stacking desktop leftovers
- `frontend-execution`: verify that CSS and DOM still match the intended reading order at each breakpoint

## Accessibility

- Maintain visible focus styles on all interactive elements.
- Ensure motion has reduced-motion fallbacks when it carries visual weight.
- Preserve readable contrast even in highly styled compositions.
- Do not bury navigation or primary actions inside purely decorative structures.

Quick checklist:

- primary action visible without hover
- focus ring survives custom styling
- reduced-motion users still understand the screen
- decorative layers do not block content or interaction
- loading and empty states remain readable
- keyboard users can reach major actions in a sensible order
