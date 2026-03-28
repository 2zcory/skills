# Skills

Public Codex skills and reusable agent workflows.

## Purpose

- publish reusable skills without private workflow notes
- keep each skill self-contained and easy to reuse
- pair this public repo with the private context repo `skills-ctx` for story capture and internal workflow

## Current Skills

- `ui-screen-review`: create or update durable screen-review artifacts in a project `-ctx` repo and stop at the design-approval gate
- `html-ui-art-director`: generate HTML-first design artifacts with explicit art direction, layout choice, asset strategy, and critique scoring
- `ui-ux-promax`: refine an existing direction toward a stronger premium result through composition, hierarchy, motion, execution quality, and UI-library judgment
- `product-ba`: clarify business problems, gather requirements, frame stakeholders and domain context, and write structured specs before implementation
- `dialectical-review`: expose contradictions, compare competing positions or hypotheses, and synthesize a stronger direction with explicit residual risk
- `web-app-bootstrap`: bootstrap or refresh a private web-app `-ctx` repository from the shared Context OS template and starter kit, create the first story, and activate only the context surfaces the project currently needs
- `web-architecture-review`: compare web-app architecture options, clarify constraints, and recommend practical rendering, state, API, and repository boundaries
- `web-testing-strategy`: map web-app risks and change scope to a pragmatic verification mix across unit, integration, end-to-end, smoke, and manual checks
- `web-release-ops`: turn web-app release work into an explicit readiness, smoke-test, rollback, and post-release workflow
- `web-security-baseline`: review common web-app risk surfaces such as auth, sessions, permissions, inputs, uploads, secrets, and abuse controls before build or release
- `api-contract-workflow`: turn frontend-backend boundaries into explicit contracts covering payloads, errors, pagination, auth expectations, and client-state implications
- `design-to-frontend-handoff`: turn approved screen or flow artifacts into implementation-ready frontend handoff covering states, constraints, scope, and dependencies
- `frontend-screen-implementation`: implement one approved screen or flow slice with explicit user-facing states, interaction ownership, and responsive behavior

## Design Pipeline

For design-heavy work, the normal routing order is:

1. `ui-screen-review` for durable review workflow in the project `-ctx` repo
2. `html-ui-art-director` for stronger HTML/CSS artifact direction and layout choice
3. `ui-ux-promax` when the direction exists but still needs premium refinement
4. `design-to-frontend-handoff` after approval
5. `frontend-screen-implementation` during coding

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
