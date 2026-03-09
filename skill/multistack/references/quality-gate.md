# Documentation Quality Gate (Multistack)

Apply this gate before finalizing docs.
Default profile is FULL_PIPELINE (quick only by explicit request).

## Gate Checklist

1. Stack correctness
   - Stack detection output exists.
   - Activated modules match evidence.
   - No irrelevant stack module used.

2. Evidence traceability
   - Every major section references concrete files/classes/routes/handlers.
   - No speculative architecture claims.

3. Coverage minimum
   - Architecture overview
   - Request/data flow
   - AuthN/AuthZ model (if present)
   - Data model/storage interactions
   - External integration points
   - Operational concerns (build/test/deploy basics)
   - Troubleshooting coverage

4. Mandatory output completeness
   - Core docs exist: overview, architecture, domain-data, API, operations, troubleshooting.
   - Mandatory per-page sections exist: Purpose, Evidence, Key Flows, Risks/Gaps, Verification Notes.
   - Skeleton-only output is rejected as NOT_COMPLETE.

5. Parity checks (mandatory)
   - Route inventory parity: all route groups/endpoints represented in API catalog.
   - Migration parity: all migration families represented in DB catalog.

6. Diagram quality
   - Mermaid syntax valid.
   - Diagrams represent verified paths only.
   - Node names map to real components.

7. Risk reporting
   - Low test coverage areas surfaced.
   - Unclear/legacy modules flagged.
   - Missing docs or ambiguous ownership called out.

8. Quality scorecard (mandatory)
   - clarity >= 8/10
   - accuracy >= 8/10
   - readability >= 8/10
   - visual >= 8/10

## Fail Conditions

Fail docs generation if any condition is true:
- Primary stack cannot be justified from repository evidence.
- More than 20% of sections have no code-level references.
- Missing any core document or mandatory section block.
- Output is only skeleton/template placeholders.
- Route/API parity mismatch.
- Migration/DB parity mismatch.
- Any quality score dimension is below 8/10.
- Diagrams contain non-existent modules or fictional flows.
- Auth/security section is missing while auth-related code exists.

## Pass Output Template

```markdown
## Quality Gate Result
- Status: PASS|FAIL
- Mode: FULL_PIPELINE|QUICK
- Primary stack: <stack>
- Secondary stacks: <list>
- Activated modules: <list>
- Traceability score: <percent>
- Parity check (routes↔API): PASS|FAIL
- Parity check (migrations↔DB): PASS|FAIL
- Quality score:
  - clarity: <x>/10
  - accuracy: <x>/10
  - readability: <x>/10
  - visual: <x>/10
- Known risks: <bullets>
- Follow-up actions: <bullets>
```

## Strict Completion Gate

Final completion report must use exact fields:
- STATUS
- DONE
- FILES CHANGED
- COMMIT/PUSH STATUS
- BLOCKER
- ETA

If critical deliverables are missing, set STATUS=FAIL and block deploy.
