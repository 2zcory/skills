# Complexity and Correctness

Load this reference when the solution needs proof discipline, complexity analysis, or edge-case verification.

## Complexity Check

For each solution, state:

- what operation dominates the runtime
- whether preprocessing exists
- whether extra space is input-proportional, answer-proportional, or temporary

Translate big-O into the problem scale when useful:

- `O(n^2)` at `n = 10^5` is probably impossible
- `O(n log n)` is often acceptable for large offline processing
- `O(V + E)` is the natural baseline for sparse graph traversal

## Correctness Check

Use the lightest proof form that fits:

- loop invariant
- induction on state or subproblem size
- greedy exchange argument
- monotonic predicate argument
- graph reachability or shortest-path property

If the algorithm relies on a subtle property, write it plainly before the code.

## Edge-Case Checklist

Check:

- empty input
- single element
- all equal values
- strictly increasing or decreasing order
- duplicates
- negative values
- overflow risk
- disconnected graph or impossible case
- off-by-one around array or substring boundaries

## Implementation Risk Signals

Slow down and verify when the code includes:

- multiple indices moving under different conditions
- inclusive vs exclusive range boundaries
- manual heap ordering or comparator logic
- DP transitions with many branches
- graph state with visited and distance updates

## Validation Pattern

Prefer this order:

1. tiny example walkthrough
2. boundary case
3. worst-shape case
4. complexity statement

Passing one happy-path sample is not enough evidence for correctness.
