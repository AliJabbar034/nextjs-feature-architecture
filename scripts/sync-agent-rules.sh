#!/usr/bin/env bash
# Regenerate all agent rule files from rules/core-rules.md
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CORE="$ROOT/rules/core-rules.md"

if [[ ! -f "$CORE" ]]; then
  echo "Missing $CORE"
  exit 1
fi

echo "Syncing from $CORE ..."

# Cursor
{
  printf '%s\n' '---' 'alwaysApply: true' '---'
  cat "$CORE"
} > "$ROOT/agents/cursor/.cursor/rules/nextjs-feature-architecture.mdc"

# Claude
{
  cat << 'HDR'
# Next.js Feature Architecture

> Synced from `rules/core-rules.md`. Run `./scripts/sync-agent-rules.sh` after edits.

HDR
  cat "$CORE"
} > "$ROOT/agents/claude/CLAUDE.md"

cat > "$ROOT/agents/claude/AGENTS.md" << 'EOF'
@CLAUDE.md

<!-- BEGIN:nextjs-agent-rules -->
# This is NOT the Next.js you know

This version has breaking changes — APIs, conventions, and file structure may all differ from your training data. Read the relevant guide in `node_modules/next/dist/docs/` before writing any code. Heed deprecation notices.
<!-- END:nextjs-agent-rules -->
EOF

# GitHub Copilot
{
  cat << 'HDR'
# Next.js Feature Architecture — Copilot Instructions

Apply these rules to all suggestions in this repository.

HDR
  cat "$CORE"
} > "$ROOT/agents/github-copilot/.github/copilot-instructions.md"

# Windsurf
{ echo "# Next.js Feature Architecture — Windsurf Rules"; echo; cat "$CORE"; } > "$ROOT/agents/windsurf/.windsurfrules"

# Gemini
{ echo "# Next.js Feature Architecture — Gemini Instructions"; echo; cat "$CORE"; } > "$ROOT/agents/gemini/GEMINI.md"

# Codex
{ echo "# Next.js Feature Architecture — Codex / Agent Instructions"; echo; cat "$CORE"; } > "$ROOT/agents/codex/AGENTS.md"

# Continue
{
  cat << 'HDR'
---
name: Next.js Feature Architecture
description: Shared Next.js App Router engineering standards
alwaysApply: true
---

HDR
  cat "$CORE"
} > "$ROOT/agents/continue/.continue/rules/nextjs-feature-architecture.md"

# Aider
{ echo "# Next.js Feature Architecture — Aider Conventions"; echo; cat "$CORE"; } > "$ROOT/agents/aider/CONVENTIONS.md"

# JetBrains Junie
{ echo "# Next.js Feature Architecture — Junie Guidelines"; echo; cat "$CORE"; } > "$ROOT/agents/jetbrains-junie/.junie/guidelines.md"

echo "Done. Agent files updated."
