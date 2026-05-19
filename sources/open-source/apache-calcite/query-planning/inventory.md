# Apache Calcite Query Planning Source Inventory

## Mapped surfaces

| Surface | URL | Policy |
|---|---|---|
| Overview | `https://calcite.apache.org/docs/` | `derived_text_allowed` |
| Relational algebra | `https://calcite.apache.org/docs/algebra.html` | `derived_text_allowed` |
| CSV adapter tutorial | `https://calcite.apache.org/docs/tutorial.html` | `derived_text_allowed` |
| Adapters and drivers | `https://calcite.apache.org/docs/adapter.html` | `derived_text_allowed` |
| Model files | `https://calcite.apache.org/docs/model.html` | `derived_text_allowed` |
| SQL reference | `https://calcite.apache.org/docs/reference.html` | `derived_text_allowed` |
| Lattices | `https://calcite.apache.org/docs/lattice.html` | `derived_text_allowed` |
| Materialized views | `https://calcite.apache.org/docs/materialized_views.html` | `derived_text_allowed` |
| Streaming SQL | `https://calcite.apache.org/docs/stream.html` | `derived_text_allowed` |
| HOWTO | `https://calcite.apache.org/docs/howto.html` | `derived_text_allowed` |
| Powered by Calcite | `https://calcite.apache.org/docs/powered_by.html` | `derived_text_allowed` |
| Source/release boundary | `https://github.com/apache/calcite` | `metadata_only` |

## Topic families

| Family | Examples |
|---|---|
| Planner substrate | Parser, validator, optimizer, relational operator trees, planner rules, cost models, statistics. |
| Adapter layer | Schema adapters, model files, JDBC driver, Avatica, CSV tutorial, table capability levels. |
| Relational IR | RelBuilder, scans, projects, filters, aggregates, joins, expressions, rule transformations. |
| Semantic models | JSON/YAML models, schemas, tables, functions, types, materializations, cache behavior. |
| Warehouse rewrites | Lattices, star/snowflake schemas, dimensions, measures, materialized views, query rewrite. |
| Query languages | SQL grammar, SQL parser dialect, streaming SQL, windowing, grouping, stream/table combinations. |
| Boundaries | Source repository, release artifacts, generated docs, example code, adapter implementations, logos, dependency artifacts. |

## First extraction targets

| Target | Why |
|---|---|
| Relational algebra and planner rules | Direct precedent for Slice compiling expressions into backend-neutral plans. |
| Adapter capability levels | Useful for file/local/remote data-source boundaries in LATTICE. |
| Lattices and materialized-view rewrite | Connects cube/dimensional modeling to relational optimization and aggregate reuse. |
| Model files | Precedent for serializing semantic-model declarations without tying them to one engine. |
