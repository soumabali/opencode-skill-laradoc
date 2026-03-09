# Quality Floor (Persistent Best-Quality Guardrail)

Use this after the normal quality gate. This file defines the non-negotiable baseline for FULL_PIPELINE output.

## Required Output Profile (FULL_PIPELINE by default)

- FULL_PIPELINE is default mode.
- Quick mode is allowed only by explicit user request.
- Full repository scan (or full target package scan for monorepo).
- Evidence-first documentation with source pointers.
- Docusaurus-ready docs structure.
- Bilingual docs (`en` and `id`) for all core pages.

## Core Pages (mandatory)

- overview
- architecture
- domain-data
- API
- operations
- troubleshooting

## Mandatory Sections (for every core page)

- Purpose
- Evidence
- Key Flows
- Risks/Gaps
- Verification Notes

Skeleton-only output (titles/placeholders without real evidence) is NOT_COMPLETE and fails this gate.

## Minimum Evidence Rules

- Every major section must include concrete repo evidence (files/classes/routes/migrations).
- Auth/Security section is mandatory when auth code exists.
- Unknown facts must be labeled `verification required`.
- Route/API parity check is mandatory.
- Migration/DB parity check is mandatory.

## Numeric Thresholds

- Coverage score: >= 95%
- Traceability score: >= 90%
- Broken internal links: 0
- Missing core pages: 0
- Quality score:
  - clarity >= 8/10
  - accuracy >= 8/10
  - readability >= 8/10
  - visual >= 8/10

## Deployment Gate

If any item above fails:
- Status = FAIL
- Block deployment
- Return remediation checklist first

## Pass Template

```markdown
## Quality Floor Result
- Status: PASS|FAIL
- Mode: FULL_PIPELINE|QUICK
- Coverage score: <percent>
- Traceability score: <percent>
- Docusaurus-ready: YES|NO
- Bilingual pages complete: YES|NO
- Broken links: <number>
- Parity check (routes↔API): PASS|FAIL
- Parity check (migrations↔DB): PASS|FAIL
- Quality score:
  - clarity: <x>/10
  - accuracy: <x>/10
  - readability: <x>/10
  - visual: <x>/10
- Deploy allowed: YES|NO
```
