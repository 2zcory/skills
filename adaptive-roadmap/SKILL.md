---
name: adaptive-roadmap
description: Create and review project roadmaps as living execution artifacts that can adapt to changing evidence, risks, and delivery phases. Use when Codex needs to build a phased plan, evolution plan, sequencing plan, or roadmap review that must make current phase or active workstreams, desired outcomes, anti-goals, working assumptions, decision boundaries, invalidation checks, replan triggers, and what not to build yet explicit. Use this when choosing the wrong sequence or staying on the wrong roadmap would materially affect implementation or review decisions, especially for product and software delivery work that may need handoff to specialist skills.
---

# Adaptive Roadmap

Use this skill to make roadmap work explicit, phase-aware, and revisable.

This skill should produce roadmaps that help govern change, not just describe intended work. Keep the roadmap narrow enough to drive decisions and explicit enough to say when it should be revised, deferred, or stopped.

## Fast Triage

Before doing a full roadmap pass, check these gates:

- is the user asking for a roadmap, phased plan, sequencing plan, evolution plan, or roadmap review
- does uncertainty, changing evidence, or phase change materially affect what should happen next
- would the output be used to guide decisions rather than just decorate a status update

If the main problem is not roadmap control, route instead of forcing this skill:

- use `product-ba` when business clarity is the real blocker
- use `dialectical-review` when the core problem is contradiction between competing directions
- use `web-architecture-review`, `api-contract-workflow`, `web-testing-strategy`, `web-release-ops`, or `web-security-baseline` when one specialist domain drives the next move
- use this skill when the real need is to govern sequencing and adaptation across slices of work

Read [routing-boundaries.md](references/routing-boundaries.md) when the trigger feels ambiguous.

## Choose The Mode

Pick one mode explicitly:

- `create` when the user needs a new roadmap or a significant replan
- `review` when the user already has a roadmap and needs faults, missing logic, or a stronger structure surfaced

Do not stay mode-agnostic if naming the mode will sharpen the output.

## Core Workflow

1. State the roadmap question that actually matters.
2. Choose the top-level roadmap frame that best matches reality: `Current phase` for a mostly single-phase project, or `Active workstreams` when different parts of the project are clearly in different phases.
3. Separate `known facts`, `assumptions`, `constraints`, and `unknowns`.
4. Make `desired outcomes` and `anti-goals` explicit before sequencing work.
5. Break the roadmap into slices or phases only as far as current evidence supports.
6. For each slice or workstream, state:
   - goal
   - why now
   - dependencies
   - dependency confidence
   - evidence quality
   - evidence needed
   - decision boundary
   - invalidation check
   - exit criteria
7. State `replan triggers` that would change the roadmap.
8. State `what not to build yet` so the roadmap resists scope creep.
9. End with the next decision or verification boundary instead of pretending the whole future is settled.

Read [output-contract.md](references/output-contract.md) when the output needs a stronger contract.
Read [examples.md](references/examples.md) when the roadmap shape is ambiguous or the project has multiple active streams.

## Creation Guidance

When creating a roadmap:

- anchor the roadmap to the current phase, not the imagined end state
- if the project has materially different streams in different phases, use `Active workstreams` as the primary shape instead of forcing one fake shared phase
- prefer fewer slices with stronger boundaries over long fake precision
- make the evidence needed for promotion explicit
- use anti-goals to stop premature platformization or gold-plating
- say what should be deferred until a later signal appears
- keep the roadmap decision-ready, not ceremony-heavy

Good prompts for yourself during creation:

- what phase is this project actually in: discovery, validation, delivery, hardening, or scaling
- what outcome must be proven before the next slice is justified
- what assumption would invalidate the current sequence if false
- what work is tempting but should stay explicitly out of scope for now
- what signal should trigger a replan instead of more execution momentum

## Review Guidance

When reviewing an existing roadmap:

- identify what the roadmap gets right before tightening it
- look for false certainty, especially where the roadmap commits to implementation before business or technical evidence exists
- flag sequencing errors where later work is assumed safe before earlier proof exists
- surface missing anti-goals, missing stop conditions, and missing replan triggers
- call out when multiple hidden phase changes are being smuggled into one linear plan
- check whether owners, dependency confidence, or evidence availability make the proposed sequencing operationally unrealistic
- end with a bottom line: acceptable, salvageable with changes, or directionally wrong

Prefer findings that are severity-aware and tied to the roadmap fault line, not just the symptom.

## Boundaries

- do not use this skill as a substitute for choosing a product strategy from scratch
- do not turn the roadmap into a generic task dump
- do not pretend long-range certainty exists when the evidence is thin
- do not keep expanding the roadmap when a specialist review is the real blocker
- do not replace durable project artifacts; hand off settled roadmap decisions to the relevant private context repo when one exists
