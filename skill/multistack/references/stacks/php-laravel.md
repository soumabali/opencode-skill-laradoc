# Module: PHP Laravel

Activate when Laravel signals are detected.

## Focus Areas

- Routing (`routes/web.php`, `routes/api.php`)
- Controllers, Form Requests, Policies, Middleware
- Eloquent models/relations and migrations
- Queues, events/listeners, scheduled tasks
- Service container bindings and domain services

## Documentation Expectations

- Explain request lifecycle for key features.
- Map auth flow (guards, middleware, policies/permissions).
- Map DB schema from migrations and model relations.
- Include queue/event flow when present.

## Quality Notes

- Do not infer hidden magic; verify in service providers/config.
- Flag fat controllers and untested critical modules.
- Include artisan command/deploy assumptions only if found in repo.