# Pulse 87 - Operating systems and networking source map

## Objective

Add source custody for operating-system kernels, runtime coordination, file
systems, recovery, computer networks, routing, transport protocols, application
protocol semantics, and secure transport after the distributed-systems tranche.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\systems-foundations\operating-systems-networking`. |
| Research findings | Done | Documented MIT 6.828, MIT 6.829, current MIT 6.S081/6.828 lineage, OSTEP, and RFC identities for IPv6, TCP, QUIC, HTTP, and TLS. |
| Surface table | Done | Added `sources\tables\operating-systems-networking-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-operating-systems-networking-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing pages are mapped as derived text. Current MIT course
pages, OSTEP, and RFCs are metadata-only pending license and extraction review.
OCW PDFs, xv6 code/book, labs, homework, projects, readings, third-party papers,
RFC bodies, RFC code components, OSTEP chapter PDFs, book assets, examples,
images, diagrams, and linked assets remain boundary-checked.

## Decision support

Keep local runtime/file-system assumptions, network fetch/cache behavior,
transport protocols, HTTP semantics, and TLS security as separate contracts.
Adapters may combine them, but CROP/PEBBLE/PROOF claims should cite the exact
OS, network, transport, application, or security layer being used.
