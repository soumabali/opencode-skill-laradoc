# Module: Node Next.js

Activate when Next.js signals are detected.

## Focus Areas

- App Router or Pages Router structure
- API routes / route handlers
- Server vs client components and data fetching
- Middleware, auth/session handling, caching/revalidation
- Build/runtime config (`next.config.*`, env usage)

## Documentation Expectations

- Explain route map and rendering strategy (SSR/SSG/ISR/CSR).
- Map API handlers and backend integration points.
- Document auth/session flow and protected routes.
- Document shared UI/domain boundaries in monorepos.

## Quality Notes

- Distinguish frontend-only concerns from server/runtime concerns.
- Verify edge/runtime assumptions from code/config, not guesswork.
- Flag duplicated logic across API routes and server actions.