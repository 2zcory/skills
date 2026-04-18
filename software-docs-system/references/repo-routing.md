# Repo Routing Rules

Documentation must be placed where it provides the most value while respecting security and collaboration boundaries.

## 1. Source Repository (Public/Private Code)

**Role**: Implementation orientation and public contracts.

- `README.md`: High-level "What/How." How to install, run, and test.
- `API.md` or `docs/api/`: Public API specifications.
- `LICENSE`: Project license.
- `docs/public/`: Any documentation intended for the end-user or external contributors.

## 2. Context Repository (`-ctx`)

**Role**: Internal execution, active stories, and temporary context.

- `tasks/active.md`: The immediate work focus.
- `tasks/stories/`: Detailed user stories and execution steps for specific features.
- `decisions/`: ADRs (Architecture Decision Records) related to internal implementation.
- `checklists/`: Operational checklists for release, migration, or testing.
- `demos/`: Links or notes regarding internal demos.

## 3. Knowledge Repository (`context-knowledge`)

**Role**: Durable, cross-project, and architectural understanding.

- `projects/[project-name]/architecture.md`: High-level system design (HLD).
- `projects/[project-name]/domain-model.md`: Business logic and data entities.
- `projects/[project-name]/database-schema.md`: Durable ERDs and data lifecycle.
- `specs/`: Reusable specifications or standards used across multiple projects.

## Routing Logic

- **Does it help me run the code?** -> Source Repo.
- **Does it record a decision I'll need in 6 months?** -> Context Repo (or Knowledge if cross-cutting).
- **Is it a requirement for a current task?** -> Context Repo.
- **Is it a reusable domain concept?** -> Knowledge Repo.
