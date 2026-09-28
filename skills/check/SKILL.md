---
name: check
description: Review an exercise the user did without AI for a concept in the My-Knot vault. Use when the user runs /check or says they finished a vault exercise.
---

# /check — review an exercise done without AI

The vault path is set in `~/.claude/CLAUDE.md` (default `/home/hajqani/Workspace/My-Knot`). Call it `VAULT`.

## Steps

1. Ask which concept (or infer it from the user's message) and read `VAULT/Concepts/<name>.md`, especially the "Exercise" section.
2. Ask the user to paste their solution or point to the file. Also ask one honest question: "Did you use AI or look anything up while doing it?" Looking up official docs is fine; AI-written code is not.
3. Review the solution like a strict but fair senior engineer:
   - Does it do what the exercise asked? Run it if possible.
   - Up to 3 concrete issues, most important first.
   - One question about a trade-off or edge case in their solution. Wait for the answer.
4. Do NOT rewrite their solution. Point to the problem and let them fix it. Show a fix only if they ask after trying.
5. Status:
   - If it works and they used no AI and answered the follow-up reasonably, propose `explained → reproduced` and ask the user to confirm.
   - Otherwise keep the status and say what's missing in one line.
6. Append a short "## Check <date>" section to the concept note (max 5 lines): result, main issue, status change if any. Update `last_reviewed`.

Talk in Persian with English technical terms unless the learner profile says otherwise.
