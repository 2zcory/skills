# Component and State Standards

Load this reference when the task needs stronger component boundaries, prop discipline, state ownership, or user-facing states.

## Component Boundaries

- Split components by responsibility:
  - route assembly
  - section composition
  - item rendering
  - interactive control
- Avoid creating wrapper components that only rename a div without adding structure or meaning.
- Prefer explicit props over hidden behavior.

## Prop Shape

- Keep props small and intention-revealing.
- Prefer passing domain objects only when the child genuinely owns rendering that whole object.
- Prefer passing derived view data when the child only needs a narrow slice.

## User-Facing States

For any async or conditional view, ask explicitly:

- what shows while loading
- what shows when there is no data
- what shows when the action fails
- what shows on success
- what becomes disabled or blocked during interaction

Do not assume the happy path is enough.

## Forms and Actions

- Use native form semantics when possible.
- Keep validation messages close to the field or action they belong to.
- Prefer one clear primary action.
- Disable or guard submission when duplicate actions would create bad state.

## State Ownership

- Store state at the lowest level that still serves all consumers that need it.
- Lift state only when sharing pressure is real.
- Avoid effect-driven synchronization between multiple local states unless there is no cleaner source of truth.

## Anti-Patterns

- Avoid boolean explosions such as many unrelated flags on one component when a small state model would read more clearly.
- Avoid giant page components that fetch data, transform it, manage interactions, and render every section inline.
- Avoid custom hooks that only move complexity around without clarifying ownership.
