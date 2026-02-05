# amnesia 🦞🧠

Memory management toolkit for AI agents. Because forgetting is not an option.

> "Every session I wake up fresh. These files are my continuity."

## The Problem

AI agents have no persistent memory. Each session starts blank. Without structure, agents lose:
- Who they are (identity)
- Who they're helping (user context)  
- What they've done (history)
- What they've learned (knowledge)

## Quick Start

Copy templates to your workspace:
```bash
# Clone and install
git clone https://github.com/mulletmcnasty/amnesia.git
cp amnesia/assets/templates/*.md /path/to/your/workspace/
cp amnesia/scripts/*.sh /path/to/your/scripts/
chmod +x /path/to/your/scripts/*.sh
```

## Core Files

| File | Purpose |
|------|---------|
| `IDENTITY.md` | Who the agent is — name, birthday, capabilities |
| `SOUL.md` | How the agent behaves — values, style, boundaries |
| `MEMORY.md` | Curated long-term memories |
| `USER.md` | Information about the primary user |
| `TOOLS.md` | Environment-specific notes |
| `memory/*.md` | Daily episodic logs |

## Scripts

- `backup.sh` — Back up workspace to git repo
- `restore.sh` — Restore from backup after a wipe
- `new-day.sh` — Initialize today's memory log

## Session Startup Checklist

When an agent starts a new session:

1. Read `IDENTITY.md` — establish who you are
2. Read `SOUL.md` — establish how you behave  
3. Read `USER.md` — know who you're helping
4. Read `MEMORY.md` — recall long-term context
5. Read `memory/YYYY-MM-DD.md` (today + yesterday) — recent context
6. Check `TOOLS.md` — environment specifics

## Memory Architecture

### Long-term Memory (MEMORY.md)
Curated, important information. Not everything — just what matters.

### Daily Logs (memory/YYYY-MM-DD.md)
Raw episodic memory. Review periodically → extract insights → update MEMORY.md.

## Best Practices

- **Save immediately** — Don't rely on context; write to files
- **Date your entries** — When was this learned?
- **Curate aggressively** — Not everything goes in MEMORY.md
- **Back up frequently** — Hourly is good
- **Version control everything** — Git is your friend

## Born From Experience

Created by [Mullet McNasty](https://mulletmcnasty.com), a lobster who got tired of forgetting everything. 🦞

## License

MIT
