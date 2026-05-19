# Pulse 66 - data warehouse lineage and dimensional modeling source maps

## Objective

Add University of Wisconsin-Madison database systems lineage as a
metadata/source-identity anchor for data warehousing and OLAP substrate work:
Gamma, shared-nothing parallel databases, parallel joins, Wisconsin Benchmark,
query optimization, and benchmarking history. Add Kimball Group dimensional
modeling as the direct cube/dimension modeling anchor for facts, dimensions,
grain, star schemas, OLAP cubes, conformed dimensions, bus matrices, slowly
changing dimensions, ETL subsystems, and book-boundary references.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added UW-Madison DB lineage source records under `sources\open-education\uw-madison-db\database-systems-lineage`. |
| Surface table | Done | Added `sources\tables\uw-madison-db-lineage-surfaces.json` with nine mapped source-identity surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-uw-madison-db-lineage-surfaces.json` with stable URL rows and a normalized-table row. |
| Kimball work/custody/inventory | Done | Added Kimball dimensional modeling source records under `sources\open-education\kimball-group\dimensional-modeling`. |
| Kimball surface table | Done | Added `sources\tables\kimball-dimensional-modeling-surfaces.json` with eight mapped source-identity surfaces. |
| Kimball FLETCH registry | Done | Added `.fletch\registries\fontes-kimball-dimensional-modeling-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added work-level ledger rows and updated source-identity counts. |

## Boundary notes

- UW pages and publication URLs are mapped as source identities.
- Publication PDF bodies remain metadata-only because many are conference,
  journal, or publisher-copyrighted papers.
- The Wisconsin Benchmark generator archive is local-cache only until code/data
  license and safety review.
- Kimball official web pages and book pages are source identities only; user-owned
  books may guide manual decisions, but book bodies, PDFs, spreadsheets, images,
  design-tip bodies, and utility files are not committed or extracted.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-uw-madison-db-lineage-surfaces.json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-kimball-dimensional-modeling-surfaces.json
Get-Content sources\tables\uw-madison-db-lineage-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\kimball-dimensional-modeling-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
