# HTML Output Contract

Use this contract when the task should produce a reviewable design artifact.

## Default file set

- `index.html`
- `styles.css`
- optional `script.js`

## Required qualities

- semantic structure that reflects hierarchy
- responsive behavior for desktop and mobile
- visible hover and focus states for interactive controls
- variables for color, typography, spacing, radius, and shadows
- one explicit visual language
- one explicit layout archetype
- one explicit asset strategy

## Minimum structure

Include:

- page or screen shell
- dominant hero or work region
- supporting region
- primary CTA or next action
- enough supporting detail to validate the UX

Do not add filler sections just to make the artifact feel complete.

## CSS expectations

CSS should declare:

- color tokens
- type scale
- spacing steps
- radius scale or fixed policy
- shadow policy
- container widths
- breakpoints only when necessary

## Motion expectations

Use motion for:

- entry orientation
- state transition
- feedback

Avoid:

- continuous idle animation
- decorative motion on every surface

## Asset notes

If real assets are missing, note:

- what asset slot exists
- what placeholder treatment is used
- what final asset would strengthen the design

## Final rationale

End the output with a short rationale covering:

- visual language
- layout archetype
- asset strategy
- anti-patterns avoided

That rationale should stay compact and directly tied to the artifact.
