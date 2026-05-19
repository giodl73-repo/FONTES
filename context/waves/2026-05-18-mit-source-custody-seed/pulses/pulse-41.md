# Pulse 41 - MIT 5.12 source map

## Objective

Add MIT 5.12 Organic Chemistry I as the next chemistry-for-real-items source
class, complementing MIT 5.111SC and Open Yale chemistry coverage.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added MIT 5.12 source records under `sources\mit\ocw\5-12-organic-chemistry-i`. |
| Surface table | Done | Added `sources\tables\mit-5-12-surfaces.json` with seven mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-5-12-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 5.12 and updated the ledger summary count. |

## Boundary notes

- OCW course page, syllabus, assignments, exam surface, and download package are
  mapped under MIT OCW CC BY-NC-SA 4.0.
- Readings are topic/chapter metadata for McMurry's commercial textbook only.
- The textbook body is not OCW-owned and remains outside FONTES custody.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-5-12-surfaces.json
Get-Content sources\tables\mit-5-12-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
