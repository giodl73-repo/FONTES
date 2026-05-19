# Microsoft MDX Cube Query Source Inventory

## Mapped surfaces

| Surface | URL | Policy |
|---|---|---|
| MDX key concepts | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models/mdx/key-concepts-in-mdx-analysis-services?view=sql-analysis-services-2025` | `derived_text_allowed` |
| MDX query fundamentals | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models/mdx/mdx-query-fundamentals-analysis-services?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Basic MDX query | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models/mdx/mdx-query-the-basic-query?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Members, tuples, and sets | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models/mdx/working-with-members-tuples-and-sets-mdx?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Syntax elements | `https://learn.microsoft.com/en-us/sql/mdx/mdx-syntax-elements-mdx?view=sql-server-ver17` | `derived_text_allowed` |
| Expressions | `https://learn.microsoft.com/en-us/sql/mdx/expressions-mdx?view=sql-server-ver17` | `derived_text_allowed` |
| SELECT statement | `https://learn.microsoft.com/en-us/sql/mdx/mdx-data-manipulation-select?view=sql-server-ver17` | `derived_text_allowed` |
| Function reference | `https://learn.microsoft.com/en-us/sql/mdx/mdx-function-reference-mdx?view=sql-server-ver17` | `derived_text_allowed` |
| Calculated members | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models/mdx/mdx-calculated-members-building-calculated-members?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Named sets | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-models/mdx/mdx-named-sets-building-named-sets?view=sql-analysis-services-2025` | `derived_text_allowed` |
| Adventure Works samples/media/code boundary | `https://learn.microsoft.com/en-us/analysis-services/multidimensional-tutorial/multidimensional-modeling-adventure-works-tutorial?view=sql-analysis-services-2025` | `metadata_only` |

## Topic families from mapped pages

| Family | Examples |
|---|---|
| Cube concepts | Measures, dimensions, dimension attributes, members, attribute hierarchies, navigation hierarchies, all/leaf/parent members. |
| Query shape | SELECT/FROM/WHERE, query axes, slicer axes, subcubes, cellsets, COLUMNS/ROWS/PAGES/SECTIONS/CHAPTERS. |
| MDX value forms | Members, tuples, sets, scalar expressions, cube/subcube expressions, dimension/member/tuple/set expressions. |
| Reusable declarations | WITH, calculated members, named sets, query scope, session scope, CREATE MEMBER, CREATE SET. |
| Function families | Array, hierarchy, level, logical, member, numeric, set, string, tuple functions. |
| Execution semantics | NON EMPTY, Autoexists, default members, cell properties, dimension/member properties, solve/pass order boundaries. |
| Boundaries | MDX examples, screenshots, UI captures, Adventure Works sample databases, downloads, local traces. |

## First extraction targets

| Target | Why |
|---|---|
| Axes/slicer/cellset vocabulary | Needed to compare MDX-like cube querying against DAX-like measure evaluation and Slice expressions. |
| Members/tuples/sets | Core contrast vocabulary for LATTICE model hierarchy and pivot semantics. |
| Calculated members/named sets | Candidate precedent for query-scoped Slice declarations and reusable semantic cuts. |
