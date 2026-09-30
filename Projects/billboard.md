---
repo: billboard-profiler
started: 2026-09-28
---

# Billboard profiling

## What it is

- ~1000 photos of billboards taken in different places.
- For each billboard, build a profile: text, colors, theme, visual elements, and similar fields.
- Verify the profiles, with LLM-as-a-judge and/or crowdsourcing.
- I knew nothing about this kind of work when I started.

## Stages and what each should teach me

| Stage | My decision to make | Concepts to learn |
|---|---|---|
| 1. Define the profile schema | Which fields; fixed categories or free text | [[json-schema]] [[structured-output]] |
| 2. Extract from images | Which model; VLM vs classic methods per field | [[vlm]] [[ocr]] [[kmeans-colors]] |
| 3. Verify | Ground truth from my own labels; how to measure agreement | [[ground-truth]] [[llm-as-judge]] [[inter-rater-agreement]] [[precision-recall]] |
| 4. Run on all 1000 | Cost, retries, resumability, storing results | [[batch-processing]] [[idempotency]] |

## Rules for this project

- Start with 20 images, not 1000.
- I label ~50 images by hand before trusting any automatic output.
- Resume claims this can support: Skills → LLM integration, and evaluation methodology in general.

## Log

Sessions are linked here automatically by `/lesson`.
- [[Sessions/2026-09-29-billboard-profiler]] — Stage 1: schema design Q1–Q18, client clarification (cultural posters)
