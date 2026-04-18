# Document Packs

Use this reference when the user needs help choosing the right document pack instead of defaulting to a full formal stack.

## Core rule

Choose the smallest pack that can safely govern the next downstream role.

## Pack selection by project phase

### Discovery-heavy project

Prefer:

- BRD or scope note
- stakeholder or actor map
- use cases or high-level flows
- early story candidates

Add only if needed:

- SRS when system boundaries already matter
- HLD when integration or platform shape is already a decision

### Specification-heavy project

Prefer:

- SRS
- FRS
- user stories
- acceptance criteria
- use cases or user flows

Add only if needed:

- HLD when the system shape is a real implementation constraint
- database design when data ownership or lifecycle is central

### Design-heavy project

Prefer:

- HLD
- LLD
- UI/UX spec
- API or integration notes
- database design

Add only if needed:

- BRD refresh when the underlying goal has drifted
- FRS refresh when behavior changed materially

### Delivery-heavy project

Prefer:

- execution slices
- repo routing
- backlog or milestone map
- readiness checks
- traceability notes back to approved docs

## Pack selection by product archetype

### Web app

Typical minimum pack:

- BRD or scope note
- SRS or FRS
- user flows
- HLD
- UI/UX spec
- implementation slices

Add:

- database design when data model complexity is meaningful
- API contract notes when the frontend-backend boundary is material

### Browser extension

Typical minimum pack:

- BRD or problem note
- FRS
- use cases
- HLD
- UI/UX behavior spec
- delivery handoff

Add:

- permission and storage notes
- browser API interaction notes

### Backend or API product

Typical minimum pack:

- BRD or scope note
- SRS
- FRS
- HLD
- API or integration contract
- database design
- delivery handoff

### Mobile app

Typical minimum pack:

- BRD
- FRS
- user flows
- HLD
- UI/UX spec
- data model or sync notes
- delivery handoff

### Internal tool

Typical minimum pack:

- workflow note or mini-BRD
- FRS
- actor flows
- HLD
- implementation slices

Keep this lean unless audit, approval, or compliance concerns justify more structure.

## Escalation triggers

Increase pack rigor when the project affects:

- permissions
- money
- compliance
- auditability
- irreversible actions
- customer-visible failure states

When these triggers appear, make rules, exceptions, and failure handling explicit before slicing the work into backlog items.
