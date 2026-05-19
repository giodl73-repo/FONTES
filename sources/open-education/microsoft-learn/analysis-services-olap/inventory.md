# Microsoft Learn Analysis Services OLAP Source Inventory

## Mapped surfaces

| Surface | URL | Policy |
|---|---|---|
| Cube objects | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models-olap-logical-cube-objects/cube-objects-analysis-services-multidimensional-data?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Dimension objects | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models-olap-logical-dimension-objects/dimension-objects-analysis-services-multidimensional-data?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Dimension relationships | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models-olap-logical-cube-objects/dimension-relationships?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Measures and measure groups | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models/measures-and-measure-groups?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Aggregations and aggregation designs | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models-olap-logical-cube-objects/aggregations-and-aggregation-designs?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Partitions | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-analysis-services-multidimensional-data?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Tutorial media/samples/code boundary | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-tutorial/multidimensional-modeling-adventure-works-tutorial?view=sql-analysis-services-2025` | `metadata_only` |

## Topic families from mapped pages

| Family | Examples |
|---|---|
| Cube structure | Cube object, cube dimensions, database dimensions, measure groups, default measure, storage mode. |
| Dimension structure | Attributes, attribute hierarchies, user hierarchies, star-schema and snowflake-schema attribute relationships. |
| Relationship taxonomy | Regular, reference, fact/degenerate, and many-to-many dimension relationships. |
| Measures | Measures, measure groups, fact-table mapping, aggregation functions, semiadditive behavior, distinct count. |
| Physical optimization | Aggregations, aggregation designs, granularity attributes, partitions, slicing expressions, storage modes. |

## First extraction targets

| Target | Why |
|---|---|
| Dimension relationship taxonomy | Needed for cube/dimension model records that distinguish star, snowflake, degenerate, and bridge patterns. |
| Measure group vocabulary | Connects measure semantics to fact-table and processing units. |
| Aggregation/partition concepts | Supports CROP/PEBBLE records for physical OLAP performance structures. |
