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

## Fast triage

Before running a full dialectical pass, check these three gates:

- is there a real contradiction, not just missing detail
- are there at least two materially different positions, interpretations, or hypotheses
- would choosing the wrong direction materially change implementation, review, or workflow outcome

Routing:

- if the main problem is missing business clarity, use `product-ba` first
- if the main problem is architecture direction inside a web app, prefer `web-architecture-review`
- if the contradiction is real and directionally important, run this skill
- if one side is already clearly stronger and the remaining issue is execution, state that directly instead of forcing a long synthesis

## Core rule

Dialectical review is not open-ended debate.

Its job is to:

- identify the real contradiction
- articulate competing positions fairly
- test each position against evidence, constraints, and workflow reality
- synthesize a direction that is more robust than any single untested stance

## Choose the review mode

Pick the lightest mode that still resolves the contradiction:

- `decision-review` when the main need is to choose between competing directions
- `policy-review` when workflow, governance, or trust rules appear inconsistent
- `debug-review` when the issue is weakly ranked technical hypotheses
- `critique-upgrade` when an existing review found concerns but did not yet converge on a practical synthesis

Do not stay mode-agnostic if naming the mode would sharpen the output.

## Workflow

1. State the question or decision that actually matters.
2. Name the contradiction, tension, or competing hypotheses explicitly.
3. Name the review mode you are using.
4. Separate:
   - known facts
   - assumptions
   - constraints
   - unknowns
5. Articulate the strongest competing positions, not caricatures.
6. Test each position against:
   - available evidence
   - current workflow or policy
   - practical execution cost
   - failure modes and residual risk
7. Identify what each position gets right and where it breaks.
8. Synthesize the strongest practical direction:
   - what should be kept
   - what should be rejected
   - what must be tightened, deferred, or verified next
9. If this is a review, state the bottom line plainly:
   - what is wrong
   - why it matters
   - what the better direction is
10. End with a decision-ready output rather than continuing abstract debate.

## Expected output shape

Prefer a compact structure such as:

- decision or review question
- review mode
- competing positions or hypotheses
- evidence and constraints
- contradictions or fault lines
- evaluation of each side
- synthesis
- residual risks
- next step or verification need

When used as a review upgrade, prefer findings that are:

- severity-aware
- explicit about the fault line, not just the symptom
- paired with the synthesis that resolves the contradiction

## Review heuristics

- Distinguish contradiction from uncertainty caused by missing facts.
- Prefer the strongest version of each side before criticizing it.
- In review mode, do not stop at "there are tradeoffs"; decide whether the current direction is acceptable.
- If the review concerns policy or workflow, test the wording against actual operator behavior rather than only textual elegance.
- If the contradiction exists because scopes are mixed, first separate the scopes before ranking options.

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

When the task is a review of Context OS or another workflow system, also bias toward:

- identifying the specific decision gap that would cause inconsistent operator behavior
- separating policy ambiguity from operator non-compliance
- recommending the smallest durable wording or workflow change that fixes the contradiction

## Context OS handoff

- If the synthesis settles a durable workflow, design, or implementation choice, capture it in the trusted private `-ctx` repository instead of leaving it only in chat.
- Use the lightest fitting artifact:
  - `decision` when the choice is settled
  - `proposal` when the synthesis is still direction-setting but not yet fully accepted
  - checklist or story update when the result mainly changes execution order or verification flow
- If the contradiction remains unresolved, leave behind the sharpest next verification step rather than a vague summary.

## Handoff readiness

The dialectical pass is ready to hand off when:

- the real contradiction is explicit
- the strongest competing positions were compared fairly
- the synthesis names a practical direction rather than a balanced summary
- residual risks and the next verification boundary are visible

If those conditions are not met, tighten the review before handing off.

## Boundaries

- Do not invent evidence that is not present.
- Do not use debate style for its own sake.
- Do not flatten strong and weak options into artificial symmetry.
- Do not stop at criticism; produce a synthesis or a sharply defined next test.
- Do not replace canonical project or policy documents; use this skill to improve them.
- Do not let polished neutrality hide the fact that one option is materially worse.
