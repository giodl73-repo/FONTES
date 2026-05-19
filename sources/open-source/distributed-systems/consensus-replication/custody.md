# Distributed Systems, Replication, Consensus, and Local-First Custody

## Research question

What source custody should FONTES add for distributed systems, replication,
consensus, consistency, fault tolerance, and local-first storage before LATTICE,
FLETCH, CROP, and related repos move beyond single-node/local-index assumptions?

## Current custody decision

This tranche anchors distributed-systems foundations in MIT OCW 6.824 and MIT
OCW 6.033 week 8. OCW course/listing pages are mapped as
`derived_text_allowed`. Current MIT 6.5840/6.824 course pages, Raft, Paxos, GFS,
Automerge, and Ink & Switch local-first sources are mapped conservatively as
`metadata_only` until exact documentation, paper, lab, code, visualization,
image, example, and linked-asset reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-DIST-01 | `https://ocw.mit.edu/courses/6-824-distributed-computer-systems-engineering-spring-2006/` | MIT 6.824 covers distributed-system abstractions and implementation techniques, including server design, network programming, naming, storage systems, security, and fault tolerance. | LATTICE/FLETCH can cite a course-level distributed-systems foundation before adding multi-node behavior. | High |
| FONTES-DIST-02 | `https://ocw.mit.edu/courses/6-824-distributed-computer-systems-engineering-spring-2006/pages/lecture-notes/` | The lecture-note index covers I/O concurrency, event-driven programming, crash recovery, logging, cache consistency, memory consistency, vector timestamps/version vectors, two-phase commit, Paxos, viewstamped replication, Harp, Frangipani, scalable lookup, wide-area storage, content distribution, and distributed computing. | This provides direct source coverage for replication, consistency, distributed transactions, clocks/versioning, and consensus vocabulary. | High |
| FONTES-DIST-03 | `https://ocw.mit.edu/courses/6-033-computer-system-engineering-spring-2018/pages/week-8/` | MIT 6.033 week 8 covers fault tolerance via replication, distributed storage, Google File System reading, and transaction atomicity/isolation. | Good systems-engineering bridge between single-node transaction custody and replicated storage/fault tolerance. | High |
| FONTES-DIST-04 | `https://pdos.csail.mit.edu/6.824/` | Current MIT 6.5840/6.824 describes distributed systems engineering with fault tolerance, replication, consistency, case studies, and labs. | Use as current course/source identity, but keep labs/readings/code/exams metadata-only. | Medium |
| FONTES-DIST-05 | `https://raft.github.io/` | Raft is described as a consensus algorithm intended to be easier to understand, equivalent to Paxos in fault tolerance/performance, decomposed into subproblems, and grounded in replicated state machines with majority availability. | Raft is the practical consensus identity to cite if LATTICE/FLETCH later need replicated logs or state machines. | High |
| FONTES-DIST-06 | `https://lamport.azurewebsites.net/pubs/paxos-simple.pdf` | Paxos Made Simple is a canonical Paxos paper identity. | Paxos remains source lineage for consensus theory, but PDF extraction is deferred. | Medium |
| FONTES-DIST-07 | `https://research.google/pubs/the-google-file-system/` | GFS describes a scalable distributed file system for large distributed data-intensive applications with fault tolerance on commodity hardware and high aggregate client performance. | Useful source identity for distributed storage tradeoffs, chunked data, replication, and workload-driven design. | High |
| FONTES-DIST-08 | `https://automerge.org/docs/` | Automerge documentation is a local-first/CRDT project identity. | Use as a local-first synchronization candidate if repos need offline-first replicated documents. | Medium |
| FONTES-DIST-09 | `https://www.inkandswitch.com/essay/local-first` | The local-first essay frames collaboration, user data ownership, offline/local access, and cloud-service tradeoffs. | Local-first design should be considered separately from consensus-based server replication. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | LATTICE / FLETCH | Keep v1 local-first and single-writer unless a feature explicitly requires replication; document failure, consistency, transaction, and ownership boundaries. | Do not add consensus as a default dependency for local pack/index generation. |
| Prototype behind boundary | LATTICE / FLETCH / CROP | Prototype replicated logs, Raft-style consensus, vector/version metadata, or CRDT/local-first sync only behind explicit adapters with partition, conflict, timeout, and recovery diagnostics. | Do not mix CRDT/local-first semantics with linearizable consensus without naming the consistency contract. |
| Defer | FONTES | Promote course PDFs, labs, papers, code, visualizations, and local-first docs only after license/reuse review. | Do not cache PDFs, C files, labs, paper bodies, visualizations, examples, code, images, diagrams, or linked assets in this tranche. |
