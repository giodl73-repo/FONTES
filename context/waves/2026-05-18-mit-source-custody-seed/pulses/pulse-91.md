# Pulse 91 - Information retrieval and search source map

## Objective

Add source custody for information retrieval, search indexing, ranking,
query expansion, retrieval evaluation, and production search-engine
implementation after the software-engineering tranche.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\information-retrieval\search-indexing`. |
| Research findings | Done | Documented Introduction to Information Retrieval, Apache Lucene, Lucene API docs, Elasticsearch, and NIST TREC identities. |
| Surface table | Done | Added `sources\tables\information-retrieval-search-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-information-retrieval-search-surfaces.json`. |
| PROOF ledger | Done | Added a source-identity work-level row and updated counts. |

## Boundary notes

All sources in this tranche are metadata-only pending license and extraction
review. Book PDFs/HTML chapters, figures, slides, assignments, errata,
generated JavaDoc, implementation docs, source code, examples, API pages,
screenshots, benchmark outputs, datasets, proceedings, topics, qrels, runs,
images, diagrams, and linked assets remain boundary-checked.

## Decision support

Keep indexing, ranking, query parsing, candidate retrieval, evaluation, and
production deployment claims separate. Simple registry metadata search is not a
full relevance-ranking system unless corpus, query, judgment, metric, and
failure diagnostics are recorded.
