---
name: "dialectical-review"
description: "Use when a task, proposal, workflow, design, or debugging path has a real contradiction, materially competing options, or weakly ranked hypotheses and needs a disciplined synthesis pass. Surface hidden assumptions, compare the strongest alternatives fairly, test them against evidence and workflow reality, and converge on a practical direction with explicit residual risks."
---

# Dialectical Review

Use this skill when the work needs structured contradiction-aware reasoning before a direction is accepted.

## Use this skill when

- Two or more interpretations, hypotheses, or solution directions are in tension.
- A workflow or policy seems internally inconsistent.
- A proposal looks plausible but may hide unstated assumptions.
- A debugging path is cycling across weak hypotheses without a clear ranking.
- A review needs more than a surface pros/cons list and should end in a synthesis.

Do not use this skill for simple factual checks, obvious one-step tasks, or routine edits where no meaningful contradiction exists.

## Goal

Produce a stronger next decision by making the conflict explicit, testing the competing positions, and converging on the best currently supported synthesis.

## Core rule

Dialectical review is not open-ended debate.

Its job is to:

- identify the real contradiction
- articulate competing positions fairly
- test each position against evidence, constraints, and workflow reality
- synthesize a direction that is more robust than any single untested stance

## Workflow

1. State the question or decision that actually matters.
2. Name the contradiction, tension, or competing hypotheses explicitly.
3. Separate:
   - known facts
   - assumptions
   - constraints
   - unknowns
4. Articulate the strongest competing positions, not caricatures.
5. Test each position against:
   - available evidence
   - current workflow or policy
   - practical execution cost
   - failure modes and residual risk
6. Identify what each position gets right and where it breaks.
7. Synthesize the strongest practical direction:
   - what should be kept
   - what should be rejected
   - what must be tightened, deferred, or verified next
8. End with a decision-ready output rather than continuing abstract debate.

## Expected output shape

Prefer a compact structure such as:

- decision or review question
- competing positions or hypotheses
- evidence and constraints
- contradictions or fault lines
- evaluation of each side
- synthesis
- residual risks
- next step or verification need

## Heuristics

- Prefer real contradictions over cosmetic disagreement.
- Compare materially different options; avoid duplicating the same idea with minor wording changes.
- Surface the hidden assumption that would change the outcome if false.
- If one side is clearly stronger, say so plainly instead of forcing false balance.
- If the result is still uncertain, narrow the next verification step instead of pretending the conflict is resolved.
- Use the lightest structure that still preserves rigor.

## Context OS fit

When used in Context OS style work, bias toward:

- resolving contradictory workflow paths
- tightening trust and authority boundaries
- ranking hypotheses before another review round
- exposing where startup, execution, and policy wording drift apart
- leaving behind a synthesis that later sessions can reuse without re-reading the whole debate

## Context OS handoff

- If the synthesis settles a durable workflow, design, or implementation choice, capture it in the trusted private `-ctx` repository instead of leaving it only in chat.
- Use the lightest fitting artifact:
  - `decision` when the choice is settled
  - `proposal` when the synthesis is still direction-setting but not yet fully accepted
  - checklist or story update when the result mainly changes execution order or verification flow
- If the contradiction remains unresolved, leave behind the sharpest next verification step rather than a vague summary.

## Boundaries

- Do not invent evidence that is not present.
- Do not use debate style for its own sake.
- Do not flatten strong and weak options into artificial symmetry.
- Do not stop at criticism; produce a synthesis or a sharply defined next test.
- Do not replace canonical project or policy documents; use this skill to improve them.
