# Next.js Feature Architecture

Shared engineering rules for **Next.js 16+ App Router** projects — architecture, Server Actions, code quality, and **AI agent instructions** (Cursor, Claude, Copilot, and more).

---

## Quick install

> **You do NOT need to clone this repo.**  
> Open your **Next.js app folder** in the terminal and run **one command**.

### Step 1 — Go to your app

```bash
cd path/to/your-nextjs-app
```

### Step 2 — Run this command

Pick **one** option below. Same command every time — only the flag at the end changes.

**All AI agents** (Cursor, Claude, Copilot, Windsurf, Gemini, etc.):

```bash
curl -fsSL \
  https://raw.githubusercontent.com/AliJabbar034/nextjs-feature-architecture/main/scripts/install.sh \
  | bash -s -- --all
```

**Cursor only** → adds `.cursor/rules/nextjs-feature-architecture.mdc`:

```bash
curl -fsSL \
  https://raw.githubusercontent.com/AliJabbar034/nextjs-feature-architecture/main/scripts/install.sh \
  | bash -s -- --cursor
```

**Claude Code only** → adds `CLAUDE.md` + `AGENTS.md`:

```bash
curl -fsSL \
  https://raw.githubusercontent.com/AliJabbar034/nextjs-feature-architecture/main/scripts/install.sh \
  | bash -s -- --claude
```

**Cursor + Claude** (common combo):

```bash
curl -fsSL \
  https://raw.githubusercontent.com/AliJabbar034/nextjs-feature-architecture/main/scripts/install.sh \
  | bash -s -- --cursor --claude
```

> Copy the **full block** for your choice. It downloads the guide, copies files into your app, then cleans up — **no git clone**.

### Step 3 — Commit in your app

```bash
git add .
git commit -m "Add Next.js feature architecture AI rules"
```

**Done.** Your AI tools will now follow the same standards.

---

## Other AI tools

Same pattern — change the flag at the end:

| I use… | Flag |
| --- | --- |
| GitHub Copilot | `--copilot` |
| Windsurf | `--windsurf` |
| Gemini | `--gemini` |
| Codex / generic agents | `--codex` |
| Continue.dev | `--continue` |
| Aider | `--aider` |
| JetBrains Junie | `--junie` |

Example for **Copilot only**:

```bash
curl -fsSL \
  https://raw.githubusercontent.com/AliJabbar034/nextjs-feature-architecture/main/scripts/install.sh \
  | bash -s -- --copilot
```

Combine flags if you use multiple tools, e.g. `--cursor --claude --copilot`.

---

## Alternative: copy folder (no internet command)

Use this if someone sent you the folder or you downloaded the **ZIP** from GitHub.

1. Unzip or copy the `nextjs-feature-architecture` folder
2. From your **app root**, run:

```bash
/path/to/nextjs-feature-architecture/scripts/install.sh --all \
  --source /path/to/nextjs-feature-architecture
```

**Example** (after downloading ZIP to Downloads):

```bash
~/Downloads/nextjs-feature-architecture-main/scripts/install.sh --all \
  --source ~/Downloads/nextjs-feature-architecture-main
```

---

## What gets installed?

| AI tool | Files added to your app |
| --- | --- |
| Cursor | `.cursor/rules/nextjs-feature-architecture.mdc` |
| Claude Code | `CLAUDE.md` + `AGENTS.md` |
| GitHub Copilot | `.github/copilot-instructions.md` |
| Windsurf | `.windsurfrules` |
| Gemini | `GEMINI.md` |
| Codex / agents | `AGENTS.md` |
| Continue.dev | `.continue/rules/nextjs-feature-architecture.md` |
| Aider | `CONVENTIONS.md` |
| JetBrains Junie | `.junie/guidelines.md` |

---

## After install

1. **Commit** the new files in your app repo
2. **Customize** rules for your project (backend: external API vs Next.js BFF)
3. Add `config/env.ts` and `.env.example` when you wire env vars

---

## What's in this guide repo?

| Path | Purpose |
| --- | --- |
| `rules/core-rules.md` | Single source of truth — edit this first |
| `scripts/install.sh` | Install into any app (one command or local folder) |
| `scripts/sync-agent-rules.sh` | Regenerate agent files after editing core rules |
| `agents/*` | Per-tool rule files (Cursor, Claude, Copilot, …) |

---

## Rules cover

- Feature folders (`features/*/actions`, `components`, `schemas`)
- Server Actions vs Route Handlers (external API vs Next BFF)
- Zod, React Hook Form, Tailwind CSS 4
- ESLint, Prettier, Husky
- kebab-case naming, package manager policy
- AI agent guardrails

---

## Maintainers (updating this guide)

```bash
git clone https://github.com/AliJabbar034/nextjs-feature-architecture.git
# edit rules/core-rules.md
./scripts/sync-agent-rules.sh
git commit -am "Update rules" && git push
```

Teams refresh with the **Quick install** command again.

---

## License

MIT — see [LICENSE](LICENSE).
