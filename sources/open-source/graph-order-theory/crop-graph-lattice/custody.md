# CROP Graph Cut and Lattice Theory Custody

## Research question

Does FONTES have enough graph theory and lattice/order theory source custody to
support CROP as the LATTICE graph-cut subsystem, including v1 simple graph
methods and v2 deferred advanced graph/optimization methods?

## Current custody decision

This tranche anchors CROP v1 in MIT OCW 6.042J graph/relation/discrete-math
materials and records additional open/reference identities for graph theory and
lattice/order theory. MIT OCW pages are mapped as `derived_text_allowed`.
Discrete Mathematics: An Open Introduction, nLab, MathWorld, and Wikipedia
lattice pages are mapped conservatively as `metadata_only` until per-source
reuse terms and extraction rules are reviewed. PDFs, generated textbook assets,
interactive exercises, diagrams, media, source files, examples, and third-party
assets remain boundary-checked.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-CROP-01 | `https://ocw.mit.edu/courses/6-042j-mathematics-for-computer-science-spring-2015/` | MIT 6.042J covers definitions, proofs, sets, functions, relations, graphs, state machines, modular arithmetic, counting, and probability for CS. | CROP v1 has a credible discrete-math anchor for typed graphs, directed bonds, relations, and basic graph algorithms. | High |
| FONTES-CROP-02 | `https://ocw.mit.edu/courses/6-042j-mathematics-for-computer-science-spring-2015/pages/readings/` | The readings surface exposes chapter-level materials for structures units, including graph/relation topics and downloadable chapter PDFs. | CROP can cite chapter-level source identities while keeping PDFs as child-resource boundaries. | High |
| FONTES-CROP-03 | `https://discrete.openmathbooks.org/dmoi4.html` and `https://github.com/oscarlevin/discrete-book` | DMOI is an open-source/open textbook source identity for graph theory, proof, relations, counting, and discrete structures. | Use DMOI as a backup open-textbook candidate after license and generated-asset extraction review. | Medium |
| FONTES-CROP-04 | `https://ncatlab.org/nlab/show/lattice` | nLab’s lattice entry situates lattices in order theory and links partially ordered sets, semilattices, meet, join, complete lattices, and distributive lattices. | FONTES now explicitly records the algebraic/order-theory sense of lattice beyond Calcite’s cube/materialization usage. | Medium |
| FONTES-CROP-05 | `https://mathworld.wolfram.com/Lattice.html` | MathWorld describes lattices as algebraic structures with binary operations and as equivalent to partial-order formulations using infimum/supremum. | CROP/LATTICE meet/join language should be treated as order-theory semantics, not merely grid/cube terminology. | Medium |
| FONTES-CROP-06 | `https://en.wikipedia.org/wiki/Lattice_(order)` | The general lattice-order reference distinguishes relation properties and explicitly links joins and meets. | Useful metadata-only fallback for terminology reconciliation, not a primary source for derived text. | Low |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | CROP | Use simple, inspectable v1 graph methods: typed property graphs, directed bonds, weights/measures, k-hop neighborhoods, paths, components, dependency closure, greedy coverage/budget selection, and explicit inclusion/exclusion reasons. | Do not implement advanced graph optimizers before v1 pack quality shows a need. |
| Prototype behind boundary | CROP / LATTICE | Keep PageRank, Steiner, min-cut/max-flow, community detection, bipartite projection, and submodular coverage as v2 candidates with diagnostics. | Do not make v1 correctness depend on advanced optimization libraries. |
| Defer | FONTES | Add deeper order/lattice textbook custody if CROP needs formal meet/join proofs or closure-operator semantics. | Do not cache OCW PDFs, textbook source, MathWorld/nLab bodies, diagrams, or generated book assets in this tranche. |
