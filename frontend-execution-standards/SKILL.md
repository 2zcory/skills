---
name: "frontend-execution-standards"
description: "Use when frontend code work needs modern implementation standards rather than only screen-slice workflow. Apply it for React, Next.js, or web frontend tasks that need clear component boundaries, server and client split discipline, explicit loading or empty or error states, semantic HTML, accessibility, responsive behavior, performance restraint, and current best-practice execution without drifting into broad architecture review."
---

# Frontend Execution Standards

Use this skill when the frontend task is already implementation-facing and the main need is execution quality, not product definition or visual exploration.

Keep this file focused on operating rules. Load only the references needed for the active stack or risk:

- `references/react-nextjs.md` for React and Next.js rendering, server and client boundaries, data loading, and framework-specific execution choices
- `references/component-and-state.md` for component boundaries, prop shape, state ownership, loading or empty or error handling, and form or interaction structure
- `references/html-css-a11y.md` for semantic HTML, responsive layout discipline, accessibility, metadata, and motion restraint
- `references/pattern-selection.md` when the task may justify named frontend patterns such as container/presentational, compound components, adapters, strategy, state machine, or headless component structure

## Use this skill when

- The user asks to implement or refactor frontend code and the result should follow stronger modern patterns.
- A frontend slice is being built in React, Next.js, or a similar component-based web stack.
- The implementation quality risk is higher than the design-direction risk.
- The task needs explicit handling for loading, empty, success, error, or disabled states.
- A screen or component is starting to accumulate muddy boundaries between data, presentation, and interaction logic.
- A task needs stronger defaults around semantic HTML, accessibility, responsiveness, or rendering discipline.

Do not use this skill for product requirements clarification, screen-review workflow, pure art direction, or broad architecture decisions that should route to a different skill.

## Goal

Produce frontend code that is current, maintainable, and disciplined:

- latest stable versions by default unless compatibility or project constraints block that
- server-first when the framework supports it
- client components only when state, browser APIs, or immediate interactivity justify them
- explicit user-facing states
- semantic structure before styling polish
- responsive behavior by design, not as an afterthought
- performance restraint instead of premature micro-optimization

## Workflow

1. State the execution target:
   - component
   - screen
   - flow slice
   - refactor boundary
2. Identify the active stack:
   - React
   - Next.js
   - CSS strategy
   - data source and rendering model
3. Choose the narrowest primary concern:
   - rendering boundary
   - component design
   - state and data handling
   - accessibility and semantics
   - responsive execution
   - performance cleanup
   - pattern selection
4. Make the ownership boundary explicit:
   - what belongs in the page or route
   - what belongs in child components
   - what belongs in shared UI
   - what should stay outside the current slice
5. Plan all relevant user-facing states:
   - loading
   - empty
   - success
   - error
   - disabled or blocked
6. Prefer the lightest implementation that preserves clarity:
   - do not introduce abstraction before reuse pressure is real
   - do not push everything into hooks or helpers without boundary value
   - do not make components client-side unless there is an actual client-only need
7. Check output against the standard:
   - semantic HTML
   - accessible names and hierarchy
   - narrow-screen behavior
   - current stable dependency choice
   - explicit tradeoffs and residual risks

## Pattern Selection Rule

Prefer no named pattern by default.

Escalate to a named pattern only when the current slice shows clear pressure such as:

- repeated composition with shared implicit state
- multiple interchangeable behaviors
- messy translation between external data shape and internal UI shape
- interaction logic that is becoming state-transition heavy
- the need to separate data assembly from rendering in a reusable way

If that pressure is real, load `references/pattern-selection.md` and choose the lightest fitting pattern.

## Core Rules

- Prefer the latest stable framework, runtime, and library versions by default.
- Prefer server-rendered or static-first execution for public content in Next.js unless interactivity requires otherwise.
- Keep data fetching close to the route or server boundary unless a shared abstraction clearly improves the code.
- Split components by responsibility, not by arbitrary size limits.
- Treat `loading`, `empty`, `error`, and `success` as first-class states whenever data or async behavior is involved.
- Prefer semantic HTML and native behavior before custom div-based interaction patterns.
- Make accessibility part of the default implementation, not a later patch.
- Use `useMemo`, `useCallback`, and custom hooks only when there is a concrete benefit.
- Avoid decorative motion without a state or orientation job.
- Prefer the lightest named pattern that resolves the actual problem; do not add patterns for status signaling or résumé theater.

## Pairing Guidance

- Pair with `frontend-screen-implementation` when the task is one approved screen or flow slice and both workflow structure and code standards matter.
- Pair with `ui-ux-promax` when the implementation is correct but the visual execution still feels generic or weak.
- Pair with `web-architecture-review` when the real question is rendering or repository architecture rather than code-level implementation quality.

## Output Shape

When this skill runs successfully, leave behind:

- the active execution boundary
- the relevant rendering or component decisions
- any named pattern chosen and why it was justified
- the handled user-facing states
- any explicit a11y or responsive considerations
- the version or dependency assumptions that mattered
- residual risks or deliberate deferrals

## Boundaries

- Do not turn this into a full frontend architecture skill.
- Do not duplicate screen-review or design-approval workflow.
- Do not force trendy patterns when the repo has a stronger local convention.
- Do not optimize for cleverness over readability.
- Do not add dependencies or abstractions without a clear implementation reason.
