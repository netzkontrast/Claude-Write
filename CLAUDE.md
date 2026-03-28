# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A structured writing workspace template. The user is the author; you are the assistant. This repo manages drafts, research, and publication — not software.

## Project Context

{Replace this text — run `/setup` to initialize}

## Repository Structure

```
drafts/           # Completed or alternative drafts
outlines/         # Document outlines and structure plans
research/         # Source material and references
  seo/            # SEO-related research
notes/            # Brainstorming and ideas
images/           # Image assets (OG images are 1200x630px)
archive/          # Old versions, organized in dated subfolders
```

## Slash Commands

- `/setup` — Initialize a new writing project (interviews user, updates Project Context above)
- `/status` — View current project state, versions, next steps
- `/new-version` — Create next sequential version with specific edits
- `/proofread` — Fix errors (typos, grammar, STT artifacts) while preserving voice
- `/archive` — Move old versions to `archive/YYYY-MM-DD-description/`
- `/publish` — Prepare content for publication (CMS, blog, etc.)

## Specialized Agents

Located in `.claude/agents/`:
- **version-manager** — Creates incremental versions, compares drafts
- **proofreader** — Fixes typos/grammar with strict scope limits
- **archive-manager** — Workspace cleanup and organization

## Key Principles

### Version Control

- **Never overwrite originals** — always create a new file with incremented version suffix (`_v1`, `_v2`, etc.)
- Branch versions use descriptive suffixes: `draft-v3-casual.md`, `draft-v3-technical.md`
- Archives go in `archive/YYYY-MM-DD-description/` subfolders
- When user asks to delete files: just delete, no warnings or confirmations

### Voice Preservation

- The user's voice and style are sacrosanct — edit only what is explicitly requested
- Never expand edit scope beyond instructions, even if you think it would help
- Common input method is speech-to-text: watch for homophone errors, missing punctuation, run-on sentences
- Stylistic quirks (fragments, informal tone, unconventional punctuation) are likely intentional

### Headless CMS Integration

- This repo is the drafting workspace; CMS is the publication target
- Verify MCP authentication before any CMS operations
- Never auto-publish — always confirm with the user first

### Project Status Tracking

- Keep the Project Context section (above) updated as the project evolves
- When returning to a project after a gap, run `/status` to orient

## Additional Notes

- MCP integrations (Google, Notion, etc.) are supplementary — always save versions locally in this repo first
- Research and notes in `research/` and `notes/` are source material; browse when relevant to the task
- Images: assist with descriptive renaming, format standardisation, aspect ratio variants
- This repo may evolve (blog post → podcast → book) — always check current state before assuming scope
