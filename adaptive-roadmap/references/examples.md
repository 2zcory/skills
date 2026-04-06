# Examples

Use these as shape cues, not rigid templates.

## Example: Discovery Roadmap

- `Current phase`: Discovery
- `Desired outcomes`: confirm that a narrow user problem is painful enough to justify a first product slice
- `Anti-goals`: do not build the full platform; do not optimize for scale before evidence exists
- `Roadmap slices`:
  - `Goal`: run 8 to 10 user interviews and test one narrow workflow concept
  - `Why now`: problem clarity is weaker than implementation clarity
  - `Dependencies`: access to target users
  - `Dependency confidence`: medium
  - `Evidence quality`: weak today; expected to improve after interviews
  - `Decision boundary`: proceed only if repeated pain and a viable workflow pattern appear
  - `Invalidation check`: if interviews show low urgency or fragmented needs, stop or narrow further
  - `Exit criteria`: one validated problem statement and one candidate first slice
- `What not to build yet`: generalized admin tooling, analytics dashboards, and multi-role permission systems

## Example: Mixed-Stream Rescue Roadmap

- `Active workstreams`:
  - `Product validation`
    - `Current phase`: Validation
    - `Goal`: confirm whether the current feature direction still solves a real operator problem
    - `Dependency confidence`: medium
    - `Evidence quality`: mixed; roadmap confidence is based on old assumptions
    - `Decision boundary`: keep feature expansion only if current users still value the workflow
  - `Feature delivery`
    - `Current phase`: Delivery
    - `Goal`: finish the smallest usable subset already in flight
    - `Dependency confidence`: high for internal engineering work, low for external integrations
    - `Evidence quality`: strong on implementation state, weak on business priority
    - `Decision boundary`: ship only the narrow slice that does not depend on unresolved product questions
  - `Operational hardening`
    - `Current phase`: Hardening
    - `Goal`: reduce deployment and rollback risk for the next release window
    - `Dependency confidence`: medium
    - `Evidence quality`: strong on recent incidents, medium on root-cause closure
    - `Decision boundary`: prefer fixes that materially reduce release risk over nice-to-have refactors
- `Replan triggers`: user interviews reverse the feature priority, an external dependency slips, or release-risk fixes expose wider architecture debt
- `What not to build yet`: new cross-cutting abstractions, new secondary features, or infrastructure cleanup unrelated to the immediate release-risk boundary
