# Pulse 104 - Public health and biomedical evidence source map

## Objective

Add source custody for public health, epidemiology, biostatistics, environmental
health, molecular medicine, biomedical literature search, biomedical databases,
and clinical-trial registry/API provenance after the transportation/logistics
tranche.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\public-health-biomedical-evidence\epidemiology-clinical-evidence`. |
| Research findings | Done | Documented MIT 20.102, MIT 20.104J, MIT HST.161, MIT 7.01SC, CDC Principles of Epidemiology, PubMed, NCBI Entrez, and ClinicalTrials.gov Data API identities. |
| Surface table | Done | Added `sources\tables\public-health-biomedical-evidence-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-public-health-biomedical-evidence-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing/syllabus pages are mapped as derived text. CDC, PubMed,
NCBI Entrez, and ClinicalTrials.gov are metadata-only identities pending exact
reuse review. Manuscript bodies, textbooks, PDFs, lectures, videos, problem
sets, solutions, software, mortality data, patient/clinic materials,
clinical-trial records, API outputs, abstracts, full text, database records,
figures, tables, examples, and exports remain boundary-checked.

## Decision support

Keep disease definition, population, exposure, outcome, study design, data
source, statistical model, causal assumption, intervention, protocol, result,
adverse event, and literature citation claim distinct. Search results, database
hits, and trial registry rows are not medical truth without PROOF-backed
protocol, population, outcome, evidence-quality, and rights boundaries.
