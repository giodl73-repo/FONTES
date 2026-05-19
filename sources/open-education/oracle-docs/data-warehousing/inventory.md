# Oracle Database Data Warehousing Guide Source Inventory

## Mapped surfaces

| Surface | URL | Policy |
|---|---|---|
| Data Warehousing Guide index | `https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/index.html` | `metadata_only` |
| Logical design | `https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/data-warehouse-logical-design.html` | `metadata_only` |
| Physical design | `https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/data-warehouse-physical-design.html` | `metadata_only` |
| Dimensions | `https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/dimensions.html` | `metadata_only` |
| Basic materialized views | `https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/basic-materialized-views.html` | `metadata_only` |
| Basic query rewrite for materialized views | `https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/basic-query-rewrite-materialized-views.html` | `metadata_only` |
| PDF manual boundary | `https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/database-data-warehousing-guide.pdf` | `metadata_only` |

## Topic families from mapped pages

| Family | Examples |
|---|---|
| Logical design | 3NF, dimensional models, star schemas, snowflake schemas, facts, dimensions, fact tables, dimension tables. |
| Dimension objects | `CREATE DIMENSION`, levels, hierarchies, child/parent rollups, normalized dimensions, attributes, hierarchical integrity. |
| Summary management | Materialized views, summaries, aggregate views, precomputed joins, precomputed aggregations, query rewrite. |
| Physical design | Partitions, indexes, views, integrity constraints, materialized views, dimensions, manageability/performance structures. |
| Boundaries | SQL examples, diagrams, screenshots, sample schemas, linked product docs, and PDF body. |

## First extraction targets

| Target | Why |
|---|---|
| Source identities | Preserve stable Oracle documentation locations without copying restricted documentation bodies. |
| Topic-family inventory | Add Oracle terminology for future CROP/PEBBLE cube/dimension schema alignment. |
| Boundary rows | Keep SQL examples, diagrams, PDF body, and sample assets out of FONTES until rights review. |
