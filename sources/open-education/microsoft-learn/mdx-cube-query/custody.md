# Microsoft MDX Cube Query Custody

## Source

MDX query fundamentals:
`https://learn.microsoft.com/en-us/analysis-services/multidimensional-models/mdx/mdx-query-fundamentals-analysis-services?view=sql-analysis-services-2025`

MDX reference:
`https://learn.microsoft.com/en-us/sql/mdx/multidimensional-expressions-mdx-reference?view=sql-server-ver17`

## Current custody decision

This source map captures Microsoft Learn MDX documentation as the classic cube
query-language anchor for FONTES. It complements DAX and the tabular semantic
model stack by mapping multidimensional concepts: cube queries, cellsets,
members, tuples, sets, axes, slicer axes, calculated members, named sets,
cell calculations, MDX expressions, functions, SELECT syntax, and Autoexists.

Microsoft Learn documentation pages are treated as `derived_text_allowed` with
Microsoft documentation terms and attribution awareness. Code samples, MDX query
examples, Adventure Works sample databases, screenshots, UI captures,
downloadable tutorial assets, and local query traces remain boundary-checked
until file-level and redistribution review.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| Key concepts | `derived_text_allowed` | Official definitions for measures, dimensions, members, hierarchies, and aggregations. |
| Query fundamentals | `derived_text_allowed` | Official map of the MDX query documentation surface. |
| Basic query | `derived_text_allowed` | Official MDX SELECT/FROM/WHERE, axis, slicer, and SQL-comparison guide. |
| Members, tuples, sets | `derived_text_allowed` | Official member/tuple/set vocabulary and function families. |
| Syntax elements | `derived_text_allowed` | Official identifiers, expressions, operators, functions, comments, and keyword reference. |
| Expressions | `derived_text_allowed` | Official simple/complex expression and typed expression reference. |
| SELECT statement | `derived_text_allowed` | Official syntax for axes, slicers, subcubes, properties, Autoexists, and WITH clauses. |
| Function reference | `derived_text_allowed` | Official MDX function-family index. |
| Calculated members | `derived_text_allowed` | Official query/session-scoped calculated member guidance. |
| Named sets | `derived_text_allowed` | Official query/session-scoped named-set guidance. |
| Adventure Works samples/media/code | `metadata_only` | Samples, screenshots, downloads, MDX examples, and tutorial assets require separate review. |

## Portfolio relevance

MDX is the clearest contrast case for Slice/DAX decisions. It models cube query
results as axes over sets of members or tuples, plus an optional slicer axis and
calculated/query-scoped declarations. This gives LATTICE/Slice vocabulary for
hierarchies, members, sets, tuples, axes, cell properties, and cube context that
DAX does not foreground in the same way.
