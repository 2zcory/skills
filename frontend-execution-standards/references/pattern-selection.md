# Pattern Selection

Load this reference only when the frontend task is complex enough to justify a named pattern.

## Core Rule

Do not start from a pattern catalog.

Start from the implementation pressure, then choose the lightest pattern that removes real confusion.

## Use No Special Pattern When

- the component is still narrow and readable
- reuse pressure is still hypothetical
- a plain prop-based component tree is clear enough
- the data shape and interaction model are simple

Plain, explicit code beats a fashionable pattern most of the time.

## Patterns Worth Considering

### Container / Presentational

Use when:

- route or parent components are doing both data assembly and detailed rendering
- the same visual component could be reused with different data sources
- separating view logic from data wiring would make the code easier to test or read

Avoid when:

- it only creates a thin wrapper around one component
- the "container" does not own meaningful assembly logic

### Compound Components

Use when:

- one UI primitive has several tightly related child parts
- those parts need shared implicit state or structure
- the API should read declaratively in JSX

Common fit:

- tabs
- accordions
- menus
- complex cards with optional subregions

Avoid when:

- the component has only one or two simple slots
- shared state is minimal and explicit props are clearer

### Headless Component Pattern

Use when:

- interaction logic should be reusable across multiple visual treatments
- accessibility or keyboard behavior is non-trivial
- the same behavior may power different designs

Avoid when:

- there is only one visual treatment and the logic is not reusable
- the abstraction would separate behavior from markup without a real reuse case

### Adapter Pattern

Use when:

- external API or CMS data is awkward for the UI
- multiple backend or content sources need to feed one stable frontend shape
- normalizing data at the boundary would simplify the rest of the tree

Avoid when:

- a small inline transform is enough
- the external data shape is already close to the UI need

### Strategy Pattern

Use when:

- one feature needs interchangeable behavior modes
- the selection logic would otherwise become a deep conditional tree
- different rendering or ranking or formatting strategies must remain swappable

Avoid when:

- there are only one or two small branches
- a clear conditional is easier to read than a strategy object graph

### State Machine

Use when:

- the interaction has real state transitions, guards, or non-trivial async lifecycle
- boolean flags are starting to explode
- invalid intermediate states are causing bugs or confusion

Common fit:

- multi-step flows
- upload or submission workflows
- async controls with retry and cancellation

Avoid when:

- simple request lifecycle state can be expressed clearly with a small discriminated union
- the flow is too small to justify machine overhead

## Selection Heuristic

Ask these questions in order:

1. Is plain explicit code still clear?
2. Is the problem data shape, rendering structure, interchangeable behavior, or state transitions?
3. Which single pattern removes the most confusion with the least extra abstraction?
4. Can the pattern be kept local to this slice instead of becoming an app-wide doctrine?

If the answer to question 1 is yes, do not add a named pattern.

## Anti-Patterns

- pattern stacking without a clear need
- introducing headless abstractions before the second real consumer exists
- converting simple fetch-and-render pages into container systems for style points
- adopting a full state machine when a typed union or reducer would do
- building a generic component API before the product shape is stable
