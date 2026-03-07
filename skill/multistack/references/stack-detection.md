# Stack Detection Matrix (Mandatory First Step)

## Goal
Identify active stack **before** documentation analysis.

## Signals -> Stack

### PHP / Laravel
- `artisan`
- `composer.json` with `laravel/framework`
- `routes/web.php`, `routes/api.php`
- `app/Http/Controllers`, `database/migrations`

### Node / Next.js
- `package.json` with `next`
- `next.config.js|mjs|ts`
- `src/app` or `pages`
- `app/api` or API routes

### Python / Django
- `manage.py`
- `requirements.txt` or `pyproject.toml` with `django`
- `settings.py`, `urls.py`
- app modules with `models.py`, `views.py`

### Go / Fiber
- `go.mod` with `github.com/gofiber/fiber`
- `main.go` bootstrapping fiber app
- `internal/`, `pkg/`, `cmd/` conventional folders

### Generic Fallback
- Stack cannot be confidently identified.

## Confidence Rules
- High: >=2 strong signals from same stack
- Medium: 1 strong + 1 weak signal
- Low: ambiguous; use `generic.md` and label verification required

## Activation Rule
Only activate the matched stack module(s). In mixed repos, split by package/service and activate per-scope.
