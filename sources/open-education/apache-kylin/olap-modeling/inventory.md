# Apache Kylin OLAP Modeling Source Inventory

## Mapped surfaces

| Surface | URL | Policy |
|---|---|---|
| Model introduction | `https://kylin.apache.org/docs/model/intro/` | `derived_text_allowed` |
| Manual modeling | `https://kylin.apache.org/docs/model/manual/modeling/` | `derived_text_allowed` |
| Measures reference | `https://kylin.apache.org/docs/model/features/measures/intro/` | `derived_text_allowed` |
| Computed columns | `https://kylin.apache.org/docs/model/manual/computed_column/` | `derived_text_allowed` |
| SCD2 feature | `https://kylin.apache.org/docs/model/features/scd2/` | `derived_text_allowed` |
| Quickstart SSB dataset/tutorial | `https://kylin.apache.org/docs/quickstart/tutorial` | `local_cache_allowed` |
| Screenshots/GIFs/UI/code assets | `https://kylin.apache.org/docs/model/manual/modeling/` | `metadata_only` |

## Topic families from mapped pages

| Family | Examples |
|---|---|
| Model design | Fact table, dimension/lookup tables, star schema, snowflake schema, join relations, primary/foreign keys. |
| Analytical vocabulary | Dimensions, measures, computed columns, aggregates, TopN, exact/approximate count distinct, percentile measures. |
| Cube/index materialization | Indexes/CUBEs, aggregate indexes, table indexes, cuboids, precomputation, query acceleration. |
| Loading and lifecycle | Full/incremental loading, partition columns, batch and streaming context, recommendation/manual modeling. |
| Dimension history | SCD2 and non-equi join boundaries for historical dimension handling. |

## First extraction targets

| Target | Why |
|---|---|
| Definitions for dimensions, measures, and indexes | Establish system-facing vocabulary for cube/dimension records. |
| Fact/dimension table modeling steps | Bridge Kimball-style concepts to concrete model configuration. |
| Boundary rows for datasets/assets | Keep examples useful without committing code, screenshots, GIFs, or dataset bytes prematurely. |
