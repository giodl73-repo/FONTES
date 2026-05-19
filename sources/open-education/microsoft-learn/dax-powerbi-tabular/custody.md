# Microsoft DAX, Power BI, Power Pivot, and Tabular Model Custody

## Source

DAX overview:
`https://learn.microsoft.com/en-us/dax/dax-overview`

Power BI star schema guidance:
`https://learn.microsoft.com/en-us/power-bi/guidance/star-schema`

Analysis Services Tabular models:
`https://learn.microsoft.com/en-us/analysis-services/tabular-models/tabular-models-ssas?view=asallproducts-allversions`

Power Pivot overview:
`https://support.microsoft.com/en-us/office/power-pivot-overview-and-learning-f9001958-7901-4caa-ad80-028a6d2432ed`

## Current custody decision

This source map captures the public Microsoft semantic-model stack for DAX,
Power BI semantic models, Power Pivot in Excel, and Analysis Services Tabular.
It anchors measures, calculated columns, calculated tables, row-level security,
DAX queries, model relationships, star-schema guidance, dimension/fact roles,
tabular model objects, VertiPaq/DirectQuery concepts, Power Pivot relationships,
and Excel Data Model concepts.

Microsoft Learn documentation pages are treated as `derived_text_allowed` with
Microsoft documentation terms and attribution awareness. Microsoft Support Power
Pivot pages, screenshots, animations, UI captures, tutorial/sample payloads,
installers, downloads, code snippets, and workbook/model files remain separate
boundaries until site-specific and file-level review. Working at Microsoft does
not by itself make internal or private assets part of FONTES; only public source
locations are mapped here.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| DAX overview | `derived_text_allowed` | Official cross-product DAX overview for Power BI, Power Pivot, and Analysis Services. |
| DAX reference | `derived_text_allowed` | Official DAX function/operator/expression reference landing page. |
| Power BI star schema | `derived_text_allowed` | Official semantic-model guidance for fact/dimension roles, grain, relationships, and dimensional modeling patterns. |
| Power BI relationships | `derived_text_allowed` | Official filter propagation, cardinality, and model relationship guidance. |
| Power BI measures | `derived_text_allowed` | Official DAX measure guidance for Power BI semantic models. |
| Analysis Services Tabular | `derived_text_allowed` | Official tabular model, VertiPaq, DirectQuery, and semantic object overview. |
| Power Pivot support | `metadata_only` | Support-site text/images/tutorials require separate support terms review. |
| Installers/downloads/samples | `local_cache_allowed` | Public downloads can be cached only after license, security, redistribution, and file review. |
| DAX function/syntax/operator/query references | `derived_text_allowed` | Official Microsoft Learn DAX language reference surfaces. |
| DAX best-practice pages | `derived_text_allowed` | Official Microsoft Learn/Power BI guidance for formula quality and performance. |
| SQLBI DAX Guide | `metadata_only` | Community/professional reference; content and examples require SQLBI terms review. |
| SQLBI DAX Patterns | `metadata_only` | Community/professional pattern catalog; pattern bodies require SQLBI terms review. |
| DAX Studio docs/tooling | `metadata_only` | Tool docs, binaries, examples, and traces require terms and file review. |

## Portfolio relevance

This fills the modern Microsoft semantic layer gap above warehouse/cube sources.
Kimball, Kylin, SSAS multidimensional, and Oracle map warehouse/cube structures;
this pulse maps the tabular semantic model layer that users actually query with
DAX through Power BI, Excel/Power Pivot, and Analysis Services Tabular.
