# Pulse 100 - Optimization and operations research source map

## Objective

Add source custody for optimization, operations research, mathematical
programming, convex optimization, solver identities, model provenance, objective
and constraint claims, and reproducible solver-result boundaries.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\optimization-operations-research\mathematical-programming-solvers`. |
| Research findings | Done | Documented MIT 15.093J, MIT 6.251J, MIT 15.053, Boyd/Vandenberghe, CVXPY, SciPy optimize, and Google OR-Tools identities. |
| Surface table | Done | Added `sources\tables\optimization-operations-research-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-optimization-operations-research-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing pages are mapped as derived text. Boyd/Vandenberghe,
CVXPY, SciPy optimize, and Google OR-Tools are metadata-only pending exact reuse
review. OCW assignments, exams, PDFs, problem sets, spreadsheets, projects,
free-online book bodies, book PDFs, slides, exercises, generated docs, source
code, examples, notebooks, benchmarks, package artifacts, solver binaries,
proprietary manuals, images, diagrams, and linked assets remain
boundary-checked.

## Decision support

Keep objective, variables, constraints, data sources, algorithm family, solver
implementation, solver settings, solution status, dual/certificate, optimality
gap, and sensitivity claims distinct. A feasible or optimal solver output is not
source evidence without PROOF-backed model, data, solver, settings, and status
provenance.
