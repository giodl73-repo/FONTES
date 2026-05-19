# Kimball Group Dimensional Modeling Custody

## Source

Kimball Group dimensional modeling techniques:
`https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/dimensional-modeling-techniques/`

Kimball Group Data Warehouse Toolkit page:
`https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/books/data-warehouse-dw-toolkit/`

## Current custody decision

This source map captures Kimball dimensional modeling as a metadata-only anchor
for cubes, facts, dimensions, star schemas, OLAP cubes, aggregate fact tables,
conformed dimensions, bus matrices, slowly changing dimensions, hierarchies,
bridge tables, junk dimensions, role-playing dimensions, ETL subsystems, and
warehouse lifecycle concepts.

The Kimball web pages and book pages are mapped as source identities and
taxonomy anchors. User-owned Kimball books may guide manual decisions, but book
bodies, companion PDFs, spreadsheets, images, diagrams, design-tip bodies, and
utility files are not committed or extracted into FONTES without separate rights
review.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| Techniques index | `metadata_only` | Official source identity for Kimball technique families. |
| Dimensional modeling techniques | `metadata_only` | Official taxonomy for facts, dimensions, grain, star schemas, OLAP cubes, SCD, hierarchies, and bus architecture. |
| Data Warehouse Toolkit page | `metadata_only` | Book identity and companion-resource page; book body remains a boundary. |
| Bus architecture | `metadata_only` | Source identity for conformed dimensions and bus matrix concepts. |
| ETL 34 subsystems | `metadata_only` | Source identity for ETL category architecture. |
| Attached PDFs | `metadata_only` | PDF bodies require separate rights review. |
| Tools/utilities | `local_cache_allowed` | Spreadsheets, images, and utility files require file/license review. |
| User-owned books | `metadata_only` | Ownership allows reading, not committing or extracting book bodies. |

## Portfolio relevance

This fills the direct cube/dimension vocabulary gap for FONTES. It complements
UW-Madison database systems lineage by anchoring the modeling side of data
warehousing: fact tables, dimension tables, grain, conformed dimensions, bus
matrices, star schemas, OLAP cubes, aggregates, and slowly changing dimensions.
