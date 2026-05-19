# Kimball Group Dimensional Modeling Source Inventory

## Mapped surfaces

| Surface | URL | Policy |
|---|---|---|
| Kimball techniques index | `https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/` | `metadata_only` |
| Dimensional modeling techniques | `https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/dimensional-modeling-techniques/` | `metadata_only` |
| Data Warehouse Toolkit, Third Edition | `https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/books/data-warehouse-dw-toolkit/` | `metadata_only` |
| Enterprise data warehouse bus architecture | `https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/kimball-data-warehouse-bus-architecture/` | `metadata_only` |
| ETL architecture 34 subsystems | `https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/etl-architecture-34-subsystems/` | `metadata_only` |
| Dimensional modeling attached PDF | `https://www.kimballgroup.com/wp-content/uploads/2013/08/2013.09-Kimball-Dimensional-Modeling-Techniques11.pdf` | `metadata_only` |
| Toolkit companion tools/utilities | `https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/books/data-warehouse-dw-toolkit/` | `local_cache_allowed` |
| User-owned Kimball books | `https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/books/` | `metadata_only` |

## Topic families from mapped pages

| Family | Examples |
|---|---|
| Fundamental concepts | Business requirements, four-step design, business process, grain, dimensions, facts, star schemas, OLAP cubes. |
| Fact table techniques | Fact table structure, additive/semi-additive/non-additive facts, transaction snapshots, periodic snapshots, aggregate fact tables/cubes. |
| Dimension techniques | Surrogate keys, degenerate dimensions, flattened dimensions, hierarchies, calendar dates, role-playing dimensions, junk dimensions, snowflaked dimensions. |
| Integration | Conformed dimensions, shrunken rollups, drilling across, bus architecture, bus matrix. |
| Slowly changing dimensions | Types 0 through 7. |
| ETL architecture | Extract, transform, load, and management subsystem families. |

## First extraction targets

| Target | Why |
|---|---|
| Surface identities | Preserve canonical Kimball source locations without copying book/PDF bodies. |
| Topic-family inventory | Seed future CROP/PEBBLE schemas for dimensions, facts, measures, and rollups. |
| Boundary rows | Keep user-owned books and companion files usable as manual references without committing copyrighted content. |
