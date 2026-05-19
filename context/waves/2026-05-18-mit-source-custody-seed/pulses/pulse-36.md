# Pulse 36 - Open Yale class session registry rows

## Objective

Fill the Open Yale class registries with normalized session-table boundaries and
stable lecture/exam session rows for the current chemistry and physics source
classes.

## Work

| Item | Status | Notes |
|---|---|---|
| Session table boundaries | Done | Added normalized-table rows for CHEM 125a, CHEM 125b, PHYS 200, and PHYS 201 session tables. |
| Stable session rows | Done | Added or normalized 130 stable lecture/exam session rows across the four Open Yale class registries. |
| Work linkage | Done | Added `work_id`, `table_record`, `row_id`, and `row_kind` metadata to session rows where applicable. |

## Boundary notes

- OYC lecture transcript text and course-page metadata remain
  `derived_text_allowed` under the recorded Open Yale CC BY-NC-SA 3.0 family
  policy.
- Lecture video/audio bytes stay in local FLETCH cache only and are not committed
  to git.
- Third-party content, professor/on-campus resource sites, assigned texts, and
  optional readings remain metadata-only or license-review boundaries until
  separately cleared.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file <open-yale-registry>
Get-Content sources\tables\open-yale-*-sessions.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry search --index .fletch\indexes\fontes-open-yale-sessions.json --tag stable-url --limit 20
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
