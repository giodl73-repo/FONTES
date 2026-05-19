# Pulse 86 - Distributed systems and consensus source map

## Objective

Add source custody for distributed systems, replication, consensus, consistency,
fault tolerance, distributed storage, and local-first synchronization before
LATTICE/FLETCH/CROP move beyond single-node assumptions.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\distributed-systems\consensus-replication`. |
| Research findings | Done | Documented MIT 6.824, MIT 6.033 week 8, current MIT 6.5840/6.824, Raft, Paxos, GFS, Automerge, and Ink & Switch local-first identities. |
| Surface table | Done | Added `sources\tables\distributed-consensus-systems-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-distributed-consensus-systems-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing pages are mapped as derived text. Current course pages,
Raft/Paxos/GFS, Automerge, and local-first sources are metadata-only pending
license and extraction review. OCW PDFs, C files, labs, assignments, readings,
paper bodies, visualizations, examples, code, packages, images, diagrams, and
linked assets remain boundary-checked.

## Decision support

Keep v1 local-first and single-writer unless replication is explicitly needed.
If distributed behavior is prototyped, separate linearizable consensus,
transaction/isolation guarantees, vector/version metadata, and CRDT/local-first
sync semantics with explicit diagnostics.
