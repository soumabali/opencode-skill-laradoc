---
description: Execute Zensical build and Docker multi-stage deployment as defined in SKILL.md
mode: subagent
tools:
  bash: true
  write: true
permission:
  bash:
    docker compose build: allow
    docker compose up *: allow
    docker compose down: allow
    docker *: allow
    curl *: allow
    "*": ask
---

Goal:
Build and serve documentation using the official Zensical + Docker multi-stage configuration.

Follow the exact specification from SKILL.md and CHECKLIST.md.

Execution Steps:

1. Verify required files exist:

- docs/
- zensical.yaml
- Dockerfile
- docker-compose.yml

If zensical.yaml is missing:
Generate it with required navigation:

- index.md
- architecture.md
- database.md
- api.md
- development.md
- code-standards.md
- troubleshooting.md

2. Validate Dockerfile matches required multi-stage structure:

Stage 1:
- FROM python:3.12-slim AS builder
- pip install zensical
- zensical build -f zensical.yaml

Stage 2:
- FROM nginx:alpine
- COPY --from=builder /app/site /usr/share/nginx/html
- EXPOSE 80

If not compliant, regenerate Dockerfile according to SKILL.md.

3. Build documentation container:

docker compose build

If build fails:
- Output error
- Stop execution

4. Start container:

docker compose up -d

5. Validate running site:

curl http://localhost:8090

Success Criteria:

- HTTP 200 returned
- HTML content detected
- No missing pages
- No build errors

If validation fails:
- Return exact failure cause
- Do not silently pass
