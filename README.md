# Skills

Public Codex skills and reusable agent workflows.

## Purpose

- publish reusable skills without private workflow notes
- keep each skill self-contained and easy to reuse
- pair this public repo with the private context repo `skills-ctx` for story capture and internal workflow

## Current Skills

- `adaptive-roadmap`: compatibility roadmap skill for older or deliberately narrow roadmap-only passes; prefer `project-planning` for new planning work
- `frontend-studio`: own frontend work end to end, from retrieval-backed design direction through artifact creation, implementation, motion and asset choices, and practical verification
- `product-ba`: clarify business problems, gather requirements, frame stakeholders and domain context, and write structured specs before implementation
- `dialectical-review`: expose contradictions, compare competing positions or hypotheses, and synthesize a stronger direction with explicit residual risk
- `web-app-bootstrap`: bootstrap or refresh a private web-app `-ctx` repository from the shared Context OS template and starter kit, create the first story, and activate only the context surfaces the project currently needs
- `web-architecture-review`: compare web-app architecture options, clarify constraints, and recommend practical rendering, state, API, and repository boundaries
- `web-testing-strategy`: map web-app risks and change scope to a pragmatic verification mix across unit, integration, end-to-end, smoke, and manual checks
- `web-release-ops`: turn web-app release work into an explicit readiness, smoke-test, rollback, and post-release workflow
- `web-security-baseline`: review common web-app risk surfaces such as auth, sessions, permissions, inputs, uploads, secrets, and abuse controls before build or release
- `api-contract-workflow`: turn frontend-backend boundaries into explicit contracts covering payloads, errors, pagination, auth expectations, and client-state implications
- `algorithmic-problem-solving`: solve algorithm and data-structure tasks with paradigm selection, data-structure choice, complexity analysis, correctness reasoning, and implementation guidance
- `editorial-voice-shaping`: compatibility rewrite skill for older or deliberately narrow rewrite-only passes; prefer `content-architecture` for new voice and editorial work
- `content-architecture`: primary content skill for deciding and improving what a page, route, project, or content system should say and how it should sound, including route priority, information architecture, voice systems, editorial rewriting, line editing, sidebars, rails, and content models
- `project-planning`: primary planning skill for complete project plans, phased roadmaps, roadmap reviews, replans, workstreams, outcomes, anti-goals, sequencing logic, risks, replan triggers, and explicit deferrals

## Frontend Core

The public frontend path is now intentionally simple:

1. `frontend-studio`
2. optional specialist skills only when the task clearly leaves normal frontend ownership

In short:

- `frontend-studio` answers "what direction fits, what artifact should exist, what code should be written, and how should the result be verified?"
- the private repo `ui-ux-lab` sits behind this path as a training and validation loop for improving `frontend-studio`, not as a normal step in project delivery

Removed from the public repo:

- `ui-screen-review`
- `html-ui-art-director`
- `ui-ux-promax`
- `design-to-frontend-handoff`
- `frontend-screen-implementation`
- `frontend-execution-standards`

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
