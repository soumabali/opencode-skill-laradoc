---
description: Validate Laravel documentation accuracy and completeness
mode: subagent
tools:
  bash: true
---

Validate:

- authentication traced from code
- routes verified
- env variables exist
- diagrams syntactically valid
- documentation complete

Reject if:

- assumptions detected
- missing flows
- incomplete docs

Return:

- exact fixes required
- missing sources
