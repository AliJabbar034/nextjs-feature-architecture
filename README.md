# Next.js Feature Architecture

Reusable engineering guide for **Next.js 16+ App Router** projects — feature-based architecture, Server Actions, API patterns, code quality, naming conventions, and **AI agent rules** your whole team can share.

**No git clone required.** Copy folders directly or run **one command** into your app.

---

## Install into your app (pick one method)

### Method 1 — One command (recommended)

Run from your **Next.js app root**:

```bash
curl -fsSL https://raw.githubusercontent.com/AliJabbar034/nextjs-feature-architecture/main/scripts/install.sh | bash -s -- --all
```

Install only the agents you use:

```bash
curl -fsSL https://raw.githubusercontent.com/AliJabbar034/nextjs-feature-architecture/main/scripts/install.sh | bash -s -- --cursor --claude --copilot
```

With a custom repo:

```bash
GITHUB_REPO=AliJabbar034/nextjs-feature-architecture \
  curl -fsSL https://raw.githubusercontent.com/AliJabbar034/nextjs-feature-architecture/main/scripts/install.sh | bash -s -- --all
```

---

### Method 2 — Copy folder directly (no clone, no curl)

Use this when a teammate shared the folder, or you downloaded the repo as **ZIP** from GitHub.

1. Get the guide folder — any of:
   - Download ZIP: GitHub → **Code** → **Download ZIP**
   - Copy `nextjs-feature-architecture/` from a USB, Slack, or shared drive
   - `scp` the folder from another machine

2. From your **app root**, run the install script pointing at that folder:

```bash
/path/to/nextjs-feature-architecture/scripts/install.sh --all \
  --source /path/to/nextjs-feature-architecture
```

Example after unzipping Downloads:

```bash
~/Downloads/nextjs-feature-architecture-main/scripts/install.sh --all \
  --source ~/Downloads/nextjs-feature-architecture-main
```

Or **manually copy** one agent folder’s output paths:

| Agent | Copy from (inside guide repo) | Paste into your app |
| --- | --- | --- |
| **Cursor** | `agents/cursor/.cursor/rules/*` | `.cursor/rules/` |
| **Claude** | `agents/claude/CLAUDE.md`, `AGENTS.md` | app root |
| **Copilot** | `agents/github-copilot/.github/*` | `.github/` |
| **Windsurf** | `agents/windsurf/.windsurfrules` | app root |
| **Gemini** | `agents/gemini/GEMINI.md` | app root |
| **Codex** | `agents/codex/AGENTS.md` | app root |
| **Continue** | `agents/continue/.continue/rules/*` | `.continue/rules/` |
| **Aider** | `agents/aider/CONVENTIONS.md` | app root |
| **Junie** | `agents/jetbrains-junie/.junie/*` | `.junie/` |

---

### Method 3 — Full clone (for maintainers only)

Only needed if you **edit** the shared rules and push updates:

```bash
git clone https://github.com/AliJabbar034/nextjs-feature-architecture.git
cd your-next-app
../nextjs-feature-architecture/scripts/install.sh --all \
  --source ../nextjs-feature-architecture
```

---

## Install script options

```bash
./scripts/install.sh --help
```

| Flag | Description |
| --- | --- |
| `--all` | Install every supported agent |
| `--cursor` | Cursor rules |
| `--claude` | Claude Code |
| `--copilot` | GitHub Copilot |
| `--windsurf` | Windsurf |
| `--gemini` | Gemini |
| `--codex` | Codex / generic `AGENTS.md` |
| `--continue` | Continue.dev |
| `--aider` | Aider |
| `--junie` | JetBrains Junie |
| `--target <dir>` | App path (default: current directory) |
| `--source <dir>` | Local guide folder (skip download) |

---

## What's inside this repo

| Path | Purpose |
| --- | --- |
| `rules/core-rules.md` | **Single source of truth** — edit this first |
| `scripts/install.sh` | One-command / local-folder install into any app |
| `scripts/sync-agent-rules.sh` | Regenerate all agent files after editing core rules |
| `agents/cursor/` | [Cursor](https://cursor.com) |
| `agents/claude/` | [Claude Code](https://docs.anthropic.com/en/docs/claude-code) |
| `agents/github-copilot/` | [GitHub Copilot](https://docs.github.com/en/copilot) |
| `agents/windsurf/` | [Windsurf](https://codeium.com/windsurf) |
| `agents/gemini/` | Gemini-style tools |
| `agents/codex/` | OpenAI Codex / agent runners |
| `agents/continue/` | [Continue.dev](https://continue.dev) |
| `agents/aider/` | [Aider](https://aider.chat) |
| `agents/jetbrains-junie/` | JetBrains Junie |
| `templates/install.md` | Printable checklist |

---

## After install

1. **Commit** the new rule files in your app repo
2. **Customize** backend mode (external API vs Next.js BFF vs hybrid)
3. Add **`config/env.ts`** and **`.env.example`** in your app
4. Ensure **ESLint + Prettier + Husky** exist (see rules — Code Quality section)

---

## Updating rules (maintainers)

1. Edit **`rules/core-rules.md`**
2. Run **`./scripts/sync-agent-rules.sh`**
3. Commit, tag, and push — teams re-run **`install.sh`** or copy updated files

---

## Topics covered

- Feature folder structure (`features/*/actions`, `components`, `schemas`)
- Server Actions vs Route Handlers (external vs BFF vs hybrid)
- Zod, React Hook Form, Tailwind CSS 4
- ESLint, Prettier, Husky, lint-staged
- kebab-case naming, package manager policy, `@latest` installs
- Ask user for tests after feature completion
- AI agent guardrails

## License

MIT — see [LICENSE](LICENSE).
