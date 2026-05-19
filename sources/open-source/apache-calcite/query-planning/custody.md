# Apache Calcite Query Planning Custody

## Research question

How should FONTES anchor Apache Calcite as a precedent for Slice/LATTICE query
planning, relational algebra, SQL parsing, semantic-model compilation, adapters,
and materialized-view or cube-aware plan rewriting?

## Source

Apache Calcite documentation:
`https://calcite.apache.org/docs/`

Apache License 2.0:
`https://www.apache.org/licenses/LICENSE-2.0`

## Current custody decision

Apache Calcite documentation is mapped as `derived_text_allowed` under the
Apache 2.0 documentation/source posture. This pulse captures documentation
surfaces only. Source repository files, releases, generated Javadocs, example
code, adapter implementations, dependency artifacts, logos, and binary downloads
remain boundary-checked for provenance, license notices, checksums, and
redistribution before local caching.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-CALCITE-01 | `https://calcite.apache.org/docs/` | Calcite positions itself as a dynamic data-management framework that provides parser, validator, optimizer, model reading, adapters, and query mediation while intentionally not owning storage or execution. | Slice can treat Calcite as precedent for a planner/compiler substrate rather than a database engine. | High |
| FONTES-CALCITE-02 | `https://calcite.apache.org/docs/algebra.html` | Calcite represents queries as relational-operator trees; planner rules transform trees using semantic-preserving identities, guided by cost models, statistics, and extensible operators/rules. | Slice expression plans should keep a clear IR boundary so rules and backends can evolve independently. | High |
| FONTES-CALCITE-03 | `https://calcite.apache.org/docs/tutorial.html` and `https://calcite.apache.org/docs/adapter.html` | Adapters expose external data as schemas/tables and can progress from scannable to filterable to translatable implementations with planner rules and driver integration. | LATTICE local-first/file/remote sources can use adapter capability levels instead of one monolithic execution path. | High |
| FONTES-CALCITE-04 | `https://calcite.apache.org/docs/model.html` | JSON/YAML model files declare schemas, tables, functions, types, materializations, cache behavior, custom schemas, and JDBC schemas. | Slice/LATTICE semantic models need an explicit serialized model boundary if they should be inspectable and portable. | High |
| FONTES-CALCITE-05 | `https://calcite.apache.org/docs/lattice.html` and `https://calcite.apache.org/docs/materialized_views.html` | Calcite lattices model star/snowflake schemas and support materialized-view recognition/rewrite for filter-join-aggregate queries. | The data-warehouse tranche should track Calcite lattices as a bridge between cube semantics and relational rewrite plans. | High |
| FONTES-CALCITE-06 | `https://calcite.apache.org/docs/reference.html` and `https://calcite.apache.org/docs/stream.html` | Calcite documents a SQL grammar and streaming SQL extension grounded in relational algebra. | Slice should decide whether it is a smaller expression layer that compiles to SQL/relational plans or a full query language. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FONTES | Keep Calcite docs searchable through the new FLETCH registry and PROOF ledger row. | Do not mirror the source repo or Javadocs in this pulse. |
| Prototype behind boundary | LATTICE / Slice | Compare Slice expression IR against Calcite-style relational trees, adapter capability levels, and materialized-view rewrite concepts. | Do not commit to a JVM dependency or Calcite runtime adoption from source-map evidence alone. |
| Defer | FONTES | Add source/code-level Calcite release custody only if a future implementation prototype needs exact APIs or examples. | Do not cache release artifacts until checksum, notice, and dependency review is done. |
