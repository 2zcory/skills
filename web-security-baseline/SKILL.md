---
name: "web-security-baseline"
description: "Use when a web application needs a practical security baseline review before implementation or release continues. Surface the real risk boundaries around auth, sessions, permissions, inputs, uploads, secrets, abuse controls, and auditability, then turn them into a concise baseline with explicit gaps and follow-up checks."
---

# Web Security Baseline

Use this skill when a web application needs a practical product-security baseline rather than vague reassurance or a full formal security assessment.

## Use this skill when

- A web app is introducing auth, session, role, admin, or upload features.
- A release changes public exposure, data handling, or permission boundaries.
- The team needs a concise security baseline before building or shipping a feature.

Do not use this skill as a substitute for formal security review when the risk profile clearly requires that depth.

## Workflow

1. Identify the actual security-sensitive surfaces in scope:
   - auth and identity
   - session handling
   - roles and permissions
   - input handling and uploads
   - secrets and environment values
   - abuse controls such as rate limiting
   - logging and auditability
2. Separate public-facing risk from internal-only assumptions.
3. Make the trust boundaries explicit:
   - who can access what
   - what the client is allowed to assume
   - what the server must enforce
4. Highlight the biggest likely failure modes, not a generic long list.
5. Recommend the minimum concrete baseline that should exist before the work is treated as ready.
6. Call out unresolved gaps, follow-up checks, and where deeper review is still needed.

## Output shape

When this skill runs successfully, leave behind:

- in-scope security surfaces
- main trust boundaries
- likely failure modes
- practical baseline controls
- unresolved gaps and next checks

## Boundaries

- Stay practical and risk-driven; avoid generic security theater.
- Do not claim a system is secure just because a baseline list exists.
- Do not include secrets, private URLs, or sensitive exploit detail in the output.
- Keep the skill reusable across web stacks instead of anchoring it to one framework.
