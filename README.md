# Skills

Public Codex skills and reusable agent workflows.

## Purpose

- publish reusable skills without private workflow notes
- keep each skill self-contained and easy to reuse
- pair this public repo with the private context repo `skills-ctx` for story capture and internal workflow

## Current Skills

- `adaptive-roadmap`: create or review phased project roadmaps as living execution artifacts with explicit assumptions, decision boundaries, replan triggers, and defer-not-yet guidance
- `ui-screen-review`: create or update durable screen-review artifacts in a project `-ctx` repo for screens, flows, or shared system surfaces, then stop at the design-approval gate
- `html-ui-art-director`: generate HTML-first design artifacts with explicit art direction, layout choice, asset strategy, and critique scoring
- `ui-design-intelligence`: retrieve data-backed UI direction, style, palette, typography, chart, UX, and stack guidance from a bundled searchable design catalog
- `product-ba`: clarify business problems, gather requirements, frame stakeholders and domain context, and write structured specs before implementation
- `dialectical-review`: expose contradictions, compare competing positions or hypotheses, and synthesize a stronger direction with explicit residual risk
- `web-app-bootstrap`: bootstrap or refresh a private web-app `-ctx` repository from the shared Context OS template and starter kit, create the first story, and activate only the context surfaces the project currently needs
- `web-architecture-review`: compare web-app architecture options, clarify constraints, and recommend practical rendering, state, API, and repository boundaries
- `web-testing-strategy`: map web-app risks and change scope to a pragmatic verification mix across unit, integration, end-to-end, smoke, and manual checks
- `web-release-ops`: turn web-app release work into an explicit readiness, smoke-test, rollback, and post-release workflow
- `web-security-baseline`: review common web-app risk surfaces such as auth, sessions, permissions, inputs, uploads, secrets, and abuse controls before build or release
- `api-contract-workflow`: turn frontend-backend boundaries into explicit contracts covering payloads, errors, pagination, auth expectations, and client-state implications
- `algorithmic-problem-solving`: solve algorithm and data-structure tasks with paradigm selection, data-structure choice, complexity analysis, correctness reasoning, and implementation guidance
- `editorial-voice-shaping`: diagnose route-job mismatch, identify AI-like or over-explanatory copy pathologies, and rewrite public-facing website copy so it reads more naturally without losing authored voice or route fit

## UI Core

The primary public UI path is now intentionally narrow:

1. `ui-screen-review`
2. `ui-design-intelligence`
3. `html-ui-art-director`

Use these three as the default UI route unless a stronger project-specific reason says otherwise.

In short:

- `ui-screen-review` answers "what needs review before implementation?"
- `ui-design-intelligence` answers "what direction fits this product or screen?"
- `html-ui-art-director` answers "what should the artifact look like?"

## Deprecated UI Skills

These skills remain in the repo during the transition, but they are no longer primary public entry points:

- `ui-ux-promax`: deprecated in favor of `html-ui-art-director` for most public UI routing; use only as a temporary compatibility bridge while premium-refinement guidance is being absorbed.
- `design-to-frontend-handoff`: deprecated in favor of stronger implementation-ready output from `ui-screen-review`.
- `frontend-screen-implementation`: deprecated as a public UI routing layer; normal coding work should start from the approved artifact path instead of a separate UI implementation skill.
- `frontend-execution-standards`: deprecated as a public UI routing layer; preserve its guidance as implementation discipline rather than as a first-choice UI skill.

## Legacy Design Pipeline

For design-heavy work, the normal routing order is:

1. `ui-screen-review` for durable review workflow in the project `-ctx` repo
2. `ui-design-intelligence` for retrieval-backed direction, product-fit style guidance, and structured design lookup
3. `html-ui-art-director` for stronger HTML/CSS artifact direction and layout choice
4. `ui-ux-promax` when the direction exists but still needs premium refinement
5. `design-to-frontend-handoff` after approval
6. `frontend-screen-implementation` during coding

## Overlap Guards

- `frontend-screen-implementation` is the primary skill when one approved screen or tightly scoped flow slice is the unit of work.
- `frontend-execution-standards` is the standards overlay when rendering boundaries, component discipline, a11y, responsive verification, or framework-quality concerns need to stay explicit.
- `html-ui-art-director` should generate or reset the authored artifact when the layout direction is not settled yet.
- `ui-ux-promax` should refine an existing direction when the artifact exists but still feels generic, flat, or under-finished.

## Structure

- `<skill-name>/SKILL.md`: skill instructions
- `<skill-name>/agents/openai.yaml`: optional UI metadata for the skill
- `scripts/reconcile_runtime_skills.py`: host-local helper that reconciles authored skills at the repo root against the effective runtime path behind `~/.codex/skills`

## Host-Local Runtime Sync

For this single-user setup, runtime discovery stays behind `~/.codex/skills`, while this repo is the authored source.

Use:

```bash
python3 scripts/reconcile_runtime_skills.py
```

The script:

- treats any direct child directory containing `SKILL.md` as an authored skill
- resolves the effective runtime path behind `~/.codex/skills`
- creates or refreshes symlinks for those authored skills
- avoids silently overwriting non-symlink runtime installs unless `--force` is used
