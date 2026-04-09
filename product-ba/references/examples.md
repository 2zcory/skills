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
- Confirmed facts: Failed orders already exist in the admin system, and operations currently perform an end-of-day manual export-like process.
- Working assumptions: The operations lead is the decision owner unless finance policy requires a separate approver.
- In scope: Export a filtered list of failed orders from the admin interface to CSV.
- Out of scope: Retrying payments, editing orders, or automatically resolving failures.
- Business rules: Only failed orders are included; the export must preserve order identifier, failure time, and failure reason.
- Functional requirements: Admin users can filter failed orders by date range and download the result as CSV.
- Non-functional requirements: Export should complete within an acceptable time for normal end-of-day volume.
- Dependencies: Failure reason data must already exist in the source records.
- Priorities: Must-have: date filtering, CSV export, failure fields. Should-have: sensible default date range.
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

- Story set:
  As a warehouse picker, I can mark a picking task as blocked with a reason so the queue reflects work that cannot proceed.
  As a supervisor, I can see blocked tasks and their reasons so I can reassign or unblock work quickly.
- Acceptance criteria per story:
  Picker story:
  A picker can mark an active task as blocked.
  The picker must choose a reason from the allowed list before saving.
  Supervisor story:
  Blocked status and reason are visible to supervisors in the task queue.
  Supervisors can distinguish blocked tasks from completed or paused tasks.
- Confirmed facts / working assumptions:
  Confirmed: picking tasks already move through an active queue.
  Assumed: supervisors already have a queue view that can display an added blocked state without a larger workflow redesign.
- Shared business rules: Only active tasks can be marked blocked. A blocked reason is mandatory. The reason list is controlled by operations policy.
- Edge cases / failure states: If the task is already completed, the blocked action is unavailable. If the reason list cannot load, the user cannot submit an incomplete blocked state silently.
- Dependencies / sequencing: Confirm the allowed reason list and supervisor queue behavior before implementation.

Why this is good:

- the stories are actor-centered
- the acceptance criteria are observable
- policy dependencies are called out before implementation

## Example 4: Coherent but still generic product definition

Input:

`I want a personal website that shows my projects, writing, and notes in one coherent system.`

Why this matters:

- the request sounds directionally coherent
- but the likely failure mode is a tidy personal site with weak pull
- the real risk is not missing structure alone; it is choosing a product direction that still feels interchangeable

Recommended mode:

- `quick-clarification` or a light `requirement-note` first
- then route to `dialectical-review` if the remaining issue is which audience, tension, or identity claim should define the product

Example output:

- Business problem: The requested site could become organized without becoming compelling, which would still leave the public product weak.
- Target outcome: Clarify enough of the product frame to test whether the work is a real BA problem or a direction-choice problem.
- Actors: Owner, possible primary outside audience, generic visitors.
- Confirmed facts: The owner wants projects, writing, and notes to live together in one public system.
- Assumptions: The desired product is more than a portfolio or blog, and repeat visits matter.
- Open questions: Which specific audience should care most, why they should care on first use, why they should return, and what tension makes the site worth following.
- Next decision: If those questions would change the product meaning materially, stop expanding the BA artifact and route to `dialectical-review`.

Why this is good:

- it treats “coherent but generic” as a failure signal
- it distinguishes missing facts from a direction-choice problem
- it stops BA from pretending that clearer wording alone will make the product matter
