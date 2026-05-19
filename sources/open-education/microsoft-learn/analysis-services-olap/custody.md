# Microsoft Learn Analysis Services OLAP Custody

## Source

SQL Server Analysis Services cube objects:
`https://learn.microsoft.com/en-us/analysis-services/multidimensional-models-olap-logical-cube-objects/cube-objects-analysis-services-multidimensional-data?view=sql-analysis-services-2025`

SQL Server Analysis Services dimension relationships:
`https://learn.microsoft.com/en-us/analysis-services/multidimensional-models-olap-logical-cube-objects/dimension-relationships?view=sql-analysis-services-2025`

## Current custody decision

This source map captures Microsoft Learn SQL Server Analysis Services
multidimensional documentation as a vendor-canonical OLAP cube implementation
anchor. It complements Kimball and Apache Kylin by mapping Microsoft terminology
for cubes, cube dimensions, database dimensions, attributes, hierarchies,
measures, measure groups, dimension usage, regular/reference/fact/many-to-many
relationships, aggregations, aggregation designs, partitions, and storage/query
tradeoffs.

Documentation text is treated as `derived_text_allowed` with Microsoft Learn
documentation attribution requirements. Screenshots, diagrams, UI captures,
tutorial sample databases, downloadable files, XMLA/MDX/code snippets, and
GitHub-hosted documentation source remain boundary-checked before extraction or
bundling.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| Cube objects | `derived_text_allowed` | Official cube, dimension collection, and measure-group definitions. |
| Dimension objects | `derived_text_allowed` | Official dimension, attribute, hierarchy, star-schema, and snowflake-schema definitions. |
| Dimension relationships | `derived_text_allowed` | Official regular, reference, fact/degenerate, and many-to-many relationship taxonomy. |
| Measures and measure groups | `derived_text_allowed` | Official measure/fact-table and measure-group/fact-table mapping guidance. |
| Aggregations | `derived_text_allowed` | Official precalculated summary and aggregation-design vocabulary. |
| Partitions | `derived_text_allowed` | Official measure-group partitioning, slicing, storage, and processing vocabulary. |
| Tutorial media/samples/code | `metadata_only` | Screenshots, sample databases, downloads, XMLA/MDX/code, and GitHub source require separate review. |

## Portfolio relevance

SSAS gives FONTES a mature enterprise OLAP cube implementation anchor. It is
especially useful for future PEBBLE/CROP records that need relationship types
and physical optimization concepts: regular dimension joins for star schemas,
reference relationships for snowflake schemas, fact dimensions for degenerate
dimensions, many-to-many bridge relationships, aggregation designs, and
partitioned measure-group storage.
