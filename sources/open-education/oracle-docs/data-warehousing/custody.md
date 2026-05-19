# Oracle Database Data Warehousing Guide Custody

## Source

Oracle Database Data Warehousing Guide:
`https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/index.html`

Logical design chapter:
`https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/data-warehouse-logical-design.html`

Materialized views chapter:
`https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/basic-materialized-views.html`

## Current custody decision

This source map captures Oracle Database Data Warehousing Guide pages as
metadata-only source identities for data-warehouse logical design, star schemas,
snowflake schemas, fact tables, dimension tables, Oracle dimension objects,
hierarchies, materialized views, summaries, query rewrite, partitioning, and
physical design structures.

Oracle documentation is not treated as a derived-text source in this pulse. The
guide pages are mapped as authoritative source locations and topic anchors only.
Documentation body text, SQL examples, diagrams, screenshots, the full PDF
manual, sample schemas, downloads, and linked product documentation remain
rights-boundary material until a separate Oracle documentation/license review.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| Guide index | `metadata_only` | Stable guide/version identity. |
| Logical design | `metadata_only` | Source identity for 3NF, star schema, facts/dimensions, fact tables, dimension tables, and snowflake schema sections. |
| Physical design | `metadata_only` | Source identity for partitioning, indexes, materialized views, and dimensions as physical structures. |
| Dimensions | `metadata_only` | Source identity for Oracle dimension objects, levels, hierarchies, attributes, and rewrite support. |
| Materialized views | `metadata_only` | Source identity for summaries, aggregate views, precomputed joins/aggregations, and query rewrite. |
| Query rewrite examples | `metadata_only` | Source identity for materialized-view rewrite examples; SQL remains code-boundary material. |
| PDF manual | `metadata_only` | PDF body is not extracted or committed. |

## Portfolio relevance

Oracle adds an enterprise relational-warehouse perspective that complements
Kimball, Kylin, and SSAS. It is strongest for star/snowflake logical design,
database-level dimension objects, materialized-view summaries, transparent query
rewrite, and partitioning/physical-design boundaries.
