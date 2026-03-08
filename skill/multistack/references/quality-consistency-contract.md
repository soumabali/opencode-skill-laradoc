# Quality Consistency Contract (Deterministic Output Mode)

Use this contract to keep documentation output style consistent across projects.
Default for MAX profile: ENABLED.

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
- Use identical section skeleton per page:
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

## Deterministic Build Rules

- Do not switch renderer/layout style between runs unless user explicitly asks.
- Do not use simplified one-off HTML output when MAX mode is active.
- Block deploy when IA order, bilingual pages, or section skeleton is broken.

## Deploy Gate Add-on

Before deploy, verify:
- IA order matches exactly
- Core pages exist for `en` + `id`
- `docusaurus.config.*` and `sidebars.*` exist
- Root and one content page render correctly after deploy
