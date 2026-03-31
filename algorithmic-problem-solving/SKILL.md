---
name: "algorithmic-problem-solving"
description: "Use when a task needs strong algorithm and data-structure reasoning: solving coding interview problems, competitive-programming style tasks, optimizing an implementation, choosing the right data structure, reducing time or space complexity, proving correctness, or handling edge cases before coding. Apply it when brute force may be too slow, the right paradigm is unclear, or the implementation needs disciplined complexity-aware design."
---

# Algorithmic Problem Solving

Use this skill when the task is primarily about finding or improving an algorithmic solution rather than general product or application engineering.

Keep this file focused on the workflow. Load only the references needed for the active problem:

- `references/paradigm-selection.md` for choosing between brute force, greedy, divide and conquer, dynamic programming, graph traversal, search, string techniques, or data-structure-driven solutions
- `references/data-structure-selection.md` for selecting arrays, hash maps, sets, heaps, stacks, queues, trees, tries, union-find, segment trees, and related structures
- `references/complexity-and-correctness.md` for complexity analysis, invariants, proof sketches, edge-case checks, and implementation verification

## Use this skill when

- The user asks to solve an algorithm or data-structure problem.
- The main challenge is reducing time or space complexity.
- A brute-force solution exists but may be too slow.
- The right paradigm is unclear.
- The implementation is failing on edge cases or hidden tests.
- The user wants explanation plus code, or a clearer derivation from naive to optimized.

Do not use this skill for broad system architecture, ordinary CRUD code, or UI implementation tasks where algorithmic reasoning is not the bottleneck.

## Goal

Produce an algorithmic solution that is:

- correct
- complexity-aware
- implementable in the target language
- explicit about assumptions and edge cases
- no more abstract than the problem justifies

## Workflow

1. Restate the problem precisely:
   - inputs
   - outputs
   - constraints
   - important edge cases
2. Establish the baseline:
   - brute-force or straightforward solution
   - why it fails or may fail under the constraints
3. Identify the real pressure:
   - time complexity
   - space complexity
   - ordering or search structure
   - repeated subproblems
   - graph connectivity or traversal
   - interval or range queries
   - streaming or online updates
4. Choose the lightest fitting approach:
   - algorithmic paradigm
   - data structure
   - representation strategy
5. Explain why the chosen approach works:
   - invariant
   - recurrence
   - monotonic property
   - greedy choice argument
   - state definition
   - graph property
6. Implement cleanly in the requested language:
   - preserve clarity over trickery
   - name state and transitions explicitly
   - keep off-by-one, indexing, and overflow risks visible
7. Validate the result:
   - sample walkthrough
   - edge cases
   - time and space complexity
   - any residual limits or tradeoffs

## Core Rules

- Start from the simplest correct solution, then optimize only as needed by the constraints.
- Prefer the lightest paradigm that satisfies the constraints; do not reach for dynamic programming or advanced trees for status signaling.
- Make constraints drive the design.
- Be explicit about the chosen data structure and why it fits.
- When multiple solutions are viable, rank them by correctness risk, complexity, and implementation cost.
- If the solution depends on a subtle invariant, say it plainly instead of hiding it in code.
- If the problem is ambiguous, state the assumption before optimizing around it.

## Pairing Guidance

- Pair with `dialectical-review` when the problem has materially competing solution strategies and the ranking is not obvious.
- Pair with a language- or framework-specific coding skill only after the algorithmic shape is settled.

## Output Shape

When this skill runs successfully, leave behind:

- the problem restatement
- the baseline approach
- the optimized approach and why it was chosen
- the relevant data structure and paradigm
- complexity analysis
- key edge cases
- implementation notes or code

## Boundaries

- Do not overfit to competitive-programming cleverness if a simpler solution already meets the constraints.
- Do not skip correctness reasoning on the assumption that passing examples proves the algorithm.
- Do not present big-O without saying what operation dominates it.
- Do not introduce advanced data structures without a concrete payoff.
