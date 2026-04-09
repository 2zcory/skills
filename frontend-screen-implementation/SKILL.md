---
name: "frontend-screen-implementation"
description: "Deprecated compatibility skill for legacy workflows that still name a separate screen-implementation lane after UI direction is settled. Use it only when that older split should be preserved instead of letting `ui-design-intelligence` own normal frontend implementation."
---

# Frontend Screen Implementation

Deprecated public UI skill.

Primary replacement path:

1. use `ui-design-intelligence` as the primary owner for direction, artifact, and implementation
2. keep this skill only as a compatibility bridge when an older workflow still names a separate implementation lane

Keep this skill only as a temporary compatibility bridge while the public UI surface is being simplified.

Use this skill when a single screen or tightly scoped flow slice is ready to be implemented on the frontend.

## Use this skill when

- A reviewed screen has approved direction and enough handoff detail to start coding.
- One flow slice needs implementation with clear user-facing states.
- The work is narrow enough to reason about as one screen or one closely related interaction slice.

Do not use this skill for broad frontend architecture, vague design exploration, or large multi-area refactors.
Do not use this skill as the only routing layer when the real need is cross-cutting frontend code standards, rendering-boundary cleanup, or component-pattern discipline across multiple surfaces; pair with `frontend-execution-standards` for that.
Do not choose this as a first-choice public UI skill.

## Workflow

1. Confirm the active screen or flow slice and the approved handoff inputs.
2. Define the implementation boundary:
   - what this screen owns
   - what parent layout or shared shell owns
   - what data or actions come from outside
3. Plan the user-facing states explicitly:
   - loading
   - empty
   - success
   - error
   - disabled or blocked states when relevant
4. Map the interaction model:
   - primary action
   - secondary actions
   - validation or inline feedback
   - transitions that materially affect code structure
5. Check responsive behavior instead of assuming desktop-only layout:
   - hierarchy on narrow screens
   - wrapping or stacking behavior
   - action placement under constrained width
6. Keep the implementation slice thin:
   - avoid mixing unrelated screen work
   - defer adjacent polish or architecture cleanup unless blocking
7. Leave behind implementation-ready guidance or code work with explicit risks and follow-up items.

## Output shape

When this skill runs successfully, leave behind:

- the screen or flow slice being implemented
- implementation boundary and ownership
- explicit user-facing states
- responsive behavior notes
- key interaction decisions
- follow-up risks or deferred items

## Boundaries

- Keep the skill screen-slice oriented, not framework encyclopedic.
- Treat this skill as the primary owner only when one approved screen or tightly scoped flow slice is the actual unit of work.
- Do not ignore empty, error, or narrow-viewport behavior.
- Do not let one implementation slice absorb unrelated refactors by default.
- Use project conventions for actual code structure; this skill guides execution, not repo policy.
