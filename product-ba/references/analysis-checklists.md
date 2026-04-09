# Product BA Analysis Checklists

Use these prompts only when the task complexity justifies them.

## Stakeholders and Decision Rights

Ask:

- who uses the outcome directly
- who owns the business decision
- who approves scope or policy
- who is impacted operationally
- who can block release or adoption

## AS-IS / TO-BE Workflow

Ask:

- what happens today
- where the current pain or failure appears
- what should change in the target workflow
- what must stay unchanged
- what downstream step depends on this change

Keep the workflow summary short unless the process itself is the problem.

## Business Rules and Non-Goals

Make explicit:

- hard rules the solution must obey
- exceptions or approval paths
- constraints from policy, timing, or operations
- what is intentionally out of scope

## Request vs Need Check

Ask:

- what the user is asking to build or change
- what business problem that request is trying to solve
- whether the request is a requirement or only a proposed solution
- what would happen if the request is delivered but the problem remains

## Product Force Check

Use when a product, public surface, or positioning problem could sound clear while still feeling weak.

Ask:

- who should care most about this product
- who is explicitly not the target
- what concrete first-use reason should pull the right audience in
- what concrete return reason should bring them back
- what would make this product feel distinct from a well-organized generic alternative
- whether the remaining problem is still BA clarification or has become a contradiction about direction, identity, or audience choice

## Non-Functional Concerns

Prompt only when relevant:

- performance or latency expectations
- reliability or failure tolerance
- privacy, security, or auditability needs
- reporting, observability, or supportability needs
- compliance or record-keeping expectations

## Prioritization

If scope is broad, classify requirements as:

- must-have
- should-have
- could-have

If the user already has a prioritization scheme, use that instead.

## Traceability

When handoff quality matters, map:

- business goal -> requirement
- requirement -> acceptance criteria
- requirement -> dependency or risk

Keep this lightweight. The point is to expose logic, not to create ceremony.

## Handoff Readiness Check

Verify:

- the problem can be stated in one or two concrete sentences
- scope boundaries are visible
- key assumptions are explicit
- unresolved questions are named
- the next role can act without inventing hidden policy

## Contradiction Trigger

Route to `dialectical-review` when:

- stakeholders want materially different outcomes
- two hypotheses imply different strategies
- a requirement conflicts with another requirement or constraint
- the team is debating options more than clarifying facts
