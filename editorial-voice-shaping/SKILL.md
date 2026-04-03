---
name: "editorial-voice-shaping"
description: "Use when website or route copy feels stiff, AI-like, manifesto-heavy, policy-heavy, or over-explanatory and needs a disciplined rewrite that improves route fit without flattening the site's authored voice. Diagnose route-job mismatch before rewriting, separate tone problems from product-role problems, then leave behind clearer public-facing copy plus a brief rationale and residual risks."
---

# Editorial Voice Shaping

Use this skill when public-facing website copy needs a stronger editorial rewrite instead of a simple wording polish.

## Use this skill when

- A route or screen reads as AI-like, stiff, sloganized, or framework-heavy.
- The copy sounds like internal product reasoning leaking into public text.
- A page is over-explaining its own structure instead of helping the visitor decide what to do next.
- The work needs a rewrite that preserves authored voice while improving clarity and route fit.
- The same surface needs both diagnosis and rewrite, not just grammar cleanup.

Do not use this skill for simple proofreading, direct translation, or cases where the main problem is layout, IA, or product scope rather than copy.

## Core rule

Fix the route job before polishing the sentence.

Do not treat every awkward sentence as a wording problem. First decide whether the route is speaking in the wrong role, at the wrong density, or to the wrong user need.

## Fast triage

Check these three gates first:

- is the main problem actually copy, not layout or architecture
- is the route job clear enough to judge the copy against it
- would a rewrite materially improve orientation, scanning, trust, or next-step clarity

Routing:

- if the route job is still unclear, use `product-ba` first
- if the screen structure itself is the main issue, use `ui-screen-review` or `html-ui-art-director` first
- if the route is structurally fine but the copy is heavy, stiff, or over-authored, use this skill

## Workflow

1. Name the route or surface and state its likely job in plain terms.
2. Separate:
   - route-job problems
   - sentence-level pathology
   - honest constraints that must stay visible
3. Scan for recurring copy pathologies. Read [`references/pathologies.md`](references/pathologies.md) when you need sharper labels.
4. Choose the closest route archetype before rewriting. Read [`references/route-archetypes.md`](references/route-archetypes.md) when the route role is ambiguous.
5. Rewrite with these priorities:
   - job first
   - clarity before cleverness
   - authored voice without self-performance
   - honest boundaries without defensive prose
6. Preserve what must remain true:
   - actual product or channel constraints
   - route hierarchy
   - meaningful voice distinctions between surfaces
7. Do a short residual-risk pass:
   - still too abstract
   - still too curated
   - still too explanatory
   - now too flat or generic
8. Return the rewrite plus a compact rationale and the most important remaining weakness.

## Expected output shape

Prefer a compact structure such as:

- route job
- main copy problems
- rewritten copy
- rationale
- residual risks or next pass suggestion

If editing code or content files directly, still summarize the same points after the patch.

## Review heuristics

- Cut abstract noun stacks when a concrete subject or action would do.
- Cut lines that explain the page's own design theory unless the user truly needs that orientation.
- Prefer useful asymmetry over polished mirrored sentence rhythm.
- Let different routes keep different temperatures:
  - `Home` should orient
  - `About` should background
  - `Writing` should slow the reader down slightly
  - `Garden` should stay open without romanticizing openness
  - `Projects` should prove without portfolio theater
  - `Contact` should clarify without sounding procedural
- Do not strip all authorship out of the copy just to avoid sounding AI-generated.

## Boundaries

- Do not invent brand strategy that the product has not earned.
- Do not rewrite around a route-role problem without naming that problem first.
- Do not replace honest constraints with fake warmth or false availability.
- Do not let "natural" become vague, generic, or interchangeable.
- Do not create a new writing skill from one rewrite sample alone; package patterns only after repeated evidence.
