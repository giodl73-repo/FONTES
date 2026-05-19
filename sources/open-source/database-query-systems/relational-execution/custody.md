# Relational Database Query Processing, Optimization, and Transaction Custody

## Research question

What source custody should FONTES add for relational algebra, query processing,
query optimization, execution, indexing, transactions, and concurrency so
SLICE/LATTICE/CROP can ground query-plan and local-first storage decisions beyond
semantic-model and compiler-level sources?

## Current custody decision

This tranche anchors relational database foundations in MIT OCW 6.830 and maps
official PostgreSQL and SQLite documentation identities for planner/executor,
indexes, concurrency, query planning, transactions, and locking. MIT OCW course,
syllabus, and lecture-index pages are mapped as `derived_text_allowed`.
PostgreSQL and SQLite documentation is mapped conservatively as `metadata_only`
pending documentation-site reuse review. PDFs, exams, assignments, Java labs,
project materials, readings, code, examples, syntax diagrams, generated docs,
images, diagrams, and linked assets remain boundary-checked.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-DB-01 | `https://ocw.mit.edu/courses/6-830-database-systems-fall-2010/` | MIT 6.830 introduces graduate database systems foundations, focusing on relational algebra and data model, schema normalization, query optimization, and transactions. | SLICE/LATTICE now have a course-level database systems anchor for relational plans and transaction boundaries. | High |
| FONTES-DB-02 | `https://ocw.mit.edu/courses/6-830-database-systems-fall-2010/pages/syllabus/` | The syllabus names data models, normalization, integrity constraints, query processing, query optimization and cost estimation, transactions, recovery, concurrency control, isolation/consistency, distributed/parallel/heterogeneous databases, adaptive databases, triggers, key-value stores, ORMs, streaming databases, and database as a service. | This provides the broad database-design vocabulary that sits below DAX/MDX/semantic-layer source maps and above execution engines. | High |
| FONTES-DB-03 | `https://ocw.mit.edu/courses/6-830-database-systems-fall-2010/pages/lecture-notes/` | The lecture index exposes relational model, schema design, database internals, query processing, indexing/access methods, buffer pools, join algorithms, query optimization, Selinger optimizer, transactions/locking, optimistic concurrency, recovery, consistency, distributed transactions, parallel databases, NoSQL, ORM/DryadLINQ, and streaming databases. | LATTICE can distinguish logical relational models from physical operator, index, join, and transaction concerns. | High |
| FONTES-DB-04 | `https://www.postgresql.org/docs/current/planner-optimizer.html` | PostgreSQL describes a planner/optimizer that searches possible execution plans, works with paths, builds plan trees, considers scans/indexes/join strategies, and can use genetic query optimization when exhaustive join search is too expensive. | Cost/search limits should be explicit in Slice/LATTICE planning diagnostics; optimality is conditional and often bounded. | High |
| FONTES-DB-05 | `https://www.postgresql.org/docs/current/executor.html` | PostgreSQL describes executor plan nodes as a demand-pull pipeline that recursively processes plan nodes and returns rows through scans, sorts, and joins. | Useful precedent for separating logical plan selection from executable operator pipelines. | High |
| FONTES-DB-06 | `https://www.postgresql.org/docs/current/indexes.html` | PostgreSQL frames indexes as performance structures that improve retrieval but add overhead. | CROP/FLETCH local indexes should be documented as costed accelerators, not free metadata. | High |
| FONTES-DB-07 | `https://www.postgresql.org/docs/current/mvcc.html` | PostgreSQL concurrency control documentation focuses on simultaneous access, efficiency, and strict data integrity. | If LATTICE gains shared mutable stores, MVCC/isolation must be treated as a first-class design boundary. | Medium |
| FONTES-DB-08 | `https://sqlite.org/queryplanner.html` | SQLite explains SQL as declarative and delegates algorithm choice to the query planner, which chooses among many correct algorithms and relies on indexes and hints. | Strong local-first precedent for planner explanations and index-aware query behavior. | High |
| FONTES-DB-09 | `https://sqlite.org/lang_transaction.html` | SQLite transaction docs describe automatic transactions, explicit BEGIN/COMMIT/ROLLBACK, savepoint boundaries, and read/write transaction behavior. | Local-first LATTICE/FLETCH stores should expose transaction boundaries explicitly. | High |
| FONTES-DB-10 | `https://sqlite.org/lockingv3.html` | SQLite locking docs describe pager responsibility for ACID behavior, concurrency, rollback-mode locking, writer-starvation improvements, and atomic commits across files. | File-backed local stores need locking/pager semantics in the source model before concurrent mutation grows. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | SLICE / LATTICE | Keep logical relational plans separate from physical operators, indexes, join strategies, execution pipelines, and transaction/isolation guarantees. | Do not treat a semantic model, relational plan, and physical execution plan as the same artifact. |
| Prototype behind boundary | FLETCH / CROP / LATTICE | Add planner diagnostics that explain index use, bounded search, estimated cost, chosen execution strategy, and transaction boundaries for local indexes. | Do not claim globally optimal plans when search is heuristic or bounded. |
| Defer | FONTES | Promote PostgreSQL/SQLite docs or MIT lecture PDFs only after exact reuse and extraction rules are captured. | Do not cache OCW PDFs, labs, readings, database docs, syntax diagrams, examples, code, or images in this tranche. |
