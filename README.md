# opencode-skill-laradoc

OpenCode documentation-oriented skill pack (Laradoc style) extracted from prior workspace setup.

## Contents
- `skill/docs-orchestrator-v2.md` (**default** stack-aware orchestrator)
- `skill/docs-orchestrator.md` (legacy Laravel-focused orchestrator)
- `skill/multistack/` (stack detection, per-stack modules, quality gate)
- `skill/agents/` (analysis, generation, validation, flow, deployment, optimization, correlation)
- `skill/templates/project-setup.md` (default setup template)

## Enforced Standard (FULL_PIPELINE)
- Default mode is **FULL_PIPELINE**.
- `quick` mode is allowed **only when explicitly requested by user**.
- Minimum required outputs are mandatory (core docs + required sections + quality report).
- Skeleton-only output is explicitly **not complete**.
- Parity checks are mandatory:
  - routes ↔ API catalog
  - migrations ↔ DB catalog
- Quality scoring is mandatory with threshold **>= 8/10** for each: clarity, accuracy, readability, visual.
- Completion report must follow strict format. If critical deliverables are missing, final status is **FAIL** and deploy is blocked.
- Inheritance rule: any future stack module must adopt the same FULL_PIPELINE standard and gates.

## Usage
Use `skill/docs-orchestrator-v2.md` as the default inside OpenCode `.opencode/agents` workflows. Use legacy `skill/docs-orchestrator.md` only for Laravel-only pipelines.
