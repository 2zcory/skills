---
name: "project-planning"
description: "Use when the user wants a complete project plan, delivery plan, phased roadmap, sequencing plan, roadmap review, or replan for a project. This is the primary planning skill and subsumes adaptive roadmap work: it handles planning questions, current phase or active workstreams, facts versus assumptions, desired outcomes, anti-goals, sequencing, dependencies, evidence quality, decision boundaries, invalidation checks, replan triggers, and what not to build yet, then produces a review-ready plan strong enough to guide execution."
---

# Project Planning

Use this skill when the user needs a planning artifact that can govern a project, not just describe hopeful work.

This skill is the primary planning surface. It owns full project plans, roadmap creation, roadmap review, and replanning. Do not split between `project-planning` and `adaptive-roadmap`; treat roadmap work as one mode inside this skill.

## Use this skill when

- The user asks for a project plan, execution plan, delivery plan, roadmap, phased plan, sequencing plan, or milestone plan.
- The user has a roadmap already and wants it reviewed, tightened, or challenged.
- The work needs a replan because the evidence, scope, risk, or phase has changed.
- Multiple workstreams or maturity levels exist across the same project.
- The plan needs to be good enough for review, prioritization, or handoff, not just as a private note.

## Do not use this skill for

- Pure contradiction resolution where the main question is still which strategic direction is right. Use `dialectical-review` first when needed.
- Specialist architecture, API, release, security, or testing plans where one specialist domain is clearly the real bottleneck.
- Tiny one-feature sequencing questions that do not need a governing plan artifact.

## Core planning rule

Make the plan govern change, not decorate ambition.

A strong plan should:

- name the current reality
- separate facts from assumptions
- sequence by proof and dependency strength
- make deferral explicit
- say what should force a replan later

## Independence rule

Do not refuse to plan just because the business picture is imperfect.

If business clarity, product force, or scope certainty is weak:

- name the missing clarity directly
- treat it as a planning constraint or assumption
- sequence evidence-seeking work earlier
- avoid routing away unless the user explicitly wants a separate BA pass

## Planning modes

Pick one mode explicitly:

- `create`: build a new project plan or roadmap
- `review`: inspect an existing plan for faults, gaps, or false certainty
- `replan`: revise a plan because evidence, scope, or phase changed

For compact mode differences and prompt shapes, read [references/planning-modes.md](references/planning-modes.md).

## Core workflow

1. State the planning question that actually matters.
2. Choose the top-level planning frame:
   - `Current phase` when the project is honestly phase-led
   - `Active workstreams` when different parts of the project are at different maturity levels
   - `Hybrid` when workstreams exist but one cross-cutting phase boundary still matters
3. Separate:
   - known facts
   - working assumptions
   - constraints
   - unknowns
4. Define:
   - desired outcomes
   - anti-goals
   - what the project is trying hardest to improve now
5. Break the work into phases, workstreams, or slices only as far as current evidence supports.
6. For each slice, phase, or workstream, state:
   - goal
   - why now
   - dependencies
   - dependency confidence
   - evidence quality
   - evidence needed
   - decision boundary
   - invalidation check
   - exit criteria
   - stop or defer notes
7. Make explicit:
   - replan triggers
   - what not to build yet
   - next verification need
8. End with a bottom line and the recommended next move.

## Default output contract

When creating or replanning, prefer these blocks:

- `Planning question`
- `Current phase` or `Active workstreams`
- `Desired outcomes`
- `Anti-goals`
- `Known facts`
- `Working assumptions`
- `Constraints`
- `Unknowns`
- `Phases`, `Workstreams`, or `Slices`
- `Replan triggers`
- `What not to build yet`
- `Next verification need`
- `Bottom line`

For a compact reusable template, read [references/project-plan-template.md](references/project-plan-template.md).

## Review contract

When reviewing an existing plan:

- state the plan's apparent intent first
- name what it gets right
- then surface the fault lines:
  - sequencing too early
  - false certainty
  - hidden workstreams
  - weak anti-goals
  - weak dependency confidence
  - thin evidence loops
  - missing stop conditions
  - missing replan triggers
- end with a bottom line:
  - acceptable
  - salvageable with changes
  - directionally wrong

## Planning heuristics

- If the project is not honestly in one phase, do not force one fake phase.
- If a later slice assumes proof that does not exist yet, the sequence is wrong.
- If the plan does not say what not to build yet, it is vulnerable to scope creep.
- If the plan has no replan triggers, it is pretending certainty it does not have.
- If every workstream sounds equally urgent, prioritization is weak.
- If platform work keeps outrunning product evidence, the plan is likely drifting.
- If the same unresolved question appears across many slices, stop and move that uncertainty earlier in the plan.
- If business uncertainty is real, plan around it instead of hiding it.

## Workstream guidance

Use workstreams when:

- product, content, design, platform, operations, or go-to-market work move at different speeds
- one linear phase list would hide real dependencies
- the project needs different evidence loops in parallel

Typical workstream families:

- product force
- content system
- design or frontend execution
- platform hardening
- release and operations

Only use the streams that materially exist in the project.

## Boundaries

- Do not turn the plan into a giant task dump.
- Do not pretend long-range certainty exists when the evidence is thin.
- Do not let a polished plan hide missing clarity, weak proof, or rising risk.
- Do not create extra workstreams just to make the plan feel comprehensive.
- Do not let specialist follow-up disappear when a specialist review is the real blocker.

## Working style

- Be explicit about why the sequence exists.
- Name the few biggest moves, not every possible task.
- Prefer reviewable structure over decorative planning language.
- Make deferral a first-class part of the plan.
- Write plans another strong operator could actually use.

For worked planning patterns and examples, read [references/examples.md](references/examples.md) when needed.
