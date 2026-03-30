# React and Next.js Execution

Load this reference when the task uses React or Next.js and the implementation choice depends on rendering boundaries or framework behavior.

## Version Bias

- Prefer the latest stable versions of Next.js, React, TypeScript, and related tooling unless the project already pins a different supported range.
- When upgrading inside an existing repo, prefer the latest stable version within the least risky supported path first, then explain any larger upgrade tradeoff.

## Rendering Boundary

- In Next.js App Router, prefer server components by default.
- Move to client components only when the code needs:
  - browser-only APIs
  - local interactive state
  - event-driven UI that cannot stay server-first
  - client-only libraries
- Keep client islands narrow. Do not convert a whole route to client mode because one small widget needs it.

## Data Loading

- Load route data at the route or server component boundary first.
- Prefer straightforward async server reads over early client-side fetching for public content pages.
- Keep fetch or load functions close to the domain they serve.
- If a page needs multiple data sources, compose them at the route level before pushing data down.

## Component Strategy

- Keep page files responsible for route-level assembly and metadata.
- Push repeated UI structure into components only after the repeated shape is actually clear.
- Use small presentational components when they simplify reading, not just to reduce line count.

## State Discipline

- If state is local and interaction-specific, keep it close to the interactive component.
- If state only mirrors props or URL data, avoid duplicating it into local state.
- Derive where practical; store only what must persist across events.

## Anti-Patterns

- Do not mark a whole tree with `"use client"` without checking whether only one child needs it.
- Do not fetch the same public data again on the client unless revalidation or interaction truly requires it.
- Do not introduce context providers for narrow local concerns.
- Do not reach for `useEffect` to compute values that can be derived during render.
