# Responsible AI, Model Documentation, Dataset Documentation, and Evaluation Custody

## Research question

What source custody should FONTES add for responsible AI, model documentation,
dataset documentation, AI risk management, benchmark evaluation, and language
model evaluation provenance before PROOF, FLETCH, CROP, and PEBBLE make
stronger model-quality, safety, or trustworthiness claims?

## Current custody decision

This tranche anchors responsible-AI and evaluation source identities in NIST AI
RMF, NIST's generative-AI profile, Model Cards, Datasheets for Datasets, HELM,
and EleutherAI's Language Model Evaluation Harness. All rows are
`metadata_only` until exact PDF, benchmark, generated-site, repository, task,
dataset, result, and release reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-RAI-01 | `https://www.nist.gov/itl/ai-risk-management-framework` | NIST AI RMF is intended for voluntary use to improve incorporation of trustworthiness considerations into AI product, service, and system design, development, use, and evaluation. The page also links AI RMF 1.0, the playbook, roadmap, crosswalks, resource center, and generative AI profile. | Provides AI risk-management identity for safety and governance claims, but profile PDFs and playbook bodies remain boundary-checked. | High |
| FONTES-RAI-02 | `https://doi.org/10.6028/NIST.AI.600-1` | NIST AI.600-1 is the AI RMF Generative AI Profile identity referenced by NIST for generative-AI risk management. | Use as a generative-AI risk profile identity; do not cache PDF body in this tranche. | High |
| FONTES-RAI-03 | `https://arxiv.org/abs/1810.03993` | Model Cards proposes short documents accompanying trained ML models to clarify intended uses, disclose evaluation procedures, and provide benchmarked evaluation across relevant conditions and groups. | Adds source identity for model-release documentation and evaluation-report fields. | High |
| FONTES-RAI-04 | `https://arxiv.org/abs/1803.09010` | Datasheets for Datasets proposes dataset documentation covering motivation, composition, collection process, recommended uses, operating characteristics, and transparency/accountability. | Adds source identity for dataset provenance and intended-use documentation. | High |
| FONTES-RAI-05 | `https://crfm.stanford.edu/helm/classic/latest/` | HELM describes itself as a living benchmark for transparency in language models, emphasizing broad coverage, incompleteness, multi-metric measurement, standardization, and accessible data/analysis. | Adds language-model benchmark identity while keeping data, outputs, and UI/generated assets boundary-checked. | High |
| FONTES-RAI-06 | `https://github.com/EleutherAI/lm-evaluation-harness` | The repository describes CLI/config support, model backends, leaderboard tasks, multimodal prototype support, API model support, prompt configuration, and output post-processing for LM evaluation. | Adds evaluation-harness identity for reproducible model-evaluation provenance. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate model identity, intended use, dataset provenance, evaluation tasks, metrics, risk controls, benchmark version, prompts/config, outputs, and limitations; cite source identities for each. | Do not turn a benchmark score into a general safety or fitness claim without task scope, metric, dataset, and limitation provenance. |
| Prototype behind boundary | PROOF / FLETCH | Prototype responsible-AI sidecars for model cards, dataset datasheets, AI risk records, benchmark manifests, evaluation harness configs, and result attestations. | Do not cache or redistribute PDFs, benchmark datasets, model outputs, task YAMLs, repository code, generated benchmark pages, or releases in FONTES. |
| Defer | FONTES | Promote risk framework sections, model-card templates, datasheet templates, benchmark data, harness tasks, result tables, and repository docs only after reuse review. | Do not treat risk frameworks, documentation formats, and evaluation harnesses as proof that any specific model is trustworthy. |
