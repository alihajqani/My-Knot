# Resume claims

My resume (v2.0.4) is a target, not a fact sheet. Each line below is a claim I want to be able to prove and defend.

**Status:** `Claimed` (written, can't prove) → `Assisted` (done with AI, not solid) → `Verified` (passed the proof test and a `/defend`)

Only I change a status. `/defend` can propose a change.

## SensoMatt — Computer Vision Engineer

| # | Claim | Status | Proof test | Concepts |
|---|---|---|---|---|
| S1 | Automated generation of 1,300+ 3D models across 50+ categories | Claimed | Explain the pipeline end to end and where it failed | |
| S2 | Cut inference latency 30x (15s → <500ms) with quantization and architecture optimization | Claimed | Benchmark a PyTorch model; speed it up with FP16 / quantization / ONNX Runtime; explain the speed vs accuracy trade-off | [[quantization]] [[profiling]] |
| S3 | CI/CD with GitHub Actions, zero-downtime updates on Kubernetes | Claimed | GitHub Actions that tests and builds; deploy to kind/minikube with rolling update and readiness probe; show no dropped requests | |
| S4 | Architected the three-stage AI pipeline for SENSO3D (2D image → 3D asset) | Claimed | Draw and explain the three stages and why they are separate | |
| S5 | Multimodal system: text → 3D, LLMs for semantics, custom diffusion for textures | Claimed | Run a diffusers pipeline; explain schedulers, guidance scale, how diffusion works | [[diffusion]] |

## Dide Negar Hoosh No — Computer Vision Engineer

| # | Claim | Status | Proof test | Concepts |
|---|---|---|---|---|
| D1 | Edge YOLOv8 fire detection, sub-second on low-compute hardware, >90% accuracy | Claimed | Fine-tune YOLO on a small dataset; report mAP, precision, recall; export to ONNX; measure CPU FPS | |
| D2 | 8,000-image proprietary dataset; +20% accuracy vs public datasets | Claimed | Explain how you'd measure that +20% fairly (same test set, no leakage) | |
| D3 | DataOps pipeline, 90% less manual labeling | Claimed | Frame extraction, dedup, train/val split without leakage, pre-labeling | |
| D4 | Unattended-baggage detector, >95% precision | Claimed | Confusion matrix, threshold tuning, precision vs recall trade-off | [[precision-recall]] |

## Sensifai — IoT Platform Developer

| # | Claim | Status | Proof test | Concepts |
|---|---|---|---|---|
| F1 | Found 150+ RBAC and logic vulnerabilities in the IoT broker | Claimed | Explain RBAC; show a broken authz check and fix it | |
| F2 | Real-time IoT solution, 10+ sensors, 80,000 data points/day | Claimed | Explain ingestion → storage → dashboard and the bottleneck | |

## Ayandeh Pajoohan — Back-end Developer

| # | Claim | Status | Proof test | Concepts |
|---|---|---|---|---|
| A1 | PHP → Node.js migration enabling 10x user growth | Claimed | Explain what the migration changed and why it scaled | |
| A2 | Patient registration and booking with Node.js + React/Vue | Claimed | Build a tiny booking API with validation and a test | |

## Skills section

| Skill | Status | Notes |
|---|---|---|
| Python (typed, production-grade) | Claimed | |
| FastAPI | Claimed | |
| TDD | Claimed | |
| Docker | Claimed | |
| Kubernetes | Claimed | |
| AWS SageMaker | Claimed | |
| LLM integration / RAG | Claimed | [[billboard]] will touch this |
| Statistics | Assisted | Degree, but intuition is weak |
