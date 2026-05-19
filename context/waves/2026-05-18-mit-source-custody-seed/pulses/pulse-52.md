# Pulse 52 - MIT 6.172 performance engineering source map

## Objective

Add MIT 6.172 Performance Engineering of Software Systems as a game-engine
support source covering profiling, optimization, memory, caching, parallelism,
collision detection, and performance-oriented project practice.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.172 source records under `sources\mit\ocw\6-172-performance-engineering`. |
| Surface table | Done | Added `sources\tables\mit-6-172-surfaces.json` with nine mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-6-172-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 6.172 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, calendar, projects page, representative
  project PDFs, and download page are mapped under MIT OCW CC BY-NC-SA 4.0.
- Project ZIPs, mixed code bundles, lecture videos, media bytes, and sparse
  lecture-note surfaces remain local-cache or metadata-only boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-172-surfaces.json
Get-Content sources\tables\mit-6-172-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
