---
name: "product-ba"
description: "Use when work is heading toward design or implementation but the business goal, scope, actors, workflow, or requirements are still unclear. Clarify the problem first; use `software-docs-system` for broader project docs."
---

# Product BA

Use this skill when the work needs stronger product thinking or business analysis before implementation.

If the user is asking for a coherent software-project doc pack across business requirements, specs, design, and delivery handoff, use `software-docs-system` as the primary surface and only use this skill for the narrower BA clarification slice when needed.

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

## Fast triage

Before choosing interview mode or output mode, check these three gates:

- is the business outcome clear
- are the primary actors and affected workflow clear
- is there a usable success signal or acceptance direction

Routing:

- if all three are clear, skip discovery-heavy questioning and produce the lightest fitting artifact
- if one or two are unclear, use `direct-clarification` and surface the gaps explicitly
- if the core problem frame is still fuzzy, use `interview-mode`

Do not ask more questions when the remaining uncertainty can be recorded safely as open questions.

Also run this product-force screen before staying in BA mode:

- is the primary audience specific enough to shape product tradeoffs rather than naming a generic visitor class
- is there a concrete first-use reason, not just a structural description of the product
- is there a believable return reason, not just a statement that the content will keep growing
- is the differentiation claim stronger than taxonomy, organization, or generic clarity

Routing upgrade:

- if the main gap is still missing facts, actors, rules, or workflow clarity, stay in BA mode
- if the main gap is choosing which audience, tension, identity claim, or product force should define the work, route to `dialectical-review` after the lightest safe clarification pass
- if the artifact sounds coherent but still generic, treat that as a failure signal rather than proof the BA pass is complete

## Separate request from need

Early in the interaction, separate:

- stated request
- underlying business problem
- why this matters now
- who is affected
- what success would look like

If the user starts from a solution idea, do not reject it, but restate it as a proposal until the business need is clear.

## Choose the interaction mode

Pick the interaction style before writing:

- `direct-clarification` when the user already provided enough detail to analyze and structure quickly.
- `interview-mode` when the request is still fuzzy enough that the best next step is guided elicitation through a few high-value questions.

Use `interview-mode` when the user would benefit from consultation rather than a one-shot requirement summary.

Use these stricter mode gates:

- stay in `direct-clarification` when the business outcome is mostly clear and the remaining gaps can be carried as explicit open questions without changing the next likely implementation or design direction
- switch to `interview-mode` only when at least one unresolved gap would materially change scope, actor behavior, business rules, approval flow, or success measurement
- do not switch to `interview-mode` just because the request could be made more polished or more complete

For interview sequencing, round summaries, and stop conditions, read [`references/interview-mode.md`](references/interview-mode.md).

## Interview stop rule

`interview-mode` is a short ambiguity-reduction tool, not a standing operating mode.

Stop the interview loop and produce the artifact when any of these becomes true:

- the next role could proceed safely with explicit assumptions and open questions
- another question round would mostly improve polish rather than reduce delivery risk
- the missing information belongs to a different owner and should be recorded as a dependency instead of extracted now

If two rounds of questions still do not reduce a material ambiguity, stop and surface the blocked decision explicitly instead of continuing discovery by inertia.

## Choose the output mode

Pick one mode before writing:

- `quick-clarification` when you need a short note that separates the business problem, actors, assumptions, and open questions.
- `requirement-note` when scope, business rules, priorities, or dependencies need explicit structure.
- `user-story-pack` when engineering or design needs testable stories plus acceptance criteria.
- `mini-BRD` when multiple stakeholders, workflow changes, or delivery risk justify a more decision-friendly summary.

Choose the lightest mode that still preserves the decision:

- default to `quick-clarification` unless the task clearly needs a more structured artifact
- use `requirement-note` when the main risk is hidden scope, rules, or dependency ambiguity
- use `user-story-pack` only when the work is close enough to implementation that story slicing and acceptance criteria are actionable now
- use `mini-BRD` only when stakeholder alignment, workflow change, or business risk would make lighter artifacts too lossy

Do not merge multiple output modes into one oversized hybrid document unless the user explicitly asks for that combination.

For mode-specific structures and prompts, read [`references/output-modes.md`](references/output-modes.md).
For concise output templates, read [`references/templates.md`](references/templates.md).
For worked examples of good BA outputs, read [`references/examples.md`](references/examples.md).

## Risk escalation triggers

Increase rigor when the work affects:

- money movement or pricing
- permissions or irreversible actions
- audit trails or compliance
- privacy, sensitive data, or approval chains
- customer-facing failure states with business impact

In these cases, make business rules, exceptions, approval paths, and failure handling explicit before handoff.

Also make the following explicit when relevant:

- source of truth or system of record
- actor authority and approval ownership
- irreversible state changes and recovery expectations
- audit event expectations and dispute handling path
- operational or compliance dependencies that could block release or sign-off

Increase rigor for product-definition or strategy-adjacent BA work when:

- the product could sound coherent while still feeling interchangeable
- the audience is broad enough that different directions would produce different products
- the core value depends on desire, memorability, credibility, or repeated return rather than only task completion

In these cases, make the following explicit before handoff:

- primary audience
- anti-audience or clear non-fit cases
- first-use reason
- return reason
- differentiating claim
- the defining tension, if competing product readings would lead to different downstream choices

## Evidence rule

Do not let clean BA prose hide weak evidence.

When the confidence level matters, distinguish:

- confirmed by the user or an authoritative artifact
- inferred from context but not yet confirmed
- unknown and decision-blocking

If a key requirement, actor rule, or success signal is inferred rather than confirmed, label it as a working assumption and test whether proceeding on that assumption is actually safe.

## Workflow

1. Frame the request in business terms:
   - what outcome is needed
   - who needs it
   - why it matters now
   - what constraint, risk, or decision pressure is already visible
2. Separate the stated request from the underlying business need and record any solution ideas as proposals, not requirements.
3. Identify the minimum context needed to proceed safely:
   - stakeholders and decision owners
   - users or actor types
   - current workflow, pain points, and target-state change
   - business rules, constraints, and non-goals
   - success measures, dependencies, and timing pressure
4. Separate:
   - confirmed facts
   - working assumptions
   - open questions
   - implementation ideas that are not yet requirements
   - blocked decisions that belong to another owner
5. If ambiguity is still material, switch to `interview-mode` and ask the smallest useful batch of high-value questions.
6. Make invisible scope visible:
   - in-scope and out-of-scope items
   - priorities or sequencing when they affect decisions
   - non-functional concerns when they matter, such as auditability, latency, reliability, privacy, or security
7. For product-definition or strategy-adjacent work, run a product-force check:
   - who the work is trying hardest to matter to
   - who it is not for
   - why the right audience should care on first use
   - why they should return
   - whether the current direction is distinctive enough to avoid sounding like a tidy but generic system
8. After each interview round or clarification pass, summarize:
   - what is known
   - what is assumed
   - what is still unknown
   - what the next decision depends on
   - whether the remaining problem is still BA clarification or has become a contradiction or identity-choice problem
9. Stop asking questions once the next artifact can be produced safely enough to move forward.
10. Check whether the problem is clear enough for the next handoff; if not, capture the gap explicitly before producing the artifact.
11. Convert the clarified problem into the lightest fitting artifact.
12. Highlight unresolved risks, dependencies, and scope boundaries before handoff to design or engineering.
13. If the main unresolved question is now a direction choice, identity choice, or competing product reading, stop and hand off to `dialectical-review` instead of stretching BA output further.
14. Only after the problem is clear, move into solution options, implementation slices, or handoff material.

For deeper prompting on stakeholder mapping, AS-IS/TO-BE workflow, NFRs, prioritization, and traceability, read [`references/analysis-checklists.md`](references/analysis-checklists.md).

## Handoff readiness

The BA pass is ready to hand off when:

- the business problem is stated clearly enough to guide decisions
- scope boundaries are visible
- assumptions and open questions are named explicitly
- the chosen artifact is detailed enough for the next role

Readiness by handoff target:

- for design: actors, workflow, constraints, and edge cases are clear enough to shape screens or flows
- for engineering: stories or requirements are testable enough to implement without hidden policy decisions
- for strategy or stakeholder review: risks, dependencies, and open decisions are visible enough for alignment

If those conditions are not met, stop and record the gap rather than pretending the handoff is ready.

Additional readiness checks for product-definition work:

- the primary audience is specific enough to change downstream decisions
- the anti-audience or non-fit case is visible
- the first-use reason is stronger than “the site/app is organized clearly”
- the return reason is more concrete than “there will be more content later”
- the differentiating claim is strong enough that the product would still feel distinct even if implemented well

If those checks fail, do not present the BA artifact as product-ready. Either keep it explicitly provisional or route to `dialectical-review`.

## Expected output shape

Prefer concise, decision-friendly outputs such as:

- problem summary
- business goal and success metrics
- primary audience and anti-audience when product force matters
- in-scope and out-of-scope items
- actors and stakeholder map
- current workflow and target-state change
- business rules and non-goals
- functional and non-functional requirements
- priorities, dependencies, or sequencing notes when relevant
- first-use reason and return reason when product definition matters
- differentiating claim or product tension when relevant
- confirmed facts, working assumptions, and decision-blocking unknowns when confidence matters
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
- If the remaining problem is “what should make this product matter” rather than “what does this need,” route to `dialectical-review` after the smallest useful BA clarification pass.

Treat these as hard routing guards:

- if the main problem is choosing between materially competing directions, route to `dialectical-review` instead of stretching BA discovery into decision arbitration
- if the business frame is already approved and the remaining work is slicing, sequencing, or delivery coordination, do not keep using this skill as a planning surrogate
- if the next useful output is mainly screen direction, frontend handoff, or implementation behavior, hand off to the appropriate downstream skill instead of expanding the BA artifact
- if the artifact is coherent but the product still feels generic, interchangeable, or weakly motivating, do not keep polishing the BA writeup; route to contradiction or identity-focused review

## Boundaries

- Do not invent domain facts that have not been confirmed.
- Do not present assumptions as approved requirements.
- Do not hide critical ambiguity behind polished prose.
- Do not over-specify implementation when the task is still at discovery or BA stage.
- Do not force heavyweight BRD behavior onto a small task that only needs a crisp aligned note.
- Do not turn interview mode into an endless questionnaire or faux-workshop.
- Do not replace project-local workflow or trusted project context; use this skill as an execution aid, not the source of truth.
- Do not let this skill become the default home for contradiction resolution, delivery planning, or design execution once the BA decision boundary has already been crossed.
- Do not mistake a cleanly written but generic product definition for a successful BA outcome.
