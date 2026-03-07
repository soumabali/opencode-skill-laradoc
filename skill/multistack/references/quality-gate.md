# Documentation Quality Gate (Multistack)

Apply this gate before finalizing docs.

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

4. Diagram quality
   - Mermaid syntax valid.
   - Diagrams represent verified paths only.
   - Node names map to real components.

5. Risk reporting
   - Low test coverage areas surfaced.
   - Unclear/legacy modules flagged.
   - Missing docs or ambiguous ownership called out.

## Fail Conditions

Fail docs generation if any condition is true:
- Primary stack cannot be justified from repository evidence.
- More than 20% of sections have no code-level references.
- Diagrams contain non-existent modules or fictional flows.
- Auth/security section is missing while auth-related code exists.

## Pass Output Template

```markdown
## Quality Gate Result
- Status: PASS|FAIL
- Primary stack: <stack>
- Secondary stacks: <list>
- Activated modules: <list>
- Traceability score: <percent>
- Known risks: <bullets>
- Follow-up actions: <bullets>
```

## Recommended Quality Metrics

- Traceability score >= 85%
- Broken/unknown links = 0
- Diagram validation errors = 0
- Critical unknowns explicitly listed