# Microsoft DAX, Power BI, Power Pivot, and Tabular Source Inventory

## Mapped surfaces

| Surface | URL | Policy |
|---|---|---|
| DAX overview | `https://learn.microsoft.com/en-us/dax/dax-overview` | `derived_text_allowed` |
| DAX reference | `https://learn.microsoft.com/en-us/dax/` | `derived_text_allowed` |
| Power BI star schema guidance | `https://learn.microsoft.com/en-us/power-bi/guidance/star-schema` | `derived_text_allowed` |
| Power BI model relationships | `https://learn.microsoft.com/en-us/power-bi/transform-model/desktop-relationships-understand` | `derived_text_allowed` |
| Power BI measures | `https://learn.microsoft.com/en-us/power-bi/transform-model/desktop-measures` | `derived_text_allowed` |
| Analysis Services Tabular models | `https://learn.microsoft.com/en-us/analysis-services/tabular-models/tabular-models-ssas?view=asallproducts-allversions` | `derived_text_allowed` |
| Power Pivot overview | `https://support.microsoft.com/en-us/office/power-pivot-overview-and-learning-f9001958-7901-4caa-ad80-028a6d2432ed` | `metadata_only` |
| Public installer/sample download boundary | `https://learn.microsoft.com/en-us/power-bi/fundamentals/desktop-get-the-desktop` | `local_cache_allowed` |
| DAX function reference | `https://learn.microsoft.com/en-us/dax/dax-function-reference` | `derived_text_allowed` |
| DAX syntax reference | `https://learn.microsoft.com/en-us/dax/dax-syntax-reference` | `derived_text_allowed` |
| DAX operator reference | `https://learn.microsoft.com/en-us/dax/dax-operator-reference` | `derived_text_allowed` |
| DAX queries | `https://learn.microsoft.com/en-us/dax/dax-queries` | `derived_text_allowed` |
| DAX variables best practice | `https://learn.microsoft.com/en-us/dax/best-practices/dax-variables` | `derived_text_allowed` |
| DAX FILTER argument best practice | `https://learn.microsoft.com/en-us/power-bi/guidance/dax-avoid-avoid-filter-as-filter-argument` | `derived_text_allowed` |
| SQLBI DAX Guide | `https://dax.guide/` | `metadata_only` |
| SQLBI DAX Patterns | `https://www.daxpatterns.com/` | `metadata_only` |
| DAX Studio homepage | `https://daxstudio.org/` | `metadata_only` |

## Topic families from mapped pages

| Family | Examples |
|---|---|
| DAX calculations | Measures, calculated columns, calculated tables, row-level security, queries, functions, operators, filter context. |
| Power BI semantic modeling | Star schemas, dimension tables, fact tables, grain, relationships, cardinality, filter propagation, disconnected tables. |
| Dimensional patterns | Role-playing dimensions, slowly changing dimensions, junk dimensions, degenerate dimensions, factless fact tables, surrogate keys. |
| Tabular engine/modeling | In-memory models, DirectQuery, VertiPaq, semantic objects, tables, partitions, relationships, hierarchies, measures, KPIs. |
| Excel/Power Pivot | Excel Data Model, relationships, calculations, Power Query integration, Power Pivot window, Diagram view. |
| Boundaries | Support-site prose/images, screenshots, animations, installers, sample workbooks/models, downloads, and internal Microsoft assets. |
| Community/tool references | DAX Guide, DAX Patterns, DAX Studio documentation and tooling boundaries. |

## First extraction targets

| Target | Why |
|---|---|
| DAX calculation object vocabulary | Needed for PEBBLE/CROP semantic-model records that distinguish measures, calculated columns, calculated tables, and RLS. |
| Relationship/filter semantics | Connects star-schema source models to tabular semantic model behavior. |
| Tabular/Power Pivot identities | Gives Excel and Analysis Services Tabular parity with Power BI semantic model records. |
