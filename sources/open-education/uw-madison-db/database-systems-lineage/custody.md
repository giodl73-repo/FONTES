# UW-Madison Database Systems Lineage Custody

## Source

University of Wisconsin-Madison Database Systems Group:
`https://database.cs.wisc.edu/`

David J. DeWitt publication archive:
`https://pages.cs.wisc.edu/~dewitt/includes/publications.html`

## Current custody decision

This source map captures UW-Madison database systems history as a metadata and
source-identity anchor for data warehousing and OLAP substrate work. It covers
the Wisconsin Database Systems Group, Gamma database machine, shared-nothing
parallel query processing, horizontal partitioning, parallel joins, dataflow
query execution, Wisconsin Benchmark methodology, Paradise, benchmarking, query
optimization, and object/store lineage.

The mapped publication pages and PDF URLs are stable source identities, but the
paper bodies are treated conservatively as `metadata_only` because many are
conference, journal, or publisher-copyrighted papers. The Wisconsin Benchmark
generator archive is `local_cache_allowed` only after downstream license/code
safety review. Cube and dimension modeling vocabulary should be added through a
separate dimensional-modeling/OLAP source family.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| UW Database Group homepage | `metadata_only` | Institutional source identity and group scope. |
| DeWitt publication archive | `metadata_only` | Bibliographic/project index for UW database systems lineage. |
| Gamma papers | `metadata_only` | Publication identities for shared-nothing, dataflow, parallel relational DB work. |
| Parallel join papers | `metadata_only` | Publication identities for warehouse-query execution lineage. |
| Wisconsin Benchmark paper | `metadata_only` | Benchmark methodology identity; paper body is not extracted here. |
| Wisconsin Benchmark generator | `local_cache_allowed` | Code/data archive requires review before indexing or bundling. |
| OLAP/warehouse topic boundary | `metadata_only` | Systems substrate only; cube/dimension modeling needs a separate source. |

## Portfolio relevance

This source gives FONTES a database-systems lineage anchor behind modern data
warehouses: partitioning, shared-nothing execution, joins, aggregation, query
parallelism, benchmarking, and performance evaluation. It complements future
cube/dimension sources by explaining the database engine substrate that makes
large analytical workloads feasible.
