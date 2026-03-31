# Data Structure Selection

Load this reference when choosing the right storage or query/update structure is the main difficulty.

## Selection Questions

Ask:

1. What operations dominate:
   - lookup
   - insertion
   - deletion
   - min or max extraction
   - ordered traversal
   - prefix or range query
   - connectivity merge or find
2. Are updates online or offline?
3. Is ordering important or only membership?
4. Does the structure need to support duplicates?

## Common Choices

### Array / List

Use when:

- sequential access dominates
- the size is manageable
- sorting or scanning is central

### Hash Map / Set

Use when:

- average O(1) membership or frequency tracking is the real need
- order is not the primary concern

### Stack / Queue / Deque

Use when:

- LIFO or FIFO behavior is fundamental
- monotonic maintenance matters
- BFS or window structure drives the algorithm

### Heap / Priority Queue

Use when:

- repeated min or max extraction dominates
- scheduling, top-k, or best-next choice matters

### Tree / Ordered Set / Ordered Map

Use when:

- sorted order is required during updates
- predecessor or successor queries matter

### Trie

Use when:

- prefix lookup is central
- strings share common prefixes and repeated prefix work is too expensive

### Union-Find

Use when:

- the problem is about dynamic connectivity, components, or equivalence classes

### Segment Tree / Fenwick Tree

Use when:

- repeated range query and point or range update pressure exists
- prefix sums alone are no longer enough

## Anti-Patterns

- using a map when an array indexed by bounded values is simpler and faster
- using a tree when sorting once is enough
- using segment trees for one-shot offline scans
- introducing a trie when hashing already solves the real task
