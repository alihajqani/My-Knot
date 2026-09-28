---
name: lesson
description: End-of-session learning review. Use when the user runs /lesson or asks to turn the current work session into learning notes in the My-Knot vault. The user explains first; Claude corrects; notes stay short.
---

# /lesson — turn this session into learning

The vault path is set in `~/.claude/CLAUDE.md` (default `/home/hajqani/Workspace/My-Knot`). Call it `VAULT` below. Write ONLY inside `VAULT`, never in the project repo.

The goal is retrieval, not reading. Do not write a tutorial. The user must think before you explain.

## Steps

### 1. Gather what happened (silently)

- Project = basename of `git rev-parse --show-toplevel`.
- Work done: `git log --since=midnight --stat` plus `git diff HEAD --stat`. If nothing is found, use this conversation's history.
- Read `VAULT/learner-profile.md`, `VAULT/Projects/<project>.md` if it exists, and the file list of `VAULT/Concepts/`.

### 2. Pick at most 3 concepts

Pick concepts that were actually used, debugged, or decided on in this session AND are new or weak for the user (per the learner profile and existing concept statuses). Prefer concepts linked to a resume claim in `VAULT/00-Target/resume-claims.md`.

If a concept note already exists, you will update it, not create a duplicate.

Tell the user the 3 concepts in one line each and ask if they want to swap any.

### 3. Quiz before explaining — one concept at a time

For each concept:

1. Ask ONE question that makes the user explain it in their own words, tied to this project (e.g. "Why did we measure precision instead of accuracy for the judge?"). Then STOP and wait for the answer. Do not hint in the same message.
2. After the answer, give feedback in at most 5 lines: what was right, what was wrong or missing. Be honest; do not praise a wrong answer.
3. If the answer was far off, give the simple version (one analogy) and ask one follow-up question. Maximum two rounds per concept.

Talk to the user in Persian with English technical terms, unless the learner profile says otherwise.

### 4. Write the notes

Follow the templates in `VAULT/templates/`. Hard limits:

- **Concept note** (`VAULT/Concepts/<kebab-name>.md`): max ~40 lines. "In my own words" is the user's answer, copied as-is. Add at most 3 flashcards in `Question::Answer` format. One exercise that can be done without AI from a blank file.
- **Session note** (`VAULT/Sessions/<YYYY-MM-DD>-<project>.md`): max ~25 lines. If one exists for today, append to it.
- **Mistake note** (`VAULT/Mistakes/<kebab-name>.md`): only if a real bug or wrong turn happened in this session.
- Add a link to the session note under "## Log" in `VAULT/Projects/<project>.md`. Create the project note from what the user has said if it doesn't exist.

Use `[[wikilinks]]` between notes so Obsidian's graph connects them.

### 5. Status

- A concept may move `unknown → explained` only if the user's explanation was essentially correct. Propose it and ask the user to confirm.
- Never set `reproduced` or `defended` here. Those belong to `/check` and `/defend`.
- Never mark anything as understood because the code works.

### 6. Finish

End with 3 lines max: which notes were written or updated, and the one exercise to do next. Do not commit to git unless asked.
