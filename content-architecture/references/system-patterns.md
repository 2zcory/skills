# System Patterns

Use this file when the task is broader than a single page.

## Information architecture defaults

Use a simple route vocabulary first:

- `front door`: where new visitors or users start
- `proof route`: where trust is earned fastest
- `depth route`: where understanding deepens
- `return route`: where freshness or ongoing value lives
- `utility route`: where reference, account, settings, or support tasks live

Questions:

- Which route should be the default second click?
- Which routes are primary, secondary, and background utility?
- Which routes overlap and should be merged or renamed?

## Brand voice defaults

Use a compact system:

- `voice thesis`: what this product sounds like in one sentence
- `sounds like`: concrete traits
- `avoids`: tones and habits to reject
- `preferred framing`: how the product tends to explain itself
- `forbidden fallback`: words or phrases that flatten the identity

Example skeleton:

- `Voice thesis`: reads like a builder showing work in public, not a brand campaign.
- `Sounds like`: direct, specific, calm, earned.
- `Avoids`: hype, inflated abstraction, fake intimacy, slogan repetition.
- `Preferred framing`: proof before promise, consequence before summary.
- `Forbidden fallback`: seamless, revolutionary, empowering, world-class.

## Content model defaults

Use content objects only when they improve consistency across the system.

Typical objects:

- `Project`
- `Article`
- `Note`
- `Update`
- `Guide`
- `Reference entry`

For each object, define:

- job
- minimum fields
- optional fields
- linking behavior

Example:

- `Project`
  - job: prove judgment through visible work
  - minimum fields: title, what it is, hard problem, decision, outcome
  - optional fields: collaborators, stack, next edge
  - linking behavior: should connect to related writing and updates

## Handoff patterns

- To UI: translate route priority into layout hierarchy and navigation emphasis.
- To writing: translate voice rules into drafting constraints and section briefs.
- To implementation: translate content models into schemas, CMS types, MDX frontmatter, or app data structures.
