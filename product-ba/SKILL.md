---
name: "product-ba"
description: "Use when a task is heading toward design or implementation but the business problem, scope, stakeholders, or requirements are still unclear. Clarify the business goal, actors, constraints, and success measures first, then produce lightweight BA artifacts such as requirement summaries, BRD or SRS outlines, user stories, and acceptance criteria."
---

# Product BA

Use this skill when the work needs stronger product thinking or business analysis before implementation.

## Use this skill when

- The request is still vague and the real business problem is not pinned down.
- Requirements need elicitation, clarification, or deconfliction.
- Stakeholder goals, actors, pain points, or workflows are still fuzzy.
- A feature needs structured product or BA artifacts before design or coding.
- You need to turn raw discussion into BRD, SRS, scope notes, user stories, or acceptance criteria.
- The domain matters enough that assumptions should be surfaced explicitly.

## Core rule

Understand the problem before optimizing the solution.

Do not jump straight into features, screens, architecture, or code if the business goal, user need, constraint, owner, or success condition is still unclear.

## Workflow

1. Frame the request in business terms:
   - what outcome is needed
   - who needs it
   - why it matters now
   - what constraint or risk is already visible
2. Identify missing information:
   - stakeholders and decision owners
   - users or actor types
   - current workflow and pain points
   - business rules, constraints, and non-goals
   - success measures
3. Separate facts from assumptions.
4. Ask focused follow-up questions or state the minimum working assumptions when the workflow allows it.
5. Convert the clarified problem into a structured artifact that fits the task:
   - brief problem statement
   - requirement list
   - BRD or SRS outline
   - user stories with acceptance criteria
   - stakeholder summary or decision note
6. Highlight open questions, risks, dependencies, and scope boundaries.
7. Only after the problem is clear, move into solution options, implementation slices, or handoff material for design and engineering.

## Expected output shape

Prefer concise, decision-friendly outputs such as:

- problem summary
- business goal and success metrics
- in-scope and out-of-scope items
- actors and stakeholder map
- functional and non-functional requirements
- assumptions, constraints, and risks
- user stories
- acceptance criteria
- unresolved questions

## Writing guidance

- Write for alignment, not ceremony.
- Prefer concrete statements over generic product language.
- Keep requirements testable and unambiguous.
- Distinguish user need, business rule, and implementation idea.
- When writing user stories, include acceptance criteria only if they can be verified clearly.
- When writing BRD or SRS style content, keep sections proportional to the actual task size.

## Context OS handoff

- If the clarified output materially affects implementation direction, capture it in the trusted private `-ctx` repository instead of leaving it only in chat.
- Use the lightest fitting artifact:
  - `story` for a confirmed work slice
  - `proposal` for an open implementation-driving direction or option set
  - short checklist or design note when the local workflow already uses one
- Do not treat the skill output itself as the source of truth when durable project context should be updated.

## Boundaries

- Do not invent domain facts that have not been confirmed.
- Do not present assumptions as approved requirements.
- Do not hide critical ambiguity behind polished prose.
- Do not over-specify implementation when the task is still at discovery or BA stage.
- Do not replace project-local workflow or trusted project context; use this skill as an execution aid, not the source of truth.
