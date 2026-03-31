# Paradigm Selection

Load this reference when the main challenge is choosing the algorithmic family.

## Selection Heuristic

Ask these questions in order:

1. Can a straightforward brute-force solution be written quickly?
2. What constraint actually breaks brute force: `n`, `m`, value range, online updates, repeated queries?
3. Does the problem smell like:
   - repeated subproblems
   - local-choice structure
   - graph reachability
   - sorted order or binary-searchable answer space
   - sliding or contiguous windows
   - intervals or prefix aggregates
   - shortest path, connectivity, or matching
4. Which paradigm solves that pressure with the least extra machinery?

## Common Paradigms

### Brute Force

Use when:

- constraints are small
- it is useful as a baseline or oracle
- correctness matters more than early cleverness

### Greedy

Use when:

- a locally optimal choice can be shown to preserve global optimality
- sorting plus one-pass selection simplifies the problem
- interval scheduling, merging, or ordering pressure is central

Avoid when:

- no convincing greedy-choice argument exists

### Dynamic Programming

Use when:

- there are overlapping subproblems
- the optimal solution decomposes into smaller states
- memoization or tabulation can bound repeated work

Avoid when:

- the state definition is vague or explodes without necessity

### Graph Traversal

Use when:

- the problem is about reachability, connectivity, shortest path, topological dependence, or components

Typical tools:

- BFS
- DFS
- Dijkstra
- topological sort
- union-find

### Binary Search

Use when:

- the answer space is ordered
- a feasibility predicate is monotonic
- direct construction is hard but checking is cheap

### Sliding Window / Two Pointers

Use when:

- the problem concerns contiguous subarrays, substrings, or ordered pairs
- the active region can be advanced monotonically

### Prefix / Difference / Range Aggregation

Use when:

- repeated range sums, counts, or updates dominate the problem
- recomputing segments repeatedly is too expensive

## Anti-Patterns

- jumping to DP because the problem feels hard
- forcing greedy without a real exchange or monotonic argument
- using graph language when the structure is really just an array problem
- applying binary search when the predicate is not actually monotonic
