# Pulse 69 - Oracle data warehousing source identities

## Objective

Add Oracle Database Data Warehousing Guide pages as metadata-only source
identities for enterprise relational warehouse design: logical design, star and
snowflake schemas, fact and dimension tables, Oracle dimension objects,
materialized views, summaries, query rewrite, and physical design structures.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added Oracle data warehousing source records under `sources\open-education\oracle-docs\data-warehousing`. |
| Surface table | Done | Added `sources\tables\oracle-data-warehousing-surfaces.json` with seven mapped source-identity and boundary surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-oracle-data-warehousing-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row and updated source-identity counts. |

## Boundary notes

- Oracle documentation is mapped as `metadata_only` source identity, not as a
  derived-text source.
- Documentation body text, SQL examples, diagrams, screenshots, the PDF manual,
  sample schemas, downloads, and linked product documentation remain
  rights-boundary material until separate license review.
- This pulse maps Oracle Database Data Warehousing Guide 19c surfaces as stable
  source identities for future CROP/PEBBLE taxonomy alignment.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-oracle-data-warehousing-surfaces.json
Get-Content sources\tables\oracle-data-warehousing-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
