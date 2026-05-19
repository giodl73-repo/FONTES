# Pulse 99 - Signals and control systems source map

## Objective

Add source custody for signal representations, linear systems, transforms,
filtering, estimation, feedback control, stability, observers, and
signal-processing/control tool identities after the information-theory tranche.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\signals-control-systems\filtering-feedback`. |
| Research findings | Done | Documented MIT 6.003, MIT 6.011, MIT 2.14, Stanford EE102, SciPy signal, and python-control source identities. |
| Surface table | Done | Added `sources\tables\signals-control-systems-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-signals-control-systems-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing pages are mapped as derived text. Stanford EE102, SciPy
signal, and python-control are metadata-only pending exact reuse review. OCW
lecture notes, videos, open textbook assets, readings, labs, lab reports,
problem sets, solutions, exams, assignments, projects, textbook bodies,
generated docs, source code, examples, notebooks, tests, package artifacts,
releases, images, diagrams, and linked assets remain boundary-checked.

## Decision support

Keep signal representation, sample rate, transform, filter, plant model,
controller, observer, estimator, noise model, simulation settings, and response
metrics distinct. Filtered output or stable simulation is not source evidence
without PROOF-backed model, sampling, noise, controller, and validation
provenance.
