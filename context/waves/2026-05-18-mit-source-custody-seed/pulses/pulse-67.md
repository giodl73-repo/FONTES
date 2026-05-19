# Pulse 67 - Apache Kylin OLAP modeling source map

## Objective

Add Apache Kylin official documentation as the implementation-facing OLAP cube
anchor for data-warehouse work. This complements Kimball's dimensional-modeling
taxonomy and UW-Madison's database lineage by mapping a real open-source OLAP
system's surfaces for fact tables, dimension tables, dimensions, measures,
computed columns, joins, indexes/CUBEs, aggregate indexes, table indexes,
precomputation, loading, and slowly changing dimensions.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added Apache Kylin OLAP modeling source records under `sources\open-education\apache-kylin\olap-modeling`. |
| Surface table | Done | Added `sources\tables\apache-kylin-olap-modeling-surfaces.json` with seven mapped documentation and boundary surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-apache-kylin-olap-modeling-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row and updated candidate/source-identity counts. |

## Boundary notes

- Apache Kylin text documentation is treated as `derived_text_allowed` under
  Apache project documentation licensing.
- Screenshots, GIFs, UI captures, embedded SVGs/images, SQL snippets, example
  datasets, and downloadable/code-like artifacts remain boundary-checked.
- The quickstart SSB dataset is `local_cache_allowed` only after file-level
  license and safety review.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-apache-kylin-olap-modeling-surfaces.json
Get-Content sources\tables\apache-kylin-olap-modeling-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
