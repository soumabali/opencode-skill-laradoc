# Module: Go Fiber

Activate when Fiber signals are detected.

## Focus Areas

- Router/bootstrap in `main.go` or `cmd/*/main.go`
- Handler -> service -> repository flow
- Middleware chain, error handling, validation
- Data access layer (SQL/ORM), config loading, env handling
- Concurrency/background workers if present

## Documentation Expectations

- Map endpoint ownership and package boundaries.
- Document request lifecycle and middleware execution order.
- Map dependency wiring and shared utilities.
- Highlight performance-sensitive code paths.

## Quality Notes

- Confirm Fiber version/middleware behavior from go.mod.
- Avoid speculative architecture labels; use package evidence.
- Flag global state, error swallowing, and context misuse risks.