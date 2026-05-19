# Computability and Complexity Theory Custody

## Research question

What public source custody should FONTES add for computability, automata, and
complexity theory so SLICE, LATTICE, and CROP can reason about decidability,
reducibility, complexity classes, parser/formal-language boundaries, and
algorithmic limits?

## Current custody decision

This tranche anchors theory-of-computation custody in MIT OCW 18.404J and
MIT OCW 6.045J. OCW course pages and listing pages are mapped as
`derived_text_allowed`. PDFs, PPTs, lecture videos, problem sets, solutions,
editable files, media, third-party notes, and generated downloads remain
child-resource boundaries until separately reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-TOC-01 | `https://ocw.mit.edu/courses/18-404j-theory-of-computation-fall-2020/` | MIT 18.404J emphasizes computability and computational complexity, including regular/context-free languages, decidability, undecidability, reducibility, recursive functions, time/space measures, completeness, hierarchy theorems, oracles, probabilistic computation, and interactive proofs. | SLICE/LATTICE can cite a high-quality source for deciding which language fragments are decidable, optimizable, or intentionally bounded. | High |
| FONTES-TOC-02 | `https://ocw.mit.edu/courses/18-404j-theory-of-computation-fall-2020/pages/lecture-notes/` | The lecture-note index exposes finite automata, regular expressions, CFGs, PDAs, Turing machines, Church-Turing thesis, decidability, undecidability, reducibility, recursion theorem, time complexity, P, NP, SAT, and polynomial-time reducibility. | FONTES can map formal-language and complexity topics without caching lecture-note PDFs/PPTs. | High |
| FONTES-TOC-03 | `https://ocw.mit.edu/courses/6-045j-automata-computability-and-complexity-spring-2011/` | MIT 6.045J covers central theoretical CS ideas from finite automata through circuits, Turing machines, computability, efficient algorithms, reducibility, P vs NP, NP-completeness, randomness, cryptography, learning theory, and quantum computing. | This gives a second MIT anchor for automata and complexity vocabulary, useful for parser and query-language boundaries. | High |
| FONTES-TOC-04 | `https://ocw.mit.edu/courses/6-045j-automata-computability-and-complexity-spring-2011/pages/lecture-notes/` | The lecture-note list names DFAs, NFAs, regular expressions, pumping lemma, Turing machines, decidability, PCP, mapping reducibility, Rice's theorem, complexity theory, NP-completeness, probabilistic Turing machines, and complexity classes. | CROP/SLICE can treat formal recognizers, reductions, and complexity diagnostics as source-backed concepts. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | SLICE / LATTICE | Use computability and complexity vocabulary to define expression-language boundaries, decidable fragments, compilation limits, and cost-model diagnostics. | Do not build a theorem prover or arbitrary program verifier into v1. |
| Prototype behind boundary | CROP / SLICE | Add optional diagnostics for NP-hard selection/planning problems and explain when greedy approximations are used. | Do not present heuristics as optimal unless a proof-backed bound is explicitly in scope. |
| Defer | FONTES | Add deeper textbook custody only if design docs need formal proofs beyond source identity and topic maps. | Do not cache OCW PDFs, slides, videos, problem sets, or solutions in this tranche. |
