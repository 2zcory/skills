---
name: "software-docs-system"
description: "Use when a software project needs a coherent documentation system across business requirements, functional and system specifications, design, and delivery handoff. This skill integrates deeply with Context OS, utilizing the three-surface model (Source, -ctx, Knowledge) and AI-native workflows like story-capture and ADRs."
---

# Software Docs System

Use this skill when the user wants durable project documentation that serves both humans and AI assistants effectively.

## Use this skill when

- The project needs a document pack (BRD, SRS, HLD, LLD, etc.) that stays coherent across phases.
- You need to capture user requirements from chat into formal User Stories in the `-ctx` repo.
- Technical decisions need to be recorded as ADRs (Architecture Decision Records).
- You need to map how documentation should be distributed across Source, Context, and Knowledge repos.
- The project requires visual diagrams using Mermaid.js for architecture or flows.

## Core rules

1. **Lightweight & Governing**: Build the smallest set of docs that can actually guide implementation.
2. **Context OS Native**: 
   - **Source Repo**: Code-adjacent docs (README, API spec).
   - **Context Repo (`-ctx`)**: Active stories, internal planning, and handoff notes.
   - **Knowledge Repo**: Durable architecture, domain models, and cross-project specs.
3. **Traceability**: Every story must map to a requirement; every implementation must map to a story.
4. **Bilingual Bridge**: Write primary docs in English, but provide a concise Vietnamese summary for the user.

## Documentation modes

- `pack-design`: Design the documentation strategy for the project.
- `artifact-create`: Generate specific docs (ADR, SRS, Story, etc.).
- `story-capture`: Convert chat-based requirements into structured stories in the `-ctx` repo.
- `context-sync`: Verify that docs and implementation are aligned.

## Workflow

1. **Classify & Map**: Identify project type and map it to the Context OS three-surface model.
2. **Capture Intent**: Use `story-capture` to turn user prompts into formal requirements.
3. **Design the Pack**: Choose minimum necessary artifacts (e.g., ADR + SRS + Stories).
4. **Visualize**: Use Mermaid.js for complex logic or architecture.
5. **Route & Handoff**: Place docs in the correct repo and define next execution steps.

## Implementation Tips

- **Mermaid.js**: Always prefer Mermaid diagrams over text-heavy descriptions for flows or ERDs.
- **ADRs**: Create an ADR whenever a non-trivial technical choice is made (e.g., choosing a library, changing a layout pattern).
- **README Alignment**: Keep the source README focused on "What/How to run" and point to `-ctx` or `knowledge` for "Why/Future."
- **Story Slicing**: Ensure user stories are small enough to be "shipped" in one or two sessions.

## References

- [references/templates.md](references/templates.md) - Artifact skeletons.
- [references/adr-template.md](references/adr-template.md) - Decision record format.
- [references/repo-routing.md](references/repo-routing.md) - Context OS placement rules.
