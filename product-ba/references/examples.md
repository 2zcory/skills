# Product BA Examples

Use these examples to calibrate output quality and mode selection. Reuse the patterns, not the domain details.

## Example 1: Bounded operational feature

Input:

`We need admins to export failed orders to CSV so operations can process them at the end of the day.`

Why this matters:

- the request names a likely solution, but the business need is still operational efficiency
- the actors and workflow are mostly clear
- a lightweight artifact is enough

Recommended mode:

- `requirement-note`

Example output:

- Problem summary: Operations staff manually compile failed orders at the end of the day, which slows resolution and increases the risk of missed cases.
- Business goal: Reduce end-of-day handling time for failed orders and make follow-up work more reliable.
- Actors and decision owner: Admin operations users; decision owner is the operations lead.
- In scope: Export a filtered list of failed orders from the admin interface to CSV.
- Out of scope: Retrying payments, editing orders, or automatically resolving failures.
- Business rules: Only failed orders are included; the export must preserve order identifier, failure time, and failure reason.
- Functional requirements: Admin users can filter failed orders by date range and download the result as CSV.
- Non-functional requirements: Export should complete within an acceptable time for normal end-of-day volume.
- Dependencies: Failure reason data must already exist in the source records.
- Unresolved questions: Whether export permission should be limited to certain admin roles and whether a default date range is needed.

Why this is good:

- it separates the solution request from the business problem
- it makes scope visible
- it records open questions instead of pretending the requirement is complete

## Example 2: Ambiguous workflow problem

Input:

`We need to improve the refund approval process because it takes too long.`

Why this matters:

- the business problem is only partly defined
- the affected workflow and approval rules are unclear
- the best next step is guided elicitation, not a full requirement writeup

Recommended mode:

- `interview-mode` first
- then `mini-BRD` or `requirement-note` depending on the answers

Example question round:

- Who directly handles refund approval today, and who waits on the outcome?
- What are the current workflow steps from refund request to final decision?
- Where does the biggest delay happen today: missing information, approval wait time, or policy checks?
- Which rules or approval paths must remain unchanged in the new process?

Example round summary:

- Known: The team wants faster refund approvals and believes the current process has avoidable delay.
- Assumed: More than one role is involved and at least one approval step may be adding wait time.
- Still unknown: The exact workflow, approval rules, exception paths, and target success measure.
- Next focus: Clarify the current-state workflow and mandatory policy constraints before drafting requirements.

Why this is good:

- it asks only the smallest useful batch of questions
- it summarizes before continuing
- it avoids producing fake certainty too early

## Example 3: Delivery-ready story slice

Input:

`Warehouse staff need to mark a picking task as blocked and choose a reason so supervisors can rebalance work quickly.`

Why this matters:

- the actor, workflow point, and intended outcome are clear
- the request is close to delivery
- the next consumer is likely design or engineering

Recommended mode:

- `user-story-pack`

Example output:

- Story set: As a warehouse picker, I can mark a picking task as blocked with a reason so the queue reflects work that cannot proceed. As a supervisor, I can see blocked tasks and their reasons so I can reassign or unblock work quickly.
- Acceptance criteria: A picker can mark an active task as blocked. The picker must choose a reason from the allowed list before saving. The blocked status is visible to supervisors in the task queue. Supervisors can distinguish blocked tasks from completed or paused tasks.
- Shared business rules: Only active tasks can be marked blocked. A blocked reason is mandatory. The reason list is controlled by operations policy.
- Edge cases / failure states: If the task is already completed, the blocked action is unavailable. If the reason list cannot load, the user cannot submit an incomplete blocked state silently.
- Dependencies / sequencing: Confirm the allowed reason list and supervisor queue behavior before implementation.

Why this is good:

- the stories are actor-centered
- the acceptance criteria are observable
- policy dependencies are called out before implementation
