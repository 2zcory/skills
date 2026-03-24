---
name: "web-release-ops"
description: "Use when a web application needs release-readiness or operational workflow help before deployment. Turn pending release work into an explicit plan covering environments, migrations, feature flags, smoke checks, rollback, and post-release verification without drifting into platform-specific infrastructure detail unless the task requires it."
---

# Web Release Ops

Use this skill when a web application is approaching deployment or needs a clearer release and operational-readiness workflow.

## Use this skill when

- A release is about to go out and the deploy path is still implicit.
- A feature changes migrations, environment variables, release order, or rollback risk.
- A team needs a release checklist or runbook shape for a web app.

Do not use this skill for low-level infrastructure implementation or vendor-specific deployment setup unless the task explicitly calls for that depth.

## Workflow

1. Name the release or operational change in scope.
2. Identify the release-sensitive surfaces:
   - environment assumptions
   - migrations or data changes
   - feature flags
   - smoke-test needs
   - rollback conditions
   - monitoring or post-release checks
3. Separate what must happen before deploy, during deploy, and after deploy.
4. Make dependencies and blockers explicit:
   - missing env vars
   - migration order
   - staging validation
   - required approvals
5. Produce a thin operational plan that covers:
   - readiness checks
   - deployment sequence
   - smoke verification
   - rollback trigger and rollback path
   - post-release observation window or checks
6. If a project-local runbook exists, align with it instead of inventing a competing workflow.

## Output shape

When this skill runs successfully, leave behind:

- release scope
- pre-deploy checklist
- deploy sequence
- smoke and post-release checks
- rollback conditions
- unresolved blockers or risks

## Boundaries

- Keep the skill workflow-focused and reusable across hosting setups.
- Do not include secrets, private URLs, or sensitive infrastructure details in the output.
- Do not pretend rollback is solved if the real rollback path is still undefined.
- Prefer short operator guidance over a sprawling DevOps manual.
