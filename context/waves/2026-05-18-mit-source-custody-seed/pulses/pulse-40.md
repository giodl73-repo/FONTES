# Pulse 40 - MIT 8.02 source map

## Objective

Add MIT 8.02 Physics II: Electricity and Magnetism as the next
physics-for-objects source class, complementing the existing 8.01SC mechanics
source spine.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added MIT 8.02 source records under `sources\mit\ocw\8-02-physics-ii-electricity-and-magnetism`. |
| Surface table | Done | Added `sources\tables\mit-8-02-surfaces.json` with seven mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-8-02-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 8.02 and updated the ledger summary count. |

## Boundary notes

- Spring 2007 OCW course pages, course-note references, and download package are
  mapped under MIT OCW CC BY-NC-SA 4.0.
- Visualization links are mapped as metadata; linked simulation binaries require
  child-resource review before downstream promotion.
- Newer OLL 8.02.1x/8.02.2x/8.02.3x modules are metadata-only boundaries until
  resource-level terms permit more.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-8-02-surfaces.json
Get-Content sources\tables\mit-8-02-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
