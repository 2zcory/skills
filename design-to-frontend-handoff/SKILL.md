---
name: "design-to-frontend-handoff"
description: "Deprecated compatibility skill for workflows that still want a separate frontend handoff artifact after UI direction is already approved. Use it only when that extra handoff layer is explicitly required instead of letting `ui-design-intelligence` own the path through implementation."
---

# Design to Frontend Handoff

Deprecated public UI skill.

Primary replacement path:

1. use `ui-design-intelligence` as the primary owner for direction, artifact, and implementation
2. keep this skill only when a workflow explicitly still wants a separate handoff artifact

Keep this skill only as a temporary compatibility bridge while handoff-minimum expectations are being folded into the core UI review path.

Use this skill when a reviewed screen or flow direction is approved and the next step is to prepare clean frontend handoff before coding starts.

## Use this skill when

- A screen or flow artifact has been reviewed and needs implementation-ready interpretation.
- The design direction is clear, but states, constraints, or interaction details are still implicit.
- A frontend task risks drifting because the artifact is visually clear but operationally vague.

Do not use this skill to replace `ui-design-intelligence` as the normal owner of artifact and code work.
Do not choose this as a first-choice public UI skill.

## Workflow

1. Confirm the design direction is approved enough for handoff.
2. Identify the in-scope screen or flow slice.
3. Extract the implementation-relevant details:
   - primary user goal
   - layout structure
   - primary and secondary actions
   - empty, loading, success, and error states
   - responsive constraints
   - interaction or animation notes that materially affect implementation
4. Separate confirmed direction from assumptions.
5. Make the implementation scope explicit:
   - what belongs in this slice
   - what is deferred
   - what depends on backend, copy, or product decisions
6. Surface unresolved questions before coding starts.
7. Leave behind a concise frontend handoff that can anchor implementation.

## Output shape

When this skill runs successfully, leave behind:

- in-scope screen or flow
- user goal and layout structure
- explicit UI states
- responsive and interaction constraints
- deferred items and dependencies
- unresolved questions for implementation

## Boundaries

- Keep the output implementation-ready, not presentation-heavy.
- Do not restate the full design artifact when a tighter handoff summary is enough.
- Do not treat assumptions as approved design.
- Do not replace project-local acceptance criteria or stories.
