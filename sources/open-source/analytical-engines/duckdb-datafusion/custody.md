# DuckDB and Apache DataFusion Analytical Engine Custody

## Research question

How should FONTES anchor DuckDB and Apache DataFusion as local-first and
columnar execution precedents for LATTICE/Slice plan targets?

## Current custody decision

DuckDB documentation pages are mapped as `metadata_only` pending documentation
reuse review; the DuckDB repository identity is mapped as source identity.
Apache DataFusion documentation pages are mapped as `derived_text_allowed` under
Apache 2.0 documentation/source posture. Source files, binaries, packages,
extensions, examples, logos, generated API docs, benchmark assets, and release
artifacts remain boundary-checked before caching.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-ENGINE-01 | `https://duckdb.org/docs/current/data/overview.html` | DuckDB can query CSV, Parquet, and JSON files directly by filename or read functions and create tables from those queries. | LATTICE local-first plans should consider direct file-backed query surfaces before requiring ingestion. | High |
| FONTES-ENGINE-02 | `https://duckdb.org/docs/current/guides/file_formats/query_parquet.html` | DuckDB Parquet scans support parallel processing, filter pushdown, and column pruning. | Slice should preserve filter/projection pushdown opportunities when targeting local analytical engines. | High |
| FONTES-ENGINE-03 | `https://github.com/duckdb/duckdb` | DuckDB positions itself as a portable high-performance analytical database with rich SQL dialect, CLI/client APIs, and direct CSV/Parquet querying. | DuckDB is a strong LATTICE local analytical default candidate or compatibility target. | High |
| FONTES-ENGINE-04 | `https://datafusion.apache.org/user-guide/introduction.html` | DataFusion is a Rust query engine using Apache Arrow with SQL/DataFrame APIs, file-format support, vectorized execution, optimizer, object stores, extension points, Apache 2.0 governance, and Substrait support. | DataFusion is a strong Rust-native backend precedent for Slice plan execution. | High |
| FONTES-ENGINE-05 | `https://datafusion.apache.org/user-guide/dataframe.html` | DataFusion DataFrames build lazy logical plans through transformations and only execute on actions such as collect. | Slice/LATTICE can adopt lazy plan construction and optimize-before-execute semantics. | High |
| FONTES-ENGINE-06 | `https://datafusion.apache.org/contributor-guide/architecture.html` | DataFusion recommends extension APIs such as TableProvider, OptimizerRule, and ExecutionPlan over forks. | A LATTICE backend should expose capability/extension boundaries rather than patching engine internals. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FONTES | Keep DuckDB/DataFusion surfaces searchable through FLETCH. | Do not cache binaries, generated API docs, or benchmark artifacts. |
| Prototype behind boundary | LATTICE / Slice | Compare local execution targets using DuckDB direct-file SQL and DataFusion lazy logical/DataFrame APIs. | Do not choose a sole engine until Slice IR requirements are known. |
| Defer | FONTES | Add exact API/source custody only when engine integration begins. | Do not mirror source trees or packages in this pulse. |
