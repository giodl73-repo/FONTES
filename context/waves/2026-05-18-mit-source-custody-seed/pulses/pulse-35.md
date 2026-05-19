# Pulse 35 - MIT stable resource registry rows

## Objective

Expand the current MIT class registries from table-level boundaries to stable
resource-level rows where normalized table rows already contain stable URLs and
explicit fetch policies.

## Work

| Item | Status | Notes |
|---|---|---|
| Assignment resources | Done | Added stable assignment rows for MIT 6.006, 6.034, 6.864, and 6.867. |
| Lecture/video resources | Done | Added stable lecture-note or video rows for MIT 6.034, 6.7960, 6.801, 6.825, 6.864, 6.867, and 6.S897. |
| Surface resources | Done | Added missing stable surface rows for MIT 6.S087 lecture-list 2023 and split MIT 6.8300 course-platform identities. |

## Boundary notes

- Listing-page-only readings and schedules stay represented by normalized-table
  boundary rows rather than duplicated per-session rows with the same URL.
- Stable rows carry `resource-row` and `stable-url` tags plus `table_record`,
  `row_id`, and row-level fetch-policy metadata.
- This pulse still does not cache raw PDFs, ZIPs, video bytes, notebook
  artifacts, or external platform content.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file <touched-registry>
Get-Content sources\tables\<table>.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry search --index .fletch\indexes\fontes-mit-resource-rows.json --tag stable-url --limit 25
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
