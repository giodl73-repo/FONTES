# Evidence and Observable Framework Data App Custody

## Research question

How should FONTES anchor Evidence and Observable Framework as data-to-document,
dashboard, and report-generation precedents for PROOF and downstream LATTICE
outputs?

## Current custody decision

Evidence and Observable Framework documentation pages are mapped as
`metadata_only` pending documentation-site reuse review. Repository identities
are mapped as `derived_text_allowed` for README/license source identity only.
Source files, examples, screenshots, generated docs, templates, package
artifacts, chart assets, logos, loaders, datasets, binaries, and releases remain
boundary-checked before extraction or caching.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-APP-01 | `https://docs.evidence.dev/` | Evidence builds BI websites from Markdown files with SQL statements, charts/components, templated pages, loops, and conditionals. | PROOF can compare report generation against a Markdown+SQL data-product model. | High |
| FONTES-APP-02 | `https://docs.evidence.dev/core-concepts/data-sources/` | Evidence extracts data sources into Parquet and supports warehouses, flat files, non-SQL APIs, source queries, and environment-variable production credentials. | LATTICE/PROOF should separate data extraction/cache from rendered report pages. | High |
| FONTES-APP-03 | `https://docs.evidence.dev/core-concepts/queries/` | Evidence runs named SQL code fences in Markdown, supports query chaining, compiled SQL viewing, and circular/missing reference detection. | PROOF could adopt named query blocks and dependency validation for data-backed documents. | High |
| FONTES-APP-04 | `https://observablehq.com/framework/` | Observable Framework is an open-source static site generator for data apps, dashboards, and reports using Markdown, reactive JavaScript, and data-loader snapshots. | PROOF/FLETCH can compare static data app publication against dynamic report rendering. | High |
| FONTES-APP-05 | `https://observablehq.com/framework/loaders` | Observable data loaders run at build time, can be polyglot, and generate optimized static snapshots so users do not need data-warehouse access. | Cached PROOF artifacts can use build-time loaders/snapshots as a safety and performance precedent. | High |
| FONTES-APP-06 | `https://github.com/evidence-dev/evidence` and `https://github.com/observablehq/framework` | Both repositories describe open-source code-first data app/report frameworks with source-controlled files and deployment paths. | FONTES should keep these as report-generation precedents distinct from semantic-model engines. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FONTES | Keep Evidence/Observable source identities searchable through FLETCH. | Do not mirror docs or example sites until terms are reviewed. |
| Prototype behind boundary | PROOF / LATTICE | Compare PROOF data-backed docs against Evidence named SQL blocks and Observable build-time data loaders. | Do not adopt either framework runtime from source-map evidence alone. |
| Defer | FONTES | Add exact source/package custody only if PROOF prototypes against these tools. | Do not cache screenshots, templates, examples, packages, loaders, or releases. |
