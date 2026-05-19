# LookML and Malloy Semantic Modeling Custody

## Research question

How should FONTES anchor LookML and Malloy as semantic modeling/query-language
precedents for Slice/LATTICE dimensions, measures, explores, joins, reusable
sources, query views, and SQL-generation boundaries?

## Current custody decision

Google Cloud Looker documentation is mapped as `derived_text_allowed` with the
published Google documentation posture: documentation text under Creative
Commons Attribution 4.0 and code samples under Apache 2.0 unless otherwise
noted. Malloy docs are mapped as `metadata_only` pending documentation-site
reuse review; the Malloy repository identity is mapped as `derived_text_allowed`
for source identity. Screenshots, diagrams, generated notebooks, example
datasets, VS Code extension assets, code bodies, package artifacts, and releases
remain boundary-checked.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-MODEL-01 | `https://cloud.google.com/looker/docs/lookml-terms-and-concepts` | LookML projects are versioned files that define models, views, Explores, joins, derived tables, connections, and UI query behavior. | Slice needs a file-backed semantic model boundary if it wants versioned BI-style governance. | High |
| FONTES-MODEL-02 | `https://cloud.google.com/looker/docs/reference/param-field-dimension` and `https://cloud.google.com/looker/docs/reference/param-field-measure` | LookML separates dimensions from measures and requires primary-key correctness for joined measures. | Automatic metric composition needs explicit field kinds and key guarantees. | High |
| FONTES-MODEL-03 | `https://cloud.google.com/looker/docs/reference/param-explore-join` | LookML joins map Explore/view relationships into SQL FROM/JOIN clauses with sql_on/foreign_key, join type, and relationship metadata. | LATTICE should model joins as first-class semantic edges with cardinality/relationship metadata. | High |
| FONTES-MODEL-04 | `https://docs.malloydata.dev/documentation/language/source` | Malloy sources are reusable definitions over tables/views/queries that include computations, measures, dimensions, views, and join relationships. | Malloy is a strong precedent for combining semantic model and query language without forcing separate BI objects. | High |
| FONTES-MODEL-05 | `https://docs.malloydata.dev/documentation/language/query` and `https://docs.malloydata.dev/documentation/user_guides/basic` | Malloy queries use a source -> view pipeline with query stages and emit SQL against underlying engines. | Slice can explore pipeline-style query composition instead of only SQL-like or MDX-like syntax. | High |
| FONTES-MODEL-06 | `https://github.com/malloydata/malloy` | Malloy describes itself as an open-source semantic modeling and query language over existing SQL engines, with native DuckDB support and connectors to common warehouses. | Malloy should be compared with Cube/dbt as a language-level semantic model, not only a BI modeling format. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FONTES | Keep LookML/Malloy source surfaces searchable through FLETCH. | Do not mirror Malloy docs/notebooks until terms are reviewed. |
| Prototype behind boundary | LATTICE / Slice | Compare LookML Explores/views/joins and Malloy source->view pipelines against Slice expression and semantic-model options. | Do not choose a final syntax from source maps alone. |
| Defer | FONTES | Add package/source-level Malloy custody only if exact APIs or examples are needed. | Do not cache VS Code extension assets, datasets, screenshots, or generated notebook content. |
