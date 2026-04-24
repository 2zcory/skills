---
name: adaptive-roadmap
description: Compatibility skill for narrow roadmap-only passes. Prefer `project-planning` for new roadmap creation, review, or replanning; use this only when a legacy workflow or explicitly narrow request requires it.
---

# Adaptive Roadmap

This skill is now a compatibility layer.

Prefer `project-planning` for all new roadmap, phased plan, sequencing, review, and replan work. Use this skill only when the user explicitly wants a narrow roadmap-only pass or when an older workflow still points here.

## Default rule

- If the task sounds like roadmap creation, roadmap review, or replanning, use `project-planning`.
- If the task needs active workstreams, anti-goals, replan triggers, or deferral logic, use `project-planning`.
- Stay here only when the narrower roadmap framing is explicitly part of the request.

## Narrow workflow

When used, keep the output compact:

1. State the roadmap question.
2. Choose `Current phase` or `Active workstreams`.
3. Separate facts, assumptions, constraints, and unknowns.
4. Sequence only the slices that current evidence supports.
5. Name:
   - why now
   - evidence needed
   - replan triggers
   - what not to build yet
6. End with the next decision boundary.

## Boundary

Do not expand this skill back into the primary planning surface. That role now belongs to `project-planning`.
