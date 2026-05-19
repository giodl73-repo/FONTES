# Pulse 77 - DuckDB and DataFusion analytical engine source map

## Objective

Continue the FONTES expression-engine research queue with DuckDB and Apache
DataFusion as local analytical and Rust/Arrow execution precedents.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added engine records under `sources\open-source\analytical-engines\duckdb-datafusion`. |
| Research findings | Done | Documented six findings for direct file querying, Parquet pushdown, local analytics, Arrow/Rust execution, lazy DataFrames, and extension APIs. |
| Surface table | Done | Added `sources\tables\duckdb-datafusion-engine-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-duckdb-datafusion-engine-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

DuckDB docs are metadata-only pending terms review. DataFusion docs are mapped
under Apache 2.0 posture. Source files, binaries, packages, extensions, examples,
logos, generated API docs, benchmarks, and releases remain boundary-checked.
