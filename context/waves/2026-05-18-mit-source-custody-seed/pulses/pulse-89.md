# Pulse 89 - Algorithms and data structures source map

## Objective

Add source custody for algorithms, data structures, algorithm design, graph/path
methods, complexity interfaces, and algorithm engineering after the
security/cryptography tranche.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\algorithms-data-structures\algorithm-design`. |
| Research findings | Done | Documented MIT 6.006, MIT 6.046J, MIT 6.851, MIT 6.854J, Jeff Erickson Algorithms, Open Data Structures, and Princeton Algorithms identities. |
| Surface table | Done | Added `sources\tables\algorithms-data-structures-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-algorithms-data-structures-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing pages are mapped as derived text. Open textbook and
booksite identities are metadata-only pending license and extraction review.
OCW PDFs, videos, problem sets, exams, recitation notes, textbook PDFs, chapter
PDFs, code, exercises, solutions, assignments, course archives, translations,
images, diagrams, generated book assets, repositories, and linked assets remain
boundary-checked.

## Decision support

Keep v1 CROP/LATTICE/FLETCH algorithms inspectable: sorting, hashing,
trees/heaps where needed, BFS/DFS, shortest paths, connected components, greedy
selection, and explicit complexity notes. Advanced optimization, flow/cut,
matching, streaming, external-memory, and specialized data structures should be
prototyped behind explainable diagnostics and budget gates.
