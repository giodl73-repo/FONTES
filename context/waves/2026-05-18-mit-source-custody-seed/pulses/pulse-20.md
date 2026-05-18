# Pulse 20 - MIT 6.034 normalized AI source map

## Objective

Promote MIT 6.034 from seed coverage to a table-first AI source map that can
feed PROOF-backed PEBBLE/CROP expansion without inlining source tables.

## Work

| Item | Status | Notes |
|---|---|---|
| Readings table | Done | `sources\tables\mit-6-034-readings.json` records 23 lecture rows with textbook/external-reading boundaries. |
| Video table | Done | `sources\tables\mit-6-034-videos.json` records 23 lecture videos and seven mega-recitation videos. |
| Assignment table | Done | `sources\tables\mit-6-034-assignments.json` records six lab rows with code-package boundaries. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-034-surfaces.json` records ten course surfaces. |
| Work/inventory records | Done | 6.034 is now `source-mapped` with a durable inventory. |

## Boundary notes

- OCW page text and metadata remain `derived_text_allowed` under the MIT OCW
  CC BY-NC-SA 4.0 terms.
- Video galleries are useful source surfaces, but media bytes remain
  `local_cache_allowed`.
- The Winston textbook is metadata-only.
- External readings and lab ZIPs require child-resource review before bundling;
  Lab 4 explicitly names courtesy code used with permission.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-034-readings.json -Raw | ConvertFrom-Json
Get-Content sources\tables\mit-6-034-videos.json -Raw | ConvertFrom-Json
Get-Content sources\tables\mit-6-034-assignments.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-034-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
