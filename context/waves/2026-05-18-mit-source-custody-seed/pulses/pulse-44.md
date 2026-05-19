# Pulse 44 - Stanford SEE sparse source boundaries

## Objective

Add Stanford SEE CS223A Introduction to Robotics and EE364B Convex Optimization
II as source-identity boundaries without inventing missing course material
surfaces.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added CS223A and EE364B source records under the SEE source family. |
| Boundary table | Done | Added `sources\tables\stanford-see-sparse-boundaries.json` with two visible course-page rows. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-stanford-see-sparse-boundaries.json` with source-identity rows and a normalized-table row. |
| PROOF ledger | Done | Added two work-level ledger rows and updated the ledger summary count. |

## Boundary notes

- The visible SEE CS223A/EE364B pages are sparse source-identity pages, not full
  material/session surfaces.
- The rows are `metadata_only` at work level and must not contribute extracted
  teaching chunks until stable material URLs are found.
- Course pages remain searchable through FLETCH so downstream discovery can see
  that CS223A/EE364B are known gaps rather than accidentally missing targets.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-stanford-see-sparse-boundaries.json
Get-Content sources\tables\stanford-see-sparse-boundaries.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
