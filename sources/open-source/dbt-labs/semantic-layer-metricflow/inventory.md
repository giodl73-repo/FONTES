# dbt Semantic Layer and MetricFlow Source Inventory

## Mapped surfaces

| Surface | URL | Policy |
|---|---|---|
| dbt Semantic Layer overview | `https://docs.getdbt.com/docs/use-dbt-semantic-layer/dbt-sl` | `metadata_only` |
| MetricFlow concepts | `https://docs.getdbt.com/docs/build/about-metricflow` | `metadata_only` |
| Semantic models | `https://docs.getdbt.com/docs/build/semantic-models` | `metadata_only` |
| Entities | `https://docs.getdbt.com/docs/build/entities` | `metadata_only` |
| Dimensions | `https://docs.getdbt.com/docs/build/dimensions` | `metadata_only` |
| Measures | `https://docs.getdbt.com/docs/build/measures` | `metadata_only` |
| Metrics overview | `https://docs.getdbt.com/docs/build/metrics-overview` | `metadata_only` |
| Join logic | `https://docs.getdbt.com/docs/build/join-logic` | `metadata_only` |
| Saved queries | `https://docs.getdbt.com/docs/build/saved-queries` | `metadata_only` |
| Exports | `https://docs.getdbt.com/docs/use-dbt-semantic-layer/exports` | `metadata_only` |
| Semantic Layer architecture | `https://docs.getdbt.com/docs/use-dbt-semantic-layer/sl-architecture` | `metadata_only` |
| MetricFlow repository | `https://github.com/dbt-labs/metricflow` | `derived_text_allowed` |

## Topic families

| Family | Examples |
|---|---|
| Semantic graph | Semantic models as nodes, entities as edges, join paths, metric availability, validation. |
| Metric vocabulary | Dimensions, measures, simple metrics, cumulative metrics, derived metrics, ratio metrics, conversion metrics. |
| Join safety | Primary/unique/foreign/natural entities, fan-out avoidance, chasm-join avoidance, multi-hop joins, explain validation. |
| Query reuse | Saved queries, filters, common dimensions, cache configuration, DAG visibility. |
| Export path | Tables/views materialized from saved queries for tools without native Semantic Layer integrations. |
| Boundaries | dbt docs bodies, screenshots, diagrams, videos, pricing/tier details, package artifacts, generated docs, examples, releases. |

## First extraction targets

| Target | Why |
|---|---|
| Entity and join-safety model | Critical if Slice composes metrics across tables automatically. |
| Measure versus metric split | Useful vocabulary for deciding whether Slice is a measure layer, metric layer, or expression compiler. |
| Saved queries and exports | Precedent for stable downstream artifacts without requiring native semantic-layer clients. |
| Dataflow query plan wording | Direct comparison point with Calcite relational plans and future Substrait portable plans. |
