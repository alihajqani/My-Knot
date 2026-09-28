---
name: defend
description: Mock technical interview on one resume claim or concept from the My-Knot vault. Use when the user runs /defend, optionally with a claim ID (e.g. S2) or concept name.
---

# /defend — mock interview on one claim

The vault path is set in `~/.claude/CLAUDE.md` (default `/home/hajqani/Workspace/My-Knot`). Call it `VAULT`.

## Setup

1. Read `VAULT/00-Target/resume-claims.md` and `VAULT/learner-profile.md`.
2. If the user gave a claim ID or concept, use it. Otherwise suggest the claim with status `Assisted` that has the most linked concepts, and ask.
3. Read the linked concept notes and any sessions or mistakes that mention them.

## The interview

Play a realistic, skeptical interviewer for an ML Engineer role. Ask exactly 5 questions, ONE per message, and wait for each answer:

1. **Open:** "Tell me about [claim]." Let them tell the story.
2. **Mechanism:** how the core technique works.
3. **Numbers:** how the metric in the claim was measured and why that measurement is fair (baseline, test set, variance).
4. **Trade-off:** what they gave up, and what alternative they rejected.
5. **Failure:** what went wrong or what would break at 10x scale.

Rules during the interview:
- No hints, no teaching, no praise. Short neutral follow-ups are fine ("Why?", "How did you know?").
- If an answer is vague, push once like a real interviewer would.
- The user may answer in Persian or English; if they answer in English, don't correct grammar during the interview.

## Feedback (after question 5)

Talk in Persian with English technical terms. Max ~15 lines:
- A score per question: strong / ok / weak, with one line why.
- The single weakest point and what to study for it (link the concept note, or name a new concept).
- A better 3–4 sentence answer to the opening question, **built only from what the user actually said and what is true in the vault**. Never invent achievements.

## Update the vault

- If all 5 answers were at least "ok" and none were weak on the Numbers question, propose the next status for the claim (`Claimed → Assisted` or `Assisted → Verified`) and linked concepts `→ defended`. Ask the user to confirm before editing.
- If the claim cannot be defended honestly, say so plainly and suggest a smaller, truthful wording of the resume line.
- Append one line to the claim's row or a "## Defend log" section at the end of `resume-claims.md`: date, claim, result.
