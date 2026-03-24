---
name: "web-app-bootstrap"
description: "Use when a user is starting or refreshing a web application project and needs a private `-ctx` repository bootstrapped from the shared Context OS template or starter kit. Identify the source repo and matching private context repo first, reuse the existing web-app template assets when available, set up only the necessary context surfaces, create the first story, and keep bootstrap work thin instead of inventing a parallel process."
---

# Web App Bootstrap

Use this skill when a web application project needs its private `-ctx` repository set up or refreshed so later planning, screen review, and implementation work start from a durable baseline.

## Use this skill when

- A new web app project needs a matching private `-ctx` repository.
- An existing web-app `-ctx` repository is too sparse, ad hoc, or missing the expected starter surfaces.
- The next step is to prepare project context before deeper product BA, UI review, or implementation work begins.

Do not use this skill to choose the web stack, resolve architecture debates, or implement application code. Pair with `product-ba`, `dialectical-review`, or `ui-screen-review` when those triggers appear.

## Preconditions

- Identify the active source repository and the matching private `-ctx` repository first.
- Verify the `-ctx` repository path and remote destination before storing internal workflow notes there.
- Check whether the project already has a trusted local bootstrap pattern; reuse it when it is compatible instead of replacing it blindly.

If the private `-ctx` repository is missing and the workflow requires user confirmation before creating it, stop and ask.

## Workflow

1. Confirm the project is primarily a `web-app` shape rather than `mobile-app`, `library-sdk`, or another archetype.
2. Identify:
   - source repo path
   - private `-ctx` repo path
   - whether the `-ctx` repo already exists
   - whether the user wants a fresh bootstrap or a light refresh
3. Reuse the shared Context OS assets when available instead of inventing a new scaffold:
   - `assistant-context/templates/project-ctx/web-app.md`
   - `assistant-context/templates/project-ctx/web-app-starter/`
4. Start thin:
   - create or refresh only the core surfaces the project needs now
   - avoid copying optional indexes, runbooks, or checklists unless the current project slice justifies them
5. Ensure the minimum routing set exists and is usable:
   - repo-local `AGENTS.md`
   - `README.md`
   - `indexes/artifacts.md`
   - `tasks/active.md`
   - `tasks/stories/`
   - `decisions/`
6. Set up the first web-app discovery surfaces:
   - `indexes/screen-map.md`
   - the first story under `tasks/stories/`
   - `designs/screens/` only when screen-level UI work is expected soon
   - `designs/flows/` only when multi-screen flow review is already in scope
7. Clean placeholders aggressively:
   - replace example repo paths
   - replace placeholder screen slugs
   - remove starter sections that the real project does not need yet
8. Make the first story concrete enough for later execution:
   - objective or problem
   - actors or roles
   - in-scope screens or flows
   - acceptance criteria
   - linked screen spec, checklist, decision, or runbook only when needed
9. Activate extra surfaces only on trigger:
   - `checklists/` for medium or complex slices
   - `runbooks/` when release, staging, migrations, env vars, smoke tests, or rollback notes matter
   - extra indexes such as entities or permissions only when the same concepts are already repeating
10. Leave the repository in a recoverable state:
   - `tasks/active.md` points at the current story
   - `indexes/artifacts.md` routes to the active canonical artifacts
   - the next bootstrap or project step is explicit

## Boundaries

- Keep the skill thin and bootstrap-oriented; do not restate the entire Context OS policy baseline.
- Do not create a heavy empty folder tree just because the starter kit contains optional surfaces.
- Do not treat starter files as canonical forever; trim or replace them as soon as real project artifacts exist.
- Do not store private infrastructure details, secrets, or user data in the `-ctx` repository.

## Output shape

When this skill runs successfully, leave behind:

- a confirmed source repo and matching private `-ctx` repo path
- a bootstrapped or refreshed web-app `-ctx` structure based on the shared template or starter kit
- a first real story and an updated `tasks/active.md`
- a usable artifact index and screen map
- a short summary of which optional surfaces were intentionally activated or skipped
