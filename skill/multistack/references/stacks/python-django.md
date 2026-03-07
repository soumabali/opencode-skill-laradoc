# Module: Python Django

Activate when Django signals are detected.

## Focus Areas

- URL routing and view architecture (FBV/CBV/DRF)
- Models, migrations, ORM relations
- Auth system, permissions, middleware
- Settings module split and environment strategy
- Background jobs (Celery/RQ) if configured

## Documentation Expectations

- Explain request/response path from urls -> views -> services.
- Document app boundaries and reusable apps.
- Map data model and important queries/optimizations.
- Document admin customization and API layer when relevant.

## Quality Notes

- Verify INSTALLED_APPS/MIDDLEWARE before assumptions.
- Separate Django core behavior from project-specific logic.
- Flag unmanaged migrations or schema drift risks.