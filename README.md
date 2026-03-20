# Skills

Public Codex skills and reusable agent workflows.

## Purpose

- publish reusable skills without private workflow notes
- keep each skill self-contained and easy to reuse
- pair this public repo with the private context repo `skills-ctx` for story capture and internal workflow

## Current Skills

- `ui-screen-review`: classify screen-level UI changes, maintain canonical review artifacts, and stop at the design-approval gate

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
