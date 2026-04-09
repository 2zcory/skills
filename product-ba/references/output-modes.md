# Product BA Output Modes

Choose the smallest artifact that creates alignment for the next decision.

## `quick-clarification`

Use when the task is still ambiguous but the next step only needs a short alignment note.

Output shape:

- business problem
- target outcome
- actors
- confirmed facts
- assumptions
- open questions
- next decision

## `requirement-note`

Use when scope, rules, priorities, or dependencies need structure, but a full BRD would be excessive.

Output shape:

- problem summary
- business goal
- actors and decision owner
- confirmed facts
- working assumptions
- in-scope and out-of-scope
- business rules
- functional requirements
- non-functional requirements
- dependencies
- priorities
- unresolved questions

## `user-story-pack`

Use when delivery is close enough that work should be expressed as testable slices.

Output shape:

- story set
- acceptance criteria per story
- confirmed facts and working assumptions that affect the stories
- business rules that apply across stories
- edge cases or failure states
- dependencies or sequencing notes

Guidance:

- Keep stories user-centered, but write acceptance criteria in observable terms.
- If acceptance criteria cannot be verified, stop and mark the gap instead of pretending the story is ready.

## `mini-BRD`

Use when multiple stakeholders, workflow changes, or delivery risk justify a more decision-friendly summary.

Output shape:

- business context
- problem statement
- stakeholders
- confirmed facts
- working assumptions
- current workflow
- target workflow
- scope boundary
- requirements
- constraints and non-goals
- success measures
- risks and dependencies
- open decisions

## Product-definition add-on

When the output is clarifying a product or public surface rather than a narrow operational feature, add:

- primary audience
- anti-audience or non-fit cases
- first-use reason
- return reason
- differentiating claim
- defining tension when competing readings would lead to different downstream choices

## Selection Heuristics

- Prefer `quick-clarification` for intake or early ambiguity.
- Prefer `requirement-note` for a bounded feature or workflow slice.
- Prefer `user-story-pack` when the team is preparing design or engineering handoff.
- Prefer `mini-BRD` when decisions cross teams, roles, or workflow stages.

## Output quality bar

For every mode:

- separate confirmed facts from assumptions
- keep requirements observable and testable
- record unresolved questions explicitly
- avoid implementation detail unless it is already a real constraint
- do not treat generic clarity or tidy taxonomy as sufficient product differentiation
