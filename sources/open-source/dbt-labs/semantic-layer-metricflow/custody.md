# dbt Semantic Layer and MetricFlow Custody

## Research question

How should FONTES anchor dbt Semantic Layer and MetricFlow as precedents for
Slice/LATTICE semantic models, metric definitions, entity-graph joins, reusable
queries, exports, and SQL generation?

## Source

dbt Semantic Layer documentation:
`https://docs.getdbt.com/docs/use-dbt-semantic-layer/dbt-sl`

MetricFlow repository:
`https://github.com/dbt-labs/metricflow`

## Current custody decision

This source map uses a mixed policy. Public dbt documentation pages are mapped
as `metadata_only` until dbt documentation reuse terms are separately reviewed.
The MetricFlow repository README/source identity is mapped as
`derived_text_allowed` under its Apache 2.0 license posture. Screenshots,
diagrams, videos, pricing/tier details, generated docs, code examples, package
artifacts, dependency files, and release payloads remain boundary-checked.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-DBT-01 | `https://docs.getdbt.com/docs/use-dbt-semantic-layer/dbt-sl` | dbt Semantic Layer centralizes metric definitions in the modeling layer and uses MetricFlow to generate SQL and handle joins for downstream tools. | Slice should separate metric-definition custody from downstream BI/query surfaces. | High |
| FONTES-DBT-02 | `https://docs.getdbt.com/docs/build/about-metricflow` | MetricFlow defines metrics with YAML abstractions and a semantic graph of semantic models and metrics; the graph is used to find valid data paths and generate SQL. | LATTICE can model semantic definitions as graph nodes/edges before compiling to SQL or local plans. | High |
| FONTES-DBT-03 | `https://docs.getdbt.com/docs/build/entities` and `https://docs.getdbt.com/docs/build/join-logic` | Entities act as join keys, with primary/unique/foreign/natural types; MetricFlow uses entity types to avoid fan-out and chasm joins and performs validation with explain queries. | Slice/LATTICE needs explicit relationship cardinality and join-safety metadata if it automatically composes metrics. | High |
| FONTES-DBT-04 | `https://docs.getdbt.com/docs/build/dimensions`, `https://docs.getdbt.com/docs/build/measures`, and `https://docs.getdbt.com/docs/build/metrics-overview` | dbt splits semantic declarations into dimensions, measures, and metric types including simple, cumulative, derived, ratio, and conversion metrics. | This is a strong precedent for keeping measure primitives separate from business metric formulas. | High |
| FONTES-DBT-05 | `https://docs.getdbt.com/docs/build/saved-queries` and `https://docs.getdbt.com/docs/use-dbt-semantic-layer/exports` | Saved queries group metrics, dimensions, and filters; exports materialize saved queries as tables or views for tools without native Semantic Layer integrations. | LATTICE can expose stable query/export artifacts without requiring every consumer to understand the full semantic layer. | High |
| FONTES-DBT-06 | `https://github.com/dbt-labs/metricflow` | MetricFlow describes metric requests compiling into dataflow-based query plans that are optimized and translated into engine-specific SQL. | Slice can use MetricFlow as precedent for a semantic metric layer that compiles to backend-specific SQL/plans. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FONTES | Keep official dbt Semantic Layer URLs and MetricFlow repository identity searchable through FLETCH. | Do not copy dbt docs bodies until documentation terms are reviewed. |
| Prototype behind boundary | LATTICE / Slice | Compare Slice semantic declarations against entities, dimensions, measures, metric types, join validation, saved queries, and exports. | Do not assume dbt Cloud tier behavior or integration APIs are available locally. |
| Defer | FONTES | Add deeper MetricFlow source/API custody only if a prototype needs exact package interfaces. | Do not cache packages, release artifacts, generated docs, diagrams, or code examples in this pulse. |
