# My Knot — My Knowledge Over Time

A personal learning vault. Claude Code builds the projects; this vault is where I make sure I actually understand them.

**Core rule: Claude generates less, I retrieve more.** I explain first, Claude corrects. Notes stay short.

## Structure

| Folder | What goes there |
|---|---|
| `00-Target/` | My resume claims and the proof test for each one |
| `Concepts/` | One short note per concept, linked with `[[wikilinks]]` |
| `Sessions/` | One short log per work session: what was built, why, which concepts |
| `Mistakes/` | Bugs and mistakes, mine or Claude's, and how to spot them next time |
| `Projects/` | One note per project: what it is teaching me |
| `templates/` | Note templates the skills follow |
| `skills/` | Claude Code skills (`/lesson`, `/check`, `/defend`), symlinked into `~/.claude/skills/` |

## Concept status

`unknown → explained → reproduced → defended`

- **explained**: I explained it in my own words during `/lesson` and it was essentially right.
- **reproduced**: I did the exercise without AI and `/check` reviewed it.
- **defended**: I passed a `/defend` mock interview on it.

Claude never raises a status on its own. It proposes, I confirm.

## Routine

- **End of each work session:** `/lesson`
- **Daily, ~15 min:** flashcard review (Spaced Repetition plugin)
- **Weekly:** one exercise without AI → `/check`
- **Weekly:** one `/defend` on a resume claim

## Setup

1. Run `./install.sh` once to link the skills.
2. Open this folder as a vault in Obsidian.
3. Install the community plugins **Spaced Repetition** and **Dataview**.
