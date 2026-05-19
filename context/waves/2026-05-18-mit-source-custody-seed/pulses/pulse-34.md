# Pulse 34 - MIT normalized-table registry coverage

## Objective

Fill the remaining MIT table-backed source maps with searchable FLETCH boundary
rows so each class with a normalized source table exposes that table through its
course registry.

## Work

| Item | Status | Notes |
|---|---|---|
| Registry table boundaries | Done | Added normalized-table rows across MIT 15.773, 6.006, 6.034, 6.4210, 6.7960, 6.801, 6.825, 6.8300, 6.864, 6.867, 6.S087, 6.S191, and 6.S897. |
| Work linkage | Done | Added `work_id` metadata to touched registry rows for ledger-aligned search. |
| Rights posture | Done | Preserved table-level policies: derived text where OCW text is clear, `license_review` for mixed tables, `local_cache_allowed` for video tables, and metadata-only for identity surfaces. |

## Boundary notes

- This pulse does not cache raw PDFs, ZIPs, video bytes, notebook artifacts, or
  external platform content.
- Normalized source tables are discoverable through registry metadata via
  `table_record` and `row_count`.
- Per-row expansion remains a later course-by-course decision for rows with
  stable URLs and explicit transfer policy.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file <touched-registry>
Get-Content sources\tables\<table>.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry search --index .fletch\indexes\fontes-mit-table-boundaries.json --tag normalized-table --limit 20
git diff --check
```
