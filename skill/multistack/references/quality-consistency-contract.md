# Quality Consistency Contract (Deterministic Output Mode)

Use this contract to keep documentation output style consistent across projects.
Default for FULL_PIPELINE/MAX profile: ENABLED.

## Fixed Information Architecture (must keep order)

1. Overview
2. Architecture
3. Domain & Data
4. API
5. Operations
6. Troubleshooting

## Fixed Presentation Rules

- Docusaurus-ready structure is mandatory.
- Bilingual pages (`en` and `id`) are mandatory for all core pages.
- Keep one consistent navigation model (same labels/order across projects).
- Keep page style **contextual by page type** (do not force one identical heading template for all pages).
- Mandatory section blocks for every core page:
  - Purpose
  - Evidence
  - Key Flows
  - Risks / Gaps
  - Verification Notes

## Fixed Depth Rules

- Route coverage: include all route groups and at least one concrete example per major domain.
- Data coverage: include migration families and model relation hotspots.
- Security coverage: include auth middleware, guards, role/permission, and rate limiting.
- Ops coverage: include build/test/deploy/runbook + known constraints.
- Enforce parity checks:
  - routes inventory vs API catalog
  - migrations inventory vs DB catalog

## Deterministic Build Rules

- Do not switch renderer/layout style between runs unless user explicitly asks.
- Do not use simplified one-off HTML output when FULL_PIPELINE/MAX mode is active.
- Block deploy when IA order, bilingual page requirements, or parity checks are broken.
- Do not block deploy only because visible headings differ, as long as page-type intent and evidence quality are preserved.
- Skeleton-only output is NOT_COMPLETE.

## Deploy Gate Add-on

Before deploy, verify:
- IA order matches exactly
- Core pages exist for `en` + `id`
- `docusaurus.config.*` and `sidebars.*` exist
- Root and one content page render correctly after deploy
- Quality score dimensions all pass >= 8/10 (clarity, accuracy, readability, visual)

## Inheritance Note (for future stacks)

Any newly added stack module under `references/stacks/` must inherit this contract unchanged by default:
- FULL_PIPELINE default mode
- mandatory output set + mandatory sections
- parity checks
- quality-score minimum 8/10 per dimension
- strict completion fail gate for missing critical deliverables
