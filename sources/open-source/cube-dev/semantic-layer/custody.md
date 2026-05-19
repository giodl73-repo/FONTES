# Cube Semantic Layer Custody

## Research question

How should FONTES anchor Cube.dev / Cube Core as a semantic-layer precedent for
Slice/LATTICE model definitions, governed query APIs, Semantic SQL, cubes,
measures, dimensions, segments, and aggregate-aware pre-aggregations?

## Current custody decision

Cube documentation pages are mapped as `metadata_only` pending documentation
reuse-terms review. The Cube Core repository identity is mapped as
`derived_text_allowed` only for source identity and README-level Apache/open
source posture; source files, examples, packages, screenshots, diagrams, hosted
platform details, generated docs, dependencies, and release artifacts remain
boundary-checked before extraction or caching.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-CUBE-01 | `https://cube.dev/docs/product/introduction` | Cube presents an open-source semantic layer as governed infrastructure for humans and AI agents, with Semantic SQL as a trusted proxy that validates requests before reaching the warehouse. | Slice/LATTICE should evaluate a governed query boundary between semantic expressions and physical data access. | High |
| FONTES-CUBE-02 | `https://cube.dev/docs/product/data-modeling/concepts` | Cube models datasets as cubes with members: dimensions, measures, and segments; joins relate cubes, views reference members, and pre-aggregations accelerate queries. | Cube is a direct competitor/precedent for a code-first semantic model with explicit OLAP vocabulary. | High |
| FONTES-CUBE-03 | `https://cube.dev/docs/product/caching/using-pre-aggregations` | Pre-aggregations implement aggregate awareness by matching queries to materialized results, with rollup-only mode preventing unmatched queries from hitting upstream sources. | LATTICE should consider an aggregate-cache policy that can protect expensive or remote sources. | High |
| FONTES-CUBE-04 | `https://cube.dev/docs/product/apis-integrations/rest-api/query-format` | Cube REST queries are structured objects over measures, dimensions, filters, time dimensions, segments, ordering, limits, timezone, refresh, ungrouped queries, and join hints. | Slice can support structured query objects separate from textual SQL/MDX-style syntaxes. | High |
| FONTES-CUBE-05 | `https://github.com/cube-js/cube` | Cube Core describes a headless open-source semantic layer with REST, GraphQL, and SQL APIs, SQL data-source support, and relational caching. | FLETCH/LATTICE should track Cube as both semantic-layer precedent and embedded analytics API precedent. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FONTES | Keep Cube URLs searchable through the FLETCH registry and source ledger. | Do not mirror Cube docs bodies until terms are reviewed. |
| Prototype behind boundary | LATTICE / Slice | Compare Cube cubes/members/pre-aggregations/API objects against Slice declarations and plan/export APIs. | Do not adopt Cube runtime or package dependencies from source-map evidence alone. |
| Defer | FONTES | Add source/release-level custody if implementation work needs Cube APIs. | Do not cache source packages, generated docs, screenshots, or hosted-platform assets. |
