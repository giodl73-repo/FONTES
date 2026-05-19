# Algorithms, Data Structures, and Algorithm Design Custody

## Research question

What source custody should FONTES add for algorithms, data structures,
algorithmic design patterns, graph/path methods, complexity interfaces, and
algorithm engineering before downstream repos harden CROP selection, FLETCH
indexes, LATTICE graph operations, and systems planning?

## Current custody decision

This tranche anchors algorithms and data structures in MIT OCW 6.006, 6.046J,
6.851, and 6.854J. OCW course/listing pages are mapped as
`derived_text_allowed`. Open textbook and booksite identities are mapped as
`metadata_only` until exact book, chapter, exercise, solution, code, video,
translation, repository, and course-archive reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-ALG-01 | `https://ocw.mit.edu/courses/6-006-introduction-to-algorithms-spring-2020/` | MIT 6.006 introduces mathematical modeling of computational problems, common algorithms, algorithmic paradigms, data structures, performance measures, analysis techniques, and the relationship between algorithms and programming. | This is the base source anchor for practical algorithm/data-structure claims. | High |
| FONTES-ALG-02 | `https://ocw.mit.edu/courses/6-006-introduction-to-algorithms-spring-2020/pages/lecture-notes/` | The 6.006 index covers data structures, sorting, hashing, trees, AVL trees, heaps, BFS, DFS, shortest paths, Bellman-Ford, Dijkstra, all-shortest paths, dynamic programming, subset sums, pseudopolynomial algorithms, and complexity. | Directly supports CROP v1 graph/search/selection methods and FLETCH indexing vocabulary. | High |
| FONTES-ALG-03 | `https://ocw.mit.edu/courses/6-046j-design-and-analysis-of-algorithms-spring-2015/` | MIT 6.046J emphasizes design and analysis of efficient algorithms: divide and conquer, randomization, dynamic programming, greedy algorithms, incremental improvement, complexity, and cryptography. | Adds algorithm-design patterns beyond introductory data structures. | High |
| FONTES-ALG-04 | `https://ocw.mit.edu/courses/6-046j-design-and-analysis-of-algorithms-spring-2015/pages/lecture-notes/` | The 6.046J lecture index includes interval scheduling, convex hulls, FFT, van Emde Boas trees, amortization, randomized algorithms, hashing, range trees, dynamic programming, shortest paths, MST, max-flow/min-cut, matching, linear programming, NP-completeness, approximation, fixed-parameter algorithms, distributed algorithms, and cryptography. | Use this to distinguish simple v1 CROP heuristics from advanced optimization tools that should remain deferred unless needed. | High |
| FONTES-ALG-05 | `https://ocw.mit.edu/courses/6-851-advanced-data-structures-spring-2012/` | MIT 6.851 describes data structures as central building blocks for efficient algorithms and covers major results and current research directions. | Provides an advanced-data-structure identity without prematurely adopting specialized structures. | High |
| FONTES-ALG-06 | `https://ocw.mit.edu/courses/6-854j-advanced-algorithms-fall-2005/` | MIT 6.854J covers graduate algorithms, including amortization, randomization, fingerprinting, word-level parallelism, bit scaling, dynamic programming, network flow, linear programming, FPT algorithms, approximation, strings, network optimization, parallel algorithms, computational geometry, online algorithms, external memory, cache, streaming, and data structures. | Supports a boundary for v2/v3 algorithmic upgrades in indexing, graph cuts, streaming, and budgeted selection. | High |
| FONTES-ALG-07 | `https://jeffe.cs.illinois.edu/teaching/algorithms/` | Jeff Erickson's Algorithms page identifies a free textbook, theory-course context, prerequisites, permissions, CC BY 4.0 textbook license, and CC BY-NC-SA 4.0 lecture-note license. | Useful open textbook identity; actual extraction should be handled by a dedicated rights pass because book PDFs, notes, coursework, and translations have distinct terms. | High |
| FONTES-ALG-08 | `https://opendatastructures.org/` | Open Data Structures covers sequences, queues, priority queues, dictionaries, graphs, stacks, deques, lists, hash tables, search trees, integer searching, heaps, graph representations, and B-trees, with analyzed Java/C++ implementations and free text/source. | Strong candidate for future implementation-level data-structure reference after explicit license review. | High |
| FONTES-ALG-09 | `https://algs4.cs.princeton.edu/home/` | The Algorithms, 4th Edition booksite covers fundamentals, sorting, searching, graphs, strings, and context, with excerpts, lectures, Java code, exercises, and assignments. | Treat as a source identity only until textbook, code, exercise, and video rights are separated. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | CROP / LATTICE / FLETCH | Keep v1 algorithms inspectable: sorting, hashing, trees/heaps where needed, BFS/DFS, shortest paths, connected components, greedy selection, dynamic-programming only when justified, and explicit complexity notes. | Do not replace simple CROP cuts with advanced optimization by default. |
| Prototype behind boundary | CROP / LATTICE | Prototype max-flow/min-cut, matching, linear programming, approximation, streaming, external-memory, cache-aware, or advanced data-structure approaches behind metrics, budgets, and explainability diagnostics. | Do not hide algorithm choice behind opaque scores. |
| Defer | FONTES | Promote textbook chapters, lecture PDFs, code, exercises, solutions, videos, translations, and repository content only after reuse review. | Do not cache PDFs, videos, code, assignments, exercises, solutions, course archives, translations, images, diagrams, or linked assets in this tranche. |
