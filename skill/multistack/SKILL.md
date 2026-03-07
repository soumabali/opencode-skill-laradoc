---
name: opencode-multistack-docs
description: Stack-aware OpenCode documentation orchestration for software repositories. Use when generating/updating technical docs from codebases with unknown or mixed stacks. First detect active tech stack from repository signals, then load only matching stack modules (Laravel/PHP, Next.js/Node, Django/Python, Go/Fiber, or generic fallback) to avoid irrelevant analysis and improve accuracy.
---

Run this workflow exactly (quality profile defaults to MAX, not fast mode):

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
- Produce docs in clear order: overview -> architecture -> domain/data -> API -> operations.

4) Apply quality gates
- Read `references/quality-gate.md` and enforce all checks before finalizing.
- Read `references/quality-floor.md` and enforce persistent best-quality floor.
- No-pass, no-deploy.

5) Multi-stack behavior
- In monorepos, run per-package detection, then merge outputs into one index with per-stack sections.

6) Output discipline
- Mark uncertain facts as `verification required`.
- Prefer source pointers (file paths, route files, migration names) over assumptions.

If adding a new tech stack later:
- Create a new file under `references/stacks/<stack>.md`.
- Add detection mapping in `references/stack-detection.md`.
- Keep SKILL.md unchanged except module list update.
