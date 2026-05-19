# Pulse 97 - Responsible AI and evaluation source map

## Objective

Add source custody for responsible AI, risk management, model documentation,
dataset documentation, language-model benchmark evaluation, and evaluation
harness provenance after the probabilistic/causal inference tranche.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\responsible-ai-evaluation\model-dataset-risk`. |
| Research findings | Done | Documented NIST AI RMF, NIST GenAI Profile, Model Cards, Datasheets for Datasets, HELM, and lm-evaluation-harness source identities. |
| Surface table | Done | Added `sources\tables\responsible-ai-evaluation-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-responsible-ai-evaluation-surfaces.json`. |
| PROOF ledger | Done | Added a source-identity work-level row and updated counts. |

## Boundary notes

All rows are metadata-only pending exact reuse review. PDFs, framework profiles,
playbook pages, model-card examples, datasheet templates, paper bodies, figures,
benchmark datasets, benchmark outputs, model outputs, result tables, generated
benchmark pages, task YAMLs, evaluation configs, repository code, docs, package
artifacts, releases, images, diagrams, and linked assets remain
boundary-checked.

## Decision support

Keep model identity, intended use, dataset provenance, benchmark scope, metrics,
risk controls, prompts/configs, outputs, limitations, and result attestations
distinct. Benchmark scores and documentation formats are not proof of general
model trustworthiness without PROOF-backed scope and limitation records.
