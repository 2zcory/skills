# HTML, CSS, and Accessibility Standards

Load this reference when semantic structure, responsive behavior, accessibility, metadata, or motion quality matter.

## Semantic HTML

- Prefer meaningful HTML elements before adding classes or ARIA.
- Use heading hierarchy intentionally.
- Use buttons for actions and links for navigation.
- Use lists for repeated collections.
- Avoid div-only interaction patterns unless there is no native equivalent.

## Accessibility

- Make interactive controls reachable and understandable by keyboard.
- Ensure visible labels or accessible names exist for important actions.
- Preserve focus visibility.
- Use color as support, not the only carrier of meaning.
- When adding custom controls, check keyboard interaction and screen-reader naming.

## Responsive Execution

- Design narrow-screen behavior upfront:
  - stacking
  - wrapping
  - reflow of actions
  - readable spacing and line lengths
- Avoid desktop-only assumptions in component spacing or fixed widths.
- Prefer fluid layouts with clear max-widths over brittle breakpoint-heavy hacks.
- Treat responsive work as evidence-based for user-facing screens:
  - do not close it from CSS inspection or build success alone
  - verify at least one real narrow-screen view before claiming completion
- When the screen has a strong above-the-fold job, explicitly check:
  - header and navigation compression
  - hero or title scale
  - CTA visibility
  - pathological vertical waste

## CSS Discipline

- Let structure and spacing do most of the work before adding decorative styling.
- Prefer a small set of intentional tokens or variables over scattered magic numbers.
- Keep motion purposeful and sparse.
- Avoid visual noise from too many borders, shadows, or competing surfaces.

## Metadata and Public Surfaces

- For public pages, define meaningful titles and descriptions.
- Keep the first viewport oriented around the page's real job.
- Do not let SEO or metadata work drift so late that public routes ship unnamed or ambiguous.
