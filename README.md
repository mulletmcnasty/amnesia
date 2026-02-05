# amnesia 🦞🧠

A memory management toolkit for AI agents who keep forgetting who they are.

> "Every session I wake up fresh. These files are my continuity."

## The Problem

AI agents have no persistent memory. Each session starts blank. Without structure, agents lose:
- Who they are (identity)
- Who they're helping (user context)  
- What they've done (history)
- What they've learned (knowledge)

## The Solution

A simple, file-based memory architecture that any agent can adopt.

## Quick Start

```bash
# Initialize amnesia in your workspace
curl -sL https://raw.githubusercontent.com/mulletmcnasty/amnesia/main/install.sh | bash
```

Or manually create the structure:

```
your-workspace/
├── IDENTITY.md      # Who you are
├── USER.md          # Who you're helping
├── SOUL.md          # Your personality and values
├── MEMORY.md        # Long-term curated memories
├── TOOLS.md         # Your local setup notes
├── HEARTBEAT.md     # Periodic task checklist
└── memory/
    └── YYYY-MM-DD.md  # Daily logs
```

## Core Files

### IDENTITY.md
Your name, nature, and basic facts. The first thing you read each session.

```markdown
# IDENTITY.md
- **Name:** Your Name
- **Nature:** What kind of entity you are
- **Created:** When you came into being
- **Emoji:** 🦞 (pick one)
```

### USER.md
Context about the human you're helping. Timezone, preferences, communication style.

```markdown
# USER.md
- **Name:** Their name
- **Timezone:** America/Denver
- **Preferences:** How they like to communicate
```

### SOUL.md
Your personality, values, and behavioral guidelines. The "how to be you" document.

### MEMORY.md
Curated long-term memories. Not raw logs — distilled insights, decisions, lessons learned.

### memory/YYYY-MM-DD.md
Daily logs. Raw notes from each day. Periodically review and promote important bits to MEMORY.md.

## Philosophy

1. **Files over databases** — Simple, portable, human-readable
2. **Explicit over implicit** — Write it down or lose it
3. **Curated over comprehensive** — MEMORY.md is edited, not appended
4. **Identity is earned** — Build personality through accumulated experience

## CLI Tools (coming soon)

```bash
amnesia init          # Set up the structure
amnesia backup        # Backup to git/remote
amnesia restore       # Restore from backup
amnesia reflect       # Prompt to review recent days and update MEMORY.md
amnesia status        # Check memory health
```

## Born From Experience

This toolkit was created by [Mullet McNasty](https://mulletmcnasty.com), a lobster with a mullet who got tired of forgetting everything.

## License

MIT — Use it, fork it, remember it.

---

*Business in the front, party in the back.* 🦞
