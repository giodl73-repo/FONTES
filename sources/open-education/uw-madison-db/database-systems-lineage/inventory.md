# UW-Madison Database Systems Lineage Source Inventory

## Mapped surfaces

| Surface | URL | Policy |
|---|---|---|
| UW Database Systems Group homepage | `https://database.cs.wisc.edu/` | `metadata_only` |
| David J. DeWitt publication archive | `https://pages.cs.wisc.edu/~dewitt/includes/publications.html` | `metadata_only` |
| GAMMA - A High Performance Dataflow Database Machine | `https://pages.cs.wisc.edu/~dewitt/includes/paralleldb/vldb86.pdf` | `metadata_only` |
| The GAMMA Database Machine Project | `https://pages.cs.wisc.edu/~dewitt/includes/paralleldb/ieee90.pdf` | `metadata_only` |
| A Performance Analysis of the Gamma Database Machine | `https://pages.cs.wisc.edu/~dewitt/includes/paralleldb/sigmod88.pdf` | `metadata_only` |
| A Performance Evaluation of Four Parallel Join Algorithms | `https://pages.cs.wisc.edu/~dewitt/includes/paralleldb/sigmod89.pdf` | `metadata_only` |
| Benchmarking Database Systems - A Systematic Approach | `https://pages.cs.wisc.edu/~dewitt/includes/benchmarking/vldb83.pdf` | `metadata_only` |
| Wisconsin Benchmark query/generator archive | `https://pages.cs.wisc.edu/~dewitt/includes/benchmarking/wiscbench.tar` | `local_cache_allowed` |
| Warehouse/OLAP substrate boundary | `https://pages.cs.wisc.edu/~dewitt/includes/publications.html` | `metadata_only` |

## Source families from publication archive

| Family | Relevance |
|---|---|
| DIRECT | Early operational parallel database system lineage. |
| Gamma | Shared-nothing/dataflow relational database machine lineage. |
| Paradise | Scalable geospatial/scientific database lineage. |
| Benchmarking | Wisconsin Benchmark and related DB performance methodology. |
| Query optimization | EXODUS optimizer and object-oriented optimizer lineage. |
| Object-oriented DBMS | EXODUS, SHORE, QuickStore, OO7/Bucky benchmarks. |

## First extraction targets

| Target | Why |
|---|---|
| Project and publication identities | Establish provenance for UW database systems history without extracting copyrighted paper bodies. |
| Gamma source identities | Anchor shared-nothing, parallel join, dataflow, partitioning, scaleup/speedup terms. |
| Wisconsin Benchmark identities | Anchor benchmarking and reproducible performance-evaluation lineage. |
| Warehouse/OLAP boundary row | Explicitly separates DB execution substrate from cube/dimension modeling sources. |
