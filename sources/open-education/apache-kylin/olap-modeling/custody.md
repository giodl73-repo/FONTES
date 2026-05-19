# Apache Kylin OLAP Modeling Custody

## Source

Apache Kylin model introduction:
`https://kylin.apache.org/docs/model/intro/`

Apache Kylin manual modeling guide:
`https://kylin.apache.org/docs/model/manual/modeling/`

Apache Kylin measures reference:
`https://kylin.apache.org/docs/model/features/measures/intro/`

## Current custody decision

This source map captures Apache Kylin documentation as an implementation-facing
OLAP/cube anchor for FONTES. It complements Kimball's dimensional-modeling
taxonomy by mapping a concrete open-source OLAP system's terminology for fact
tables, dimension/lookup tables, dimensions, measures, computed columns, join
relations, indexes/CUBEs, aggregate indexes, table indexes, precomputation,
loading, and slowly changing dimensions.

The text documentation is treated as `derived_text_allowed` under Apache project
documentation licensing. Screenshots, GIFs, embedded images/SVGs, UI captures,
example datasets, code-like snippets, and downloadable artifacts remain separate
boundaries until file-level review.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| Model introduction | `derived_text_allowed` | Official definitions for dimensions, measures, pre-computation, indexes/CUBEs, aggregate indexes, and table indexes. |
| Manual modeling | `derived_text_allowed` | Official guide for fact tables, dimension tables, star/snowflake schemas, joins, dimensions, measures, and loading. |
| Measures reference | `derived_text_allowed` | Official measure-family vocabulary and limitations. |
| Computed columns | `derived_text_allowed` | Useful implementation surface for dimensions/measures derived from expressions. |
| SCD2 feature | `derived_text_allowed` | Implementation bridge for slowly changing dimension semantics and non-equi joins. |
| Quickstart dataset | `local_cache_allowed` | Dataset and example payloads require file and license review before indexing or bundling. |
| Screenshots/GIFs/UI/code assets | `metadata_only` | Non-text artifacts and code-like examples require separate extraction policy review. |

## Portfolio relevance

Kylin gives FONTES a modern OLAP implementation anchor: it connects conceptual
cube/dimension vocabulary to real system records for model design, index design,
precomputation, query acceleration, and model loading. It is especially useful
for future CROP/PEBBLE shapes that need to distinguish logical dimensional
modeling from physical cube/index materialization.
