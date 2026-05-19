# Pulse 84 - Database query systems source map

## Objective

Add source custody for relational database foundations, query processing,
optimization, execution, indexes, transactions, and concurrency so
SLICE/LATTICE/CROP have database-system anchors below semantic modeling and
compiler/planner sources.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\database-query-systems\relational-execution`. |
| Research findings | Done | Documented MIT 6.830, PostgreSQL planner/executor/index/MVCC, and SQLite query-planner/transaction/locking sources. |
| Surface table | Done | Added `sources\tables\database-query-systems-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-database-query-systems-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing pages are mapped as derived text. PostgreSQL and SQLite
docs are metadata-only pending documentation-site reuse review. PDFs, exams,
assignments, labs, readings, code, examples, syntax diagrams, generated docs,
images, diagrams, and linked assets remain boundary-checked.

## Decision support

SLICE/LATTICE should keep logical relational plans distinct from physical
operators, indexes, join strategies, execution pipelines, and
transaction/isolation guarantees. Local-first plans should explain index use,
bounded search, estimated cost, and transaction boundaries.
