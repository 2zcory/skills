---
name: "web-architecture-review"
description: "Use when a web app needs an architecture decision before implementation continues. Compare rendering, state, API, repo, and deployment boundaries; use `software-docs-system` when the task needs broader project docs."
---

# Web Architecture Review

Use this skill when a web application needs architecture thinking before implementation or refactoring continues.

If the user is asking for a full project doc pack or a coherent documentation system, use `software-docs-system` first and only route here for the narrower architecture-review or architecture-design slice.

## Use this skill when

- A new web app is choosing its initial architecture.
- A feature request exposes tension around SSR vs CSR, API routes vs separate backend, server actions vs client fetches, or similar boundary choices.
- Current structure feels ad hoc and the user needs a practical direction before more code is added.

Do not use this skill for minor code cleanup, feature implementation, or broad product requirement discovery. Pair with `product-ba` when the business problem is still vague, and pair with `dialectical-review` when the main issue is a real contradiction that needs deeper synthesis.

## Workflow

1. Name the actual architecture question that matters now.
2. Make the current constraints explicit:
   - product shape
   - team size or expected maintenance model
   - deployment assumptions
   - performance, SEO, auth, and operational constraints
3. Identify the main boundary choices in scope:
   - rendering model
   - routing ownership
   - state ownership
   - API contract boundary
   - repository or package structure
   - release or environment implications
4. Compare the strongest realistic options, not every possible option.
5. For each viable option, evaluate:
   - fit to the actual constraints
   - execution cost
   - migration cost later
   - likely failure mode
   - operational burden
6. Recommend the strongest practical direction.
7. State what to keep simple now, what to defer, and what must be verified before locking the decision in.

## Output shape

When this skill runs successfully, leave behind:

- the architecture question
- the relevant constraints
- the competing options
- one recommended direction
- explicit tradeoffs and residual risks
- the next verification or decision step

## Boundaries

- Stay thin and decision-oriented; do not turn the skill into a framework encyclopedia.
- Prefer practical boundaries over abstract purity.
- Do not present assumptions as settled architecture requirements.
- Do not force a major refactor when a smaller boundary clarification is enough.
