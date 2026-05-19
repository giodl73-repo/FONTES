# Pulse 96 - Probabilistic and causal inference source map

## Objective

Add source custody for uncertainty modeling, probabilistic inference,
graphical-model inference, causal inference, interventions, counterfactuals,
and effect-estimation provenance after the knowledge-planning/agent-reasoning
tranche.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\probabilistic-causal-inference\uncertainty-causality`. |
| Research findings | Done | Documented MIT 6.041SC, MIT 6.438, Hernan/Robins, DoWhy, and pgmpy source identities. |
| Surface table | Done | Added `sources\tables\probabilistic-causal-inference-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-probabilistic-causal-inference-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing pages are mapped as derived text. Hernan/Robins, DoWhy,
and pgmpy are metadata-only pending exact reuse review. OCW PDFs, lecture
videos, slides, readings, problem sets, recitation materials, solutions, exams,
textbook bodies, book PDFs, code, datasets, notebooks, examples, generated docs,
package artifacts, images, diagrams, model files, simulation outputs,
repositories, and linked assets remain boundary-checked.

## Decision support

Keep probability models, observed evidence, posterior claims, graph structures,
estimands, identification assumptions, interventions, counterfactuals,
estimators, sensitivity checks, datasets, and uncertainty intervals distinct.
Correlation or prediction is not causal evidence without PROOF-backed
identification and assumption records.
