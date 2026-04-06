# Routing Boundaries

This skill is a roadmap layer. It does not replace specialist skills.

Route or hand off when the main blocker is:

- `product-ba`: unclear business problem, actor, workflow, business rule, success signal, or scope
- `dialectical-review`: a real contradiction between materially different directions, assumptions, or strategies
- `web-architecture-review`: rendering, state, API, repository, or deployment-boundary decisions inside a web app
- `api-contract-workflow`: a frontend-backend boundary needs an explicit contract before roadmap confidence is justified
- `web-testing-strategy`: verification scope, risk coverage, or release confidence is unclear
- `web-release-ops`: deployment, migration, smoke checks, rollback, or environment readiness drives the next decision
- `web-security-baseline`: auth, session, permissions, secrets, abuse, upload, or auditability risks would change the roadmap

For non-web projects, keep the same routing logic even when the exact specialist skill is not available in this repo: hand off to the domain-specific architecture, verification, release, security, or contract workflow that actually governs the next decision.

Do not keep expanding the roadmap when the real need is one of those deeper specialist passes.

## Good Triggers For This Skill

Use this skill when the user needs:

- a phased roadmap that can adapt as evidence changes
- a project evolution plan across discovery, validation, delivery, or hardening phases
- a review of an existing roadmap to find false certainty, bad sequencing, or missing replan logic
- a decision-ready plan that says what not to build yet

## Bad Triggers For This Skill

Do not use this skill as the first stop when:

- the request is just a requirements clarification problem
- the request is really an architecture decision
- the request is only a release checklist
- the request is a generic task list with no meaningful uncertainty
- the roadmap is being used as a substitute for choosing a strategy
