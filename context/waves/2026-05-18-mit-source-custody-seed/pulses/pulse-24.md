# Pulse 24 - MIT 6.7960 deep-learning source map

## Objective

Add MIT 6.7960 as the modern deep-learning leg of the MIT AI source-custody slice.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.7960 source records under `sources\mit\ocw\6-7960-deep-learning`. |
| Readings table | Done | `sources\tables\mit-6-7960-readings.json` records 25 reading-session rows with external-rights boundaries. |
| Video table | Done | `sources\tables\mit-6-7960-videos.json` records 24 video rows. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-7960-surfaces.json` records nine course surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.7960. |

## Boundary notes

- OCW page metadata, syllabus, project instructions, and reading-list rows are
  source-mapped.
- Video media is `local_cache_allowed`.
- Vision Book bodies are CC BY-NC-ND and are review-gated for adaptation.
- External papers/blogs/pages, homework artifacts, and project ZIPs require
  child-resource review before bundling.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-7960-readings.json -Raw | ConvertFrom-Json
Get-Content sources\tables\mit-6-7960-videos.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-7960-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
