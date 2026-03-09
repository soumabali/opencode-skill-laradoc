---
name: opencode-multistack-docs
description: Stack-aware OpenCode documentation orchestration for software repositories. Use when generating/updating technical docs from codebases with unknown or mixed stacks. First detect active tech stack from repository signals, then load only matching stack modules (Laravel/PHP, Next.js/Node, Django/Python, Go/Fiber, or generic fallback) to avoid irrelevant analysis and improve accuracy.
---

Run this workflow exactly.
Default mode: **FULL_PIPELINE** (quick mode only if explicitly requested by user).

1) Detect stack first (mandatory)
- Read `references/stack-detection.md`.
- Identify primary/secondary stacks via evidence files.
- Create short evidence table: signal file -> matched stack.

2) Activate only relevant stack module(s)
- If Laravel/PHP: load `references/stacks/php-laravel.md`.
- If Node/Next.js: load `references/stacks/node-nextjs.md`.
- If Python/Django: load `references/stacks/python-django.md`.
- If Go/Fiber: load `references/stacks/go-fiber.md`.
- If uncertain: load `references/stacks/generic.md`.
- Never load unrelated stack modules.

3) Run documentation pipeline
- Use stack module checklist for routes, models, migrations/schema, domain flows, API surfaces, ops runbook.
- Produce mandatory docs in strict order: overview -> architecture -> domain/data -> API -> operations -> troubleshooting.
- Mandatory per-page sections: Purpose, Evidence, Key Flows, Risks/Gaps, Verification Notes.
- Skeleton/headings-only output is NOT complete.

4) Apply quality gates + consistency standards
- Read `references/quality-gate.md` and enforce all checks before finalizing.
- Read `references/quality-floor.md` and enforce persistent best-quality floor.
- Read `references/quality-consistency-contract.md` to lock deterministic output shape.
- Read `references/quality-gold-standard.md` to enforce high-quality breadth/style/process.
- No-pass, no-deploy.

5) Required parity checks
- routes inventory vs API catalog must match (no undocumented route group).
- migrations inventory vs DB catalog must match (no undocumented migration family).

6) Quality scoring gate
- Score each dimension: clarity, accuracy, readability, visual.
- Minimum score for each dimension: **8/10**.
- Any score under threshold = FAIL.

7) Multi-stack behavior
- In monorepos, run per-package detection, then merge outputs into one index with per-stack sections.

8) Output discipline
- Mark uncertain facts as `verification required`.
- Prefer source pointers (file paths, route files, migration names) over assumptions.

9) Strict final report format
- STATUS
- DONE
- FILES CHANGED
- COMMIT/PUSH STATUS
- BLOCKER
- ETA

If adding a new tech stack later:
- Create a new file under `references/stacks/<stack>.md`.
- Add detection mapping in `references/stack-detection.md`.
- Inherit FULL_PIPELINE defaults, parity checks, quality-score thresholds, and strict completion gate.
