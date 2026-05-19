# Probabilistic Inference, Graphical Models, and Causal Inference Custody

## Research question

What source custody should FONTES add for probabilistic uncertainty, graphical
model inference, causal inference, interventions, counterfactuals, and
effect-estimation provenance before PROOF, FLETCH, CROP, and PEBBLE make
stronger evidence or causal claims?

## Current custody decision

This tranche anchors probability and graphical-model inference in MIT OCW
6.041SC and 6.438. MIT OCW course/listing pages are mapped as
`derived_text_allowed`. Hernan/Robins, DoWhy, and pgmpy are mapped as
`metadata_only` until exact textbook, generated-doc, source, notebook, example,
dataset, package, and linked-asset reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-CAUSAL-01 | `https://ocw.mit.edu/courses/6-041sc-probabilistic-systems-analysis-and-applied-probability-fall-2013/` | MIT 6.041SC introduces modeling, quantification, and analysis of uncertainty; probability theory and statistical inference are framed as tools for analyzing data and making sense of it. | Provides the primary candidate surface for uncertainty and probability custody. | High |
| FONTES-CAUSAL-02 | `https://ocw.mit.edu/courses/6-041sc-probabilistic-systems-analysis-and-applied-probability-fall-2013/pages/syllabus/` | The syllabus describes probabilistic modeling, random processes, statistical inference, scientific prediction under uncertainty, prerequisites, and independent-study structure. | Supports source-backed separation between uncertainty modeling and deterministic fact claims. | High |
| FONTES-CAUSAL-03 | `https://ocw.mit.edu/courses/6-438-algorithms-for-inference-fall-2014/` | MIT 6.438 is a graduate introduction to statistical inference with probabilistic models defined using graphical representations for ML, signal processing, AI, computer vision, control, and communication. | Adds graphical-model inference foundations for probabilistic evidence propagation. | High |
| FONTES-CAUSAL-04 | `https://ocw.mit.edu/courses/6-438-algorithms-for-inference-fall-2014/pages/lecture-notes/` | The lecture index includes directed/undirected/factor graphs, I-maps, Gaussian graphical models, elimination, sum-product, max-product, Gaussian belief propagation, Kalman filtering, junction trees, loopy BP, variational inference, MCMC, particle filters, and graphical-model learning. | Provides vocabulary for exact/approximate inference and graphical-model learning claims. | High |
| FONTES-CAUSAL-05 | `https://miguelhernan.org/whatifbook` | Causal Inference: What If is described as useful for multiple disciplines and divided into causal inference without models, with models, and from complex longitudinal data, with book, code, and data available online. | Use as a causal-inference textbook identity while keeping book/code/data bodies boundary-checked. | High |
| FONTES-CAUSAL-06 | `https://www.pywhy.org/dowhy/main/` | DoWhy documents causal effect estimation, structure learning, diagnosis, root-cause analysis, interventions, counterfactuals, explicit identifying assumptions, and a separation between identification and estimation. | Adds implementation-framework identity for causal analysis provenance and assumption tracking. | High |
| FONTES-CAUSAL-07 | `https://pgmpy.org/` | pgmpy is described as a Python toolkit for causal and probabilistic reasoning with graphical models, including parameter estimation, probabilistic inference, causal identification/inference, datasets/models, simulations, and composable APIs. | Adds graphical-model implementation identity for future probabilistic/casual proof artifacts. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate probability model, evidence, posterior, graph structure, estimator, causal estimand, identification assumptions, intervention, counterfactual, and dataset provenance. | Do not label correlations, model predictions, or posterior associations as causal effects without identification and assumption evidence. |
| Prototype behind boundary | PROOF / FLETCH | Prototype probabilistic and causal provenance records for model structure, conditional assumptions, observed data, estimands, identification steps, estimators, sensitivity checks, and result intervals. | Do not cache or redistribute OCW PDFs, textbook bodies, notebooks, examples, datasets, generated docs, or package artifacts in FONTES. |
| Defer | FONTES | Promote book chapters, code/data materials, generated docs, notebooks, datasets, examples, and package docs only after rights review. | Do not merge uncertainty quantification, graphical inference, and causal intervention claims into one undifferentiated proof status. |
