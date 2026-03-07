# opencode-skill-laradoc

OpenCode documentation-oriented skill pack (Laradoc style) extracted from prior workspace setup.

## Contents
- `skill/docs-orchestrator-v2.md` (**default** stack-aware orchestrator)
- `skill/docs-orchestrator.md` (legacy Laravel-focused orchestrator)
- `skill/multistack/` (stack detection, per-stack modules, quality gate)
- `skill/agents/` (analysis, generation, validation, flow, deployment, optimization, correlation)
- `skill/templates/project-setup.md` (default setup template)

## Usage
Use `skill/docs-orchestrator-v2.md` as the default inside OpenCode `.opencode/agents` workflows. Use legacy `skill/docs-orchestrator.md` only for Laravel-only pipelines.
