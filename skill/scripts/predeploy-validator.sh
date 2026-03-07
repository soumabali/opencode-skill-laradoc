#!/usr/bin/env bash
set -euo pipefail

DOCS_ROOT="${1:-docs}"

fail(){ echo "[FAIL] $1"; exit 1; }
pass(){ echo "[OK] $1"; }

[ -d "$DOCS_ROOT" ] || fail "docs root not found: $DOCS_ROOT"

# Core pages check (supports .md or docs/<name>/index.md)
core=(overview architecture domain-data api operations troubleshooting)
for p in "${core[@]}"; do
  if [ -f "$DOCS_ROOT/$p.md" ] || [ -f "$DOCS_ROOT/$p/index.md" ]; then
    pass "core page: $p"
  else
    fail "missing core page: $p"
  fi
done

# Docusaurus config check
if [ -f docusaurus.config.js ] || [ -f docusaurus.config.ts ] || [ -f "$DOCS_ROOT/../docusaurus.config.js" ] || [ -f "$DOCS_ROOT/../docusaurus.config.ts" ]; then
  pass "docusaurus config found"
else
  fail "docusaurus config missing"
fi

# Bilingual check (simple)
if [ -d i18n/en ] && [ -d i18n/id ]; then
  pass "bilingual folders found (i18n/en + i18n/id)"
else
  fail "bilingual folders missing (expected i18n/en and i18n/id)"
fi

echo "Predeploy validator PASSED"