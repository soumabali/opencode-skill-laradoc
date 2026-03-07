# Quality Floor (Persistent Best-Quality Guardrail)

Use this after the normal quality gate. This file defines the non-negotiable baseline for "best" output.

## Required Output Profile (MAX by default)

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

## Minimum Evidence Rules

- Every major section must include concrete repo evidence (files/classes/routes/migrations).
- Auth/Security section is mandatory when auth code exists.
- Unknown facts must be labeled `verification required`.

## Numeric Thresholds

- Coverage score: >= 95%
- Traceability score: >= 90%
- Broken internal links: 0
- Missing core pages: 0

## Deployment Gate

If any item above fails:
- Status = FAIL
- Block deployment
- Return remediation checklist first

## Pass Template

```markdown
## Quality Floor Result
- Status: PASS|FAIL
- Coverage score: <percent>
- Traceability score: <percent>
- Docusaurus-ready: YES|NO
- Bilingual pages complete: YES|NO
- Broken links: <number>
- Deploy allowed: YES|NO
```
