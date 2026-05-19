# Information Retrieval, Search Indexing, Ranking, and Evaluation Custody

## Research question

What source custody should FONTES add for information retrieval, search indexing,
ranking, query expansion, retrieval evaluation, and production search-engine
implementation before FLETCH, CROP, PEBBLE, and PROOF depend more heavily on
searchable registries and source-corpus discovery?

## Current custody decision

This tranche anchors IR theory, indexing, ranking, evaluation, and search-engine
implementation in the Stanford/Cambridge Introduction to Information Retrieval
book identity, Apache Lucene, Elasticsearch, and NIST TREC. All rows are mapped
as `metadata_only` because book chapters, generated docs, implementation docs,
source code, benchmarks, datasets, proceedings, qrels, topics, examples, and
linked assets need exact reuse review before extraction or caching.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-IR-01 | `https://nlp.stanford.edu/IR-book/` | Introduction to Information Retrieval covers Boolean retrieval, vocabulary/postings, tolerant retrieval, index construction/compression, scoring, vector-space ranking, search-system scoring, evaluation, relevance feedback, query expansion, probabilistic retrieval, language models, classification, clustering, and latent semantic indexing. | This is the primary theory and vocabulary identity for FLETCH registry search and CROP retrieval/ranking claims. | High |
| FONTES-IR-02 | `https://lucene.apache.org/core/` | Apache Lucene is a high-performance search library supporting structured/full-text search, faceting, nearest-neighbor vector search, spelling/suggestions, indexing, ranked retrieval, fielded search, multiple-index search, highlighting, joins, grouping, pluggable ranking models, vector-space model, BM25, and codecs. | Lucene should be the canonical implementation identity when repos discuss inverted indexes, ranking models, and search-library capabilities. | High |
| FONTES-IR-03 | `https://lucene.apache.org/core/9_12_0/core/overview-summary.html` | The Lucene core API page is a generated API documentation surface. | Treat API docs as source identity only until generated-doc/source-code reuse policy is reviewed. | Medium |
| FONTES-IR-04 | `https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html` | Elasticsearch is described as a distributed search and analytics engine, scalable data store, and vector database built on Lucene, with near-real-time indexing/search/analysis, query languages, aggregations, APIs, clients, security, monitoring, and production guidance. | Elasticsearch is the production/distributed search identity, but should not be conflated with Lucene's library-level contracts. | High |
| FONTES-IR-05 | `https://trec.nist.gov/` | TREC is an evaluation workshop series for measuring search algorithm effectiveness, with IR/NLP researchers, datasets, measurement processes, tools, tracks, and participation rules. | Retrieval quality claims should cite evaluation methodology and avoid product-testing claims unless the benchmark context supports them. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FLETCH / CROP / PROOF / PEBBLE | Separate indexing, ranking, query parsing, candidate retrieval, evaluation, and production deployment claims; keep registry search inspectable and cite ranking/evaluation assumptions. | Do not call simple metadata search a full IR relevance system. |
| Prototype behind boundary | FLETCH / CROP | Prototype BM25, vector nearest-neighbor search, query expansion, clustering, faceting, and evaluation reports behind explicit corpus, query, relevance, and metric boundaries. | Do not optimize ranking without recorded judgments, diagnostics, and failure examples. |
| Defer | FONTES | Promote IR book chapters, Lucene/Elasticsearch docs, source code, examples, benchmark pages, TREC data/proceedings/topics/qrels/runs only after rights review. | Do not cache book PDFs/HTML, generated JavaDoc, implementation docs, source code, datasets, proceedings, benchmark outputs, images, or linked assets in this tranche. |
