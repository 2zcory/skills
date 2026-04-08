#!/usr/bin/env python3

"""Reconcile authored skills in this repo against the Codex runtime skill path."""

from __future__ import annotations

import argparse
import os
import shutil
import sys
from pathlib import Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Create or refresh runtime symlinks for authored skills in this repo. "
            "A skill is any direct child directory containing SKILL.md."
        )
    )
    parser.add_argument(
        "--repo-root",
        default=str(Path(__file__).resolve().parents[1]),
        help="Path to the authored skills repo root. Defaults to this script's repo root.",
    )
    parser.add_argument(
        "--runtime-root",
        default="~/.codex/skills",
        help="Runtime skill discovery path to reconcile against. Default: ~/.codex/skills",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Show intended changes without mutating the filesystem.",
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="Replace existing runtime entries even when they are not symlinks.",
    )
    return parser.parse_args()


def authored_skills(repo_root: Path) -> list[Path]:
    skills: list[Path] = []
    for child in sorted(repo_root.iterdir()):
        if child.name.startswith("."):
            continue
        if not child.is_dir():
            continue
        if (child / "SKILL.md").is_file():
            skills.append(child)
    return skills


def ensure_runtime_link(skill_dir: Path, runtime_root: Path, dry_run: bool, force: bool) -> str:
    runtime_entry = runtime_root / skill_dir.name
    target = skill_dir.resolve()

    if runtime_entry.is_symlink():
        current = runtime_entry.resolve()
        if current == target:
            return f"ok      {runtime_entry} -> {target}"
        if not dry_run:
            runtime_entry.unlink()
            runtime_entry.symlink_to(target, target_is_directory=True)
        return f"update  {runtime_entry} -> {target}"

    if runtime_entry.exists():
        if not force:
            return f"skip    {runtime_entry} exists and is not a symlink"
        if not dry_run:
            if runtime_entry.is_dir():
                shutil.rmtree(runtime_entry)
            else:
                runtime_entry.unlink()
            runtime_entry.symlink_to(target, target_is_directory=True)
        return f"replace {runtime_entry} -> {target}"

    if not dry_run:
        runtime_entry.symlink_to(target, target_is_directory=True)
    return f"create  {runtime_entry} -> {target}"


def main() -> int:
    args = parse_args()
    repo_root = Path(args.repo_root).expanduser().resolve()
    runtime_root = Path(args.runtime_root).expanduser().resolve()

    if not repo_root.is_dir():
        print(f"repo root does not exist: {repo_root}", file=sys.stderr)
        return 1
    if not runtime_root.is_dir():
        print(f"runtime root does not exist: {runtime_root}", file=sys.stderr)
        return 1

    skills = authored_skills(repo_root)
    if not skills:
        print(f"no authored skills found under {repo_root}")
        return 0

    print(f"repo root:    {repo_root}")
    print(f"runtime root: {runtime_root}")
    print(f"mode:         {'dry-run' if args.dry_run else 'apply'}")

    for skill in skills:
        print(ensure_runtime_link(skill, runtime_root, args.dry_run, args.force))

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
