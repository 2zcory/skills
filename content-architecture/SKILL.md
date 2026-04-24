---
name: "content-architecture"
description: "Primary content skill for deciding what a page, route, or product should say, in what order, and in what voice. Use it for content structure and editorial shaping; use `software-docs-system` for broader project docs."
---

# Content Architecture

Use this skill when the real problem is not just styling, but deciding what the product or page should say, in what order, with what hierarchy, and in what voice.

If the user is asking for formal project documentation across business requirements, specs, design, and delivery handoff, use `software-docs-system` first and only route here for the narrower content-architecture or editorial slice.

This skill is the primary content surface. It owns content architecture, route-level messaging, editorial voice shaping, public-facing rewriting, and copyediting when those tasks depend on route fit or system coherence. Do not split between `content-architecture` and `editorial-voice-shaping`; treat voice and rewrite work as modes inside this skill.

## Use this skill when

- A homepage, landing page, project page, dashboard surface, docs page, or route family feels content-heavy, directionless, repetitive, stiff, or structurally weak.
- The user asks what the page should contain before or alongside asking how it should look.
- A UI task is blocked because the page lacks route priority, section jobs, narrative hierarchy, or a clear reason to keep reading.
- Public-facing copy sounds AI-like, manifesto-heavy, policy-heavy, over-explanatory, or misfit for the route.
- The work needs voice rules, messaging boundaries, or a more disciplined editorial pass.
- A project needs a content model or route blueprint before design or implementation.
- The user wants rewriting, editing, or shaping that stays faithful to the route job instead of polishing sentences in isolation.

## Do not use this skill for

- Pure visual polish, spacing, animation, color, or component styling with stable content already in place.
- Simple proofreading, direct translation, or typo cleanup where no route, voice, or architecture judgment is needed.
- Long-form writing execution where the structure, route role, and voice system are already accepted and only drafting throughput remains.

## Core idea

Content architecture should answer:

- Who is this for right now?
- What is the first thing they need to understand, feel, trust, or do?
- What is the preferred reading path?
- What role does each section, route, or content object play?
- What content belongs on this surface, and what should move elsewhere?
- What should the product sound like, and what should it avoid sounding like?
- What should be rewritten structurally versus line by line?
- What recurring content objects exist across the project, and how do they connect?

## Independence rule

Do not depend on `product-ba` to begin.

If product clarity is imperfect:

- make the strongest usable audience and route judgment from the material available
- name the missing product clarity as a constraint or residual risk
- still produce a content stance, sequence, and rewrite direction
- only ask for separate BA work if the user explicitly wants that artifact

## Modes

Pick the dominant mode explicitly:

- `architecture`: decide page, route, or system structure
- `rewrite`: reshape public-facing copy for route fit and voice
- `model`: define recurring content objects and fields
- `hybrid`: do structure plus rewrite together when they cannot be separated honestly

## Workflow

1. Identify the scope.
   - Surface-level: homepage, route index, feature page, docs landing, project detail page, dashboard overview.
   - System-level: route family, content model, messaging system, voice system.
2. Name the primary audience and primary job.
   - Use one dominant audience and one dominant job unless the system genuinely must serve more than one.
3. Diagnose the failure mode.
   - Typical modes: equal-weight content, route confusion, premature explanation, weak proof, no reason to return, decorative copy, card-stack thinking, voice drift, taxonomy bloat, stiff copy, manifesto theater, AI-like filler.
4. Decide the architecture layers in scope.
   - `surface`
   - `system`
   - `voice`
   - `model`
   - `line edit`
5. Define the route logic.
   - Decide what must come first, what deepens trust, what supports orientation, and what should move later, elsewhere, or off-page.
6. Define the section, route, or object jobs.
   - For pages: orient, prove, deepen, support, convert, or keep alive.
   - For systems: each route or content object should have one clear responsibility.
7. Establish the voice system when needed.
   - Name what the product should sound like.
   - Name the tones, cliches, and fallback phrases to avoid.
   - Prefer operational language over brand-strategy theater.
8. Rewrite at the right level.
   - If the route job is wrong, rewrite structure first.
   - If the route job is right but the copy is weak, rewrite lines, headings, or modules directly.
   - Preserve honest constraints and route differences between surfaces.
9. Establish the content model when needed.
   - Identify recurring objects such as project, note, article, feature, guide, testimonial, update, or changelog entry.
   - Name the minimum fields each object needs to support the architecture.
10. Choose the structural devices.
   - Use the minimum useful set: hero, lanes, rows, sidebars, rails, support notes, footers, route lists, content modules, indexes, route groups.
   - Prefer layout roles over card proliferation.
11. Produce a concise package.
   - Name the surface or system thesis.
   - List the route or section sequence.
   - For each section, route, or object: responsibility, content payload, and ideal density.
   - If rewrite is in scope, include revised copy or a line-level draft where it matters.
   - Call out what should be cut, merged, deferred, renamed, or moved.
12. Hand off cleanly.
   - If the next step is UI, translate the package into layout guidance.
   - If the next step is implementation, translate it into route map, schema, or component-content requirements.
   - If the next step is writing, provide the actual draft outline or rewritten copy, not just abstract advice.
   - If the architecture is clear but execution could still stall at "what should the page actually say first?", include a `Draft bridge` with concrete opening lines, section prompts, or route-language moves that make the next drafting pass easier to start.

## Default output shape

When this skill runs well, produce a compact package with the blocks that matter:

- `Mode`
- `Surface / System`
- `Audience + Job`
- `Thesis`
- `Reading order / Route logic`
- `Section / Route blueprint`
- `Voice system`
- `Rewrite draft` or `Edited copy` when rewrite is in scope
- `Draft bridge` when the architecture is accepted but the next drafting move still needs a sharper starting point
- `Content model` when recurring objects matter
- `Cuts / Moves`
- `Residual risks`
- `Next handoff`

## Section blueprint format

Use compact lines such as:

- `Hero`: establish the builder and first trust signal
- `Proof lane`: show one visible consequence or hard choice
- `Route rows`: direct into projects, writing, or docs
- `Sidebar`: orient the read or carry supporting context only
- `Footer`: close with direction, not utility sprawl
- `Project object`: title, stakes, hard choice, visible outcome, next edge
- `Writing object`: claim, supporting idea, linked proof, follow-on route

## Voice system format

When voice matters, keep it concrete:

- `Voice thesis`: one sentence
- `Sounds like`: 3-5 traits
- `Avoids`: 3-5 traits or cliches
- `Vocabulary`: preferred words, forbidden words, and recurring framing patterns

Do not write vague brand-strategy theater such as `authentic yet bold and human-centered` unless it becomes operational language a writer can use immediately.

## Draft bridge format

Use a `Draft bridge` when:

- the architecture package is strong enough to guide the route
- the page still needs a concrete first-pass wording bridge
- the likely next miss is not strategy, but weak translation from structure into public-facing language

Keep it short and executable:

- `Opening line`: one candidate sentence or short pair that establishes the page job
- `Proof line`: the next line, object, or cue that should earn trust quickly
- `Route cue`: the preferred next click or reading path in visitor language
- `Live-return cue`: one line or prompt that preserves freshness or return value when that matters

Do not turn the draft bridge into a full polished rewrite unless rewrite mode is actually in scope.

## Rewrite guidance

When rewriting or editing:

- fix the route job before polishing the sentence
- cut explanation of the page's own theory unless orientation truly needs it
- cut abstract noun stacks when a concrete subject or action would do
- preserve authored voice without self-performance
- preserve honest constraints instead of smoothing them away
- end with the clearest next read, next click, or next understanding move

## Content model format

When recurring content objects matter, use compact models such as:

- `Project`: title, what it is, hard problem, decisions, outcome, live edge
- `Article`: claim, audience, why now, supporting points, next route
- `Update`: timestamp, change, implication, linked object

Name only the fields that actually matter for the product's content behavior.

## Heuristics

- If everything looks equally important, nothing has hierarchy.
- If the page needs many cards to explain itself, the architecture is probably weak.
- If the user cannot name the preferred next click, the route system is weak.
- If the page explains the map before creating desire or trust, the opening is weak.
- If the architecture package cannot produce a plausible opening line or proof line, it is still too abstract to hand off cleanly.
- If the same sentence could appear in three sections, cut or merge.
- If routes overlap semantically, the information architecture is weak even if each page looks good on its own.
- If the voice rules cannot tell a writer what to do differently on the next sentence, they are too abstract.
- If a rewrite makes the page cleaner but flatter, voice has been over-normalized.
- If a content object has many fields but no clear job, the model is bloated.

## Page-type defaults

- Marketing or public home:
  - promise or identity
  - proof
  - route priority
  - support depth
  - close
- Project or case-study page:
  - what it is
  - hard problem
  - decisions
  - visible outcome
  - reflection or next edge
- Product or dashboard surface:
  - current state
  - key decisions or tasks
  - supporting context
  - deeper inspection paths
- Docs landing:
  - orientation
  - fastest starting path
  - reference paths
  - maintenance or update cues

For compact default blueprints and recurring section patterns, read [references/page-archetypes.md](references/page-archetypes.md).
For route systems, object modeling, and voice-system defaults, read [references/system-patterns.md](references/system-patterns.md).
For diagnosis prompts, failure-mode vocabulary, and rewrite patterns, read [references/diagnostics.md](references/diagnostics.md) when needed.
For short architecture-to-draft translation patterns, read [references/draft-bridges.md](references/draft-bridges.md) when the structure is clear but the wording bridge is still weak.

## Working style

- Be decisive about what should go first.
- Prefer fewer sections with clearer jobs.
- Name what should be cut, not just what should be added.
- Keep architecture and rewrite language concrete.
- Treat sidebars, rails, and supporting notes as structural tools, not decorative extras.
- Prefer operational voice rules, actual rewrite moves, and useful content models over abstract strategy jargon.
