# Output Contract

Use the lightest output shape that still makes the roadmap decision-ready.

## Creation Mode

Produce a roadmap with these blocks when they materially matter:

- `Current phase`
- `Active workstreams`
  Use this instead of `Current phase` when the project is not honestly in one phase.
- `Desired outcomes`
- `Anti-goals`
- `Known facts`
- `Working assumptions`
- `Constraints`
- `Unknowns`
- `Roadmap slices` or `phases`
- `Decision boundary` for each slice when possible
- `Invalidation check` for each slice when possible
- `Exit criteria`
- `Replan triggers`
- `What not to build yet`
- `Next verification need`

For each roadmap slice or workstream, prefer a compact structure such as:

- `Goal`
- `Why now`
- `Dependencies`
- `Dependency confidence`
- `Evidence quality`
- `Evidence needed`
- `Decision boundary`
- `Invalidation check`
- `Exit criteria`
- `Stop/defer notes`

Do not force every section when the task is small. Keep enough structure to prevent false certainty.
If the project has multiple streams with different maturity levels, group slices under those streams instead of flattening them into one linear phase list.

## Review Mode

Prefer a compact review output with:

- `Roadmap intent`
- `Current phase`
- `Findings` ordered by severity
- `What the roadmap gets right`
- `What should be tightened, deferred, or removed`
- `Missing evidence loops`
- `Missing or weak replan triggers`
- `Execution reality gaps`
- `Bottom line`
- `Next correction`

When reviewing, call out faults such as:

- sequencing that assumes proof before evidence exists
- broad implementation commitment before business or architecture clarity
- missing anti-goals that allow scope creep
- no explicit stop condition
- no trigger for revisiting assumptions
- hidden phase changes dressed up as one continuous plan
