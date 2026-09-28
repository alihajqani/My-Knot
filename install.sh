#!/usr/bin/env bash
# Link My-Knot skills into Claude Code. Safe to run more than once.
set -euo pipefail

VAULT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"
mkdir -p "$SKILLS_DIR"

for skill in "$VAULT"/skills/*/; do
  name="$(basename "$skill")"
  target="$SKILLS_DIR/$name"
  if [ -L "$target" ]; then
    ln -sfn "$VAULT/skills/$name" "$target"
    echo "updated  /$name"
  elif [ -e "$target" ]; then
    echo "SKIPPED  /$name — $target already exists and is not a link. Move it away and rerun."
  else
    ln -s "$VAULT/skills/$name" "$target"
    echo "linked   /$name"
  fi
done

if [ ! -d "$VAULT/.git" ]; then
  git -C "$VAULT" init -q && echo "git repo initialized"
fi

echo
echo "Vault: $VAULT"
echo "Make sure this path matches ~/.claude/CLAUDE.md and additionalDirectories in ~/.claude/settings.json."
