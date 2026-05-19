# Pulse 83 - Logic, solver, and equality-saturation source identities

## Objective

Add source identities for Datalog, SMT/SAT solving, and equality saturation so
SLICE/LATTICE/CROP can discuss recursive rules, fixed points, constraints,
solver adapters, e-graphs, and rewrite saturation without committing to solver
dependencies in v1.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\logic-rewrite-solvers\constraint-rewrite`. |
| Research findings | Done | Documented Souffle, SMT-LIB, Z3, SAT Competition, egraphs-good, egg, egglog, Cornell equality saturation, and egg paper identities. |
| Surface table | Done | Added `sources\tables\logic-rewrite-solver-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-logic-rewrite-solver-surfaces.json`. |
| PROOF ledger | Done | Added a source-identity work-level row and updated counts. |

## Boundary notes

All rows are metadata-only. Documentation bodies, generated docs, repository
code, examples, demos, standards PDFs, benchmarks, solver sources, binaries,
proceedings, slides, paper PDFs, and linked assets remain boundary-checked.

## Decision support

Use Datalog-style rules for explainable recursive closure and fixed-point facts
now. Keep SMT/SAT export and equality-saturation rewrite search as adapter-backed
v2 prototypes with explicit timeout, proof, and extraction contracts.
