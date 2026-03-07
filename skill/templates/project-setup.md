# OpenCode Project Setup (Default)

## Default orchestrator
Use `skill/docs-orchestrator-v2.md` as the **default** workflow orchestrator.

## Steps
1. Copy `skill/docs-orchestrator-v2.md` into your OpenCode agents root as `docs-orchestrator.md`.
2. Keep `skill/docs-orchestrator.md` only for legacy Laravel-only projects.
3. Include `skill/multistack/` references for stack detection and quality checks.
4. Ensure CI runs docs quality validation before merge to `main`.
