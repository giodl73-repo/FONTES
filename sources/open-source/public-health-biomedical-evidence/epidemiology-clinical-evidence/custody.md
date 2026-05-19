# Public Health, Epidemiology, Biostatistics, Biomedical Evidence, and Clinical-Trial Custody

## Research question

What source custody should FONTES add for public health, epidemiology,
biostatistics, biomedical literature, molecular medicine, and clinical-trial
evidence before PROOF, FLETCH, CROP, and PEBBLE make stronger claims about
disease risk, exposures, interventions, populations, causal mechanisms, trial
results, or medical evidence?

## Current custody decision

This tranche anchors public-health and biomedical-evidence custody in MIT OCW
20.102, 20.104J, HST.161, and 7.01SC, with CDC, PubMed, NCBI Entrez, and
ClinicalTrials.gov mapped as `metadata_only` source identities. MIT OCW
course/listing/syllabus pages are mapped as `derived_text_allowed`. Manuscript
bodies, textbooks, PDFs, lectures, videos, problem sets, solutions, software,
mortality data, patient/clinic materials, clinical-trial records, API outputs,
abstracts, full text, database records, figures, tables, examples, and exports
remain boundary-checked.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-HEALTH-01 | `https://ocw.mit.edu/courses/20-102-macroepidemiology-be-102-spring-2005/pages/syllabus/` | MIT 20.102 Macroepidemiology centers analytical study of common diseases and contested genetic/environmental risk assumptions using recommended manuscripts, compiled mortality data, Cancer Fit software, analytical term papers, presentations, problem sets, and paper installments. | Provides epidemiology and disease-risk analysis custody while keeping manuscripts, data, and software boundary-checked. | High |
| FONTES-HEALTH-02 | `https://ocw.mit.edu/courses/20-104j-chemicals-in-the-environment-toxicology-and-public-health-be-104j-spring-2005/pages/syllabus/` | MIT 20.104J uses epidemiology, biostatistics, environmental exposure, toxicological mechanisms, uncertainty, and quantitative risk assessment to evaluate environmental agents with possible adverse health effects. | Adds toxicology, environmental-health, and risk-assessment custody. | High |
| FONTES-HEALTH-03 | `https://ocw.mit.edu/courses/hst-161-molecular-biology-and-genetics-in-modern-medicine-fall-2007/pages/syllabus/` | MIT HST.161 connects molecular biology/genetics to medicine, primary research literature, medical knowledge, patient perspectives, clinical projects, clinic sessions, and clinician/scientist interactions. | Adds molecular-medicine and clinical-context custody while keeping patient/clinic and primary-literature materials boundary-checked. | High |
| FONTES-HEALTH-04 | `https://ocw.mit.edu/courses/7-01sc-fundamentals-of-biology-fall-2011/pages/` | MIT 7.01SC identifies fundamentals-of-biology resources including lecture notes, lecture videos, tutorial videos, problem sets, solutions, exams, and exam solutions. | Adds biology foundation custody for biomedical claims while keeping detailed course assets boundary-checked. | High |
| FONTES-HEALTH-05 | `https://stacks.cdc.gov/view/cdc/13178` | CDC Stacks identifies Principles of Epidemiology in Public Health Practice as an applied epidemiology and biostatistics self-study guide. | Adds public-health practice source identity without caching the PDF or exercise bodies. | Medium |
| FONTES-HEALTH-06 | `https://pubmed.ncbi.nlm.nih.gov/help/` | PubMed User Guide documents biomedical literature searching, citation retrieval, filters, clinical queries, systematic reviews, medical genetics information, full-text linkout behavior, alerts, export, and download guidance. | Adds literature-discovery identity, not evidence acceptance for individual articles. | High |
| FONTES-HEALTH-07 | `https://www.ncbi.nlm.nih.gov/books/NBK3837/` | NCBI Entrez integrates literature and molecular databases including DNA/protein sequence, structure, gene, genome, variation, expression, BioProject, BioSample, Bookshelf, ClinVar, filters, search history, and inter-database links. | Adds biomedical database-retrieval identity for future molecular/clinical evidence provenance. | High |
| FONTES-HEALTH-08 | `https://clinicaltrials.gov/data-api/about` | ClinicalTrials.gov Data API is the source identity for clinical-trial protocol/results study records and structured trial data access. | Adds trial-registry/API identity while keeping API outputs and trial records boundary-checked. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate disease definition, population, exposure, outcome, study design, data source, statistical model, causal assumption, intervention, protocol, result, adverse event, and literature citation claim. | Do not treat a course identity, search result, database hit, or trial registry row as medical truth without source-backed protocol, population, outcome, and evidence-quality boundaries. |
| Prototype behind boundary | PROOF / FLETCH | Prototype biomedical-evidence provenance for study identifiers, cohort/sample frame, inclusion/exclusion criteria, exposure measurement, outcome definition, estimator, confidence interval, protocol version, registry status, and literature linkage. | Do not cache or redistribute PDFs, manuscripts, abstracts, full text, patient materials, mortality data, trial records, API outputs, software, notebooks, figures, or tables. |
| Defer | FONTES | Promote individual studies, clinical records, biomedical datasets, literature abstracts, data exports, and API payloads only after exact rights and evidence-quality review. | Do not collapse biology foundations, public-health practice, epidemiologic evidence, molecular mechanism, and clinical-trial results into one proof category. |
