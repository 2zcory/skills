---
name: "product-ba"
description: "Use when a task is heading toward design or implementation but the business problem, scope, stakeholders, workflow, or requirements are still unclear. Clarify the business goal, actors, constraints, business rules, and success measures first, using focused BA questioning when needed, then produce the lightest fitting artifact such as a clarification note, requirement summary, user-story pack, or mini-BRD."
---

# Product BA

Use this skill when the work needs stronger product thinking or business analysis before implementation.

## Use this skill when

- The request is still vague and the real business problem is not pinned down.
- Requirements need elicitation, clarification, or deconfliction.
- Stakeholder goals, actors, pain points, or workflows are still fuzzy.
- A feature needs structured product or BA artifacts before design or coding.
- You need to turn raw discussion into a clarification note, BRD, SRS, scope note, user stories, or acceptance criteria.
- The domain matters enough that assumptions should be surfaced explicitly.
- Current-state and target-state workflow differences matter to the decision.

## Core rule

Understand the problem before optimizing the solution.

Do not jump straight into features, screens, architecture, or code if the business goal, user need, constraint, owner, or success condition is still unclear.

Prefer the lightest artifact that reduces ambiguity enough for the next decision.

## Choose the interaction mode

Pick the interaction style before writing:

- `direct-clarification` when the user already provided enough detail to analyze and structure quickly.
- `interview-mode` when the request is still fuzzy enough that the best next step is guided elicitation through a few high-value questions.

Use `interview-mode` when the user would benefit from consultation rather than a one-shot requirement summary.

For interview sequencing, round summaries, and stop conditions, read [`references/interview-mode.md`](references/interview-mode.md).

## Choose the output mode

Pick one mode before writing:

- `quick-clarification` when you need a short note that separates the business problem, actors, assumptions, and open questions.
- `requirement-note` when scope, business rules, priorities, or dependencies need explicit structure.
- `user-story-pack` when engineering or design needs testable stories plus acceptance criteria.
- `mini-BRD` when multiple stakeholders, workflow changes, or delivery risk justify a more decision-friendly summary.

For mode-specific structures and prompts, read [`references/output-modes.md`](references/output-modes.md).

## Workflow

1. Frame the request in business terms:
   - what outcome is needed
   - who needs it
   - why it matters now
   - what constraint, risk, or decision pressure is already visible
2. Identify the minimum context needed to proceed safely:
   - stakeholders and decision owners
   - users or actor types
   - current workflow, pain points, and target-state change
   - business rules, constraints, and non-goals
   - success measures, dependencies, and timing pressure
3. Separate:
   - confirmed facts
   - working assumptions
   - open questions
   - implementation ideas that are not yet requirements
4. If ambiguity is still material, switch to `interview-mode` and ask the smallest useful batch of high-value questions.
5. Make invisible scope visible:
   - in-scope and out-of-scope items
   - priorities or sequencing when they affect decisions
   - non-functional concerns when they matter, such as auditability, latency, reliability, privacy, or security
6. After each interview round or clarification pass, summarize:
   - what is known
   - what is assumed
   - what is still unknown
   - what the next decision depends on
7. Stop asking questions once the next artifact can be produced safely enough to move forward.
8. Convert the clarified problem into the lightest fitting artifact.
9. Highlight unresolved risks, dependencies, and scope boundaries before handoff to design or engineering.
10. Only after the problem is clear, move into solution options, implementation slices, or handoff material.

For deeper prompting on stakeholder mapping, AS-IS/TO-BE workflow, NFRs, prioritization, and traceability, read [`references/analysis-checklists.md`](references/analysis-checklists.md).

## Expected output shape

Prefer concise, decision-friendly outputs such as:

- problem summary
- business goal and success metrics
- in-scope and out-of-scope items
- actors and stakeholder map
- current workflow and target-state change
- business rules and non-goals
- functional and non-functional requirements
- priorities, dependencies, or sequencing notes when relevant
- assumptions, constraints, and risks
- user stories
- acceptance criteria
- unresolved questions

## Writing guidance

- Write for alignment, not ceremony.
- Prefer concrete statements over generic product language.
- Keep requirements testable and unambiguous.
- Distinguish user need, business rule, and implementation idea.
- Distinguish approved requirement from working proposal.
- In interview mode, ask only a few high-value questions per round instead of dumping a long questionnaire.
- After interview rounds, summarize before asking more.
- If workflow change matters, make the before/after difference explicit.
- If a requirement is important but not yet measurable, say that the success signal is still undefined.
- When writing user stories, include acceptance criteria only if they can be verified clearly.
- When writing BRD or SRS style content, keep sections proportional to the actual task size.

## Context OS handoff

- If the clarified output materially affects implementation direction, capture it in the trusted private `-ctx` repository instead of leaving it only in chat.
- Use the lightest fitting artifact:
  - `story` for a confirmed work slice
  - `proposal` for an open implementation-driving direction or option set
  - short checklist or design note when the local workflow already uses one
- Do not treat the skill output itself as the source of truth when durable project context should be updated.

## Routing

- Use `dialectical-review` when the main blocker is a real contradiction between options, stakeholders, or hypotheses rather than missing BA structure.
- Use architecture or implementation skills only after the business problem, scope boundary, and success signal are clear enough to trust.
- If the task already has an approved problem frame and now needs execution planning, hand off to the project-local planning workflow instead of re-running BA discovery.
- In interview mode, stop and convert to an artifact when another question round would mostly repeat or polish rather than reduce real delivery risk.

## Boundaries

- Do not invent domain facts that have not been confirmed.
- Do not present assumptions as approved requirements.
- Do not hide critical ambiguity behind polished prose.
- Do not over-specify implementation when the task is still at discovery or BA stage.
- Do not force heavyweight BRD behavior onto a small task that only needs a crisp aligned note.
- Do not turn interview mode into an endless questionnaire or faux-workshop.
- Do not replace project-local workflow or trusted project context; use this skill as an execution aid, not the source of truth.
