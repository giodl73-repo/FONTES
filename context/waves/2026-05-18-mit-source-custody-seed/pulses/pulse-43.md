# Pulse 43 - Stanford SEE CS106 source boundaries

## Objective

Add Stanford SEE CS106A Programming Methodology and CS106B Programming
Abstractions as source-identity boundaries without inventing missing course
material surfaces.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added CS106A and CS106B source records under the SEE source family. |
| Boundary table | Done | Added `sources\tables\stanford-see-cs106-boundaries.json` with two visible course-page rows. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-stanford-see-cs106-boundaries.json` with source-identity rows and a normalized-table row. |
| PROOF ledger | Done | Added two work-level ledger rows and updated the ledger summary count. |

## Boundary notes

- The visible SEE CS106A/CS106B pages are sparse source-identity pages, not full
  material/session surfaces.
- The rows are `metadata_only` at work level and must not contribute extracted
  teaching chunks until stable material URLs are found.
- Course pages remain searchable through FLETCH so downstream discovery can see
  that CS106A/CS106B are known gaps rather than accidentally missing targets.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-stanford-see-cs106-boundaries.json
Get-Content sources\tables\stanford-see-cs106-boundaries.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
