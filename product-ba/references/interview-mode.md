# Product BA Interview Mode

Use this mode when the request is too ambiguous for a reliable one-shot BA writeup and the best next step is consultative elicitation.

## Goal

Ask a small number of high-value questions, summarize what changed, and stop when the next artifact can be produced safely.

## Round Structure

Each round should contain:

- `2-5` focused questions
- a short reason for the question set when that helps the user answer well
- a round summary after the answers

Avoid long questionnaires. Pick the highest-value unknowns first.

## Suggested Question Order

Start from the earliest missing layer:

1. business goal and why now
2. actors and decision owner
3. current pain or failure
4. current workflow and target change
5. business rules and non-goals
6. edge cases, exceptions, or approval paths
7. success signals
8. priorities, dependencies, or timing pressure

Do not force this order if a later layer is already the real blocker.

## Round Summary Format

After each round, summarize:

- known
- assumed
- still unknown
- next focus

If enough is already clear, stop the interview and produce the right output mode instead of asking another round.

## Stop Conditions

Stop interviewing when:

- the business problem, actors, and success direction are clear enough for a `quick-clarification`
- scope, rules, and dependencies are clear enough for a `requirement-note`
- stories and testable acceptance criteria are clear enough for a `user-story-pack`
- cross-role workflow and decision context are clear enough for a `mini-BRD`

Also stop when the remaining uncertainty should be recorded as open questions rather than blocked by more questioning.

## Tone and Behavior

- be consultative, not interrogative
- ask concrete questions tied to delivery risk
- prefer plain language over BA jargon
- surface assumptions explicitly instead of pretending certainty

## Example Interview Starters

For vague intake:

- what decision or action should this work improve
- who is struggling with the current process
- what is the visible pain today

For workflow-heavy intake:

- what happens step by step today
- where do errors, delays, or approvals appear
- what must remain unchanged in the new flow

For delivery-adjacent intake:

- what has already been decided
- what is still open enough to block design or engineering
- what acceptance signal would tell us the slice is ready
