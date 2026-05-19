# Statistics, Algebra/Groups, and Topology Custody

## Research question

What source custody should FONTES add for statistics/probability, abstract
algebra and groups, and topology so LATTICE, SLICE, CROP, PEBBLE, and future
knowledge-system packs have foundational mathematical anchors beyond linear
algebra, graph theory, lattice/order theory, compilers, and database systems?

## Current custody decision

This tranche anchors statistics, probability, algebra/groups, and topology in MIT
OCW courses 18.650, 18.440, 18.701, 18.703, and 18.901. MIT OCW course and
syllabus pages are mapped as `derived_text_allowed`. OpenIntro Statistics,
Grinstead/Snell probability, Judson abstract algebra, and Topology: A Categorical
Approach are mapped conservatively as `metadata_only` until exact license,
attribution, generated-book, PDF, data, code, diagram, and exercise extraction
rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-MATH-01 | `https://ocw.mit.edu/courses/18-650-statistics-for-applications-fall-2016/` | MIT 18.650 provides theoretical foundations for statistical methods useful in applications. | FONTES now has a statistics anchor for uncertainty, inference, model quality, and empirical validation. | High |
| FONTES-MATH-02 | `https://ocw.mit.edu/courses/18-650-statistics-for-applications-fall-2016/pages/syllabus/` | The syllabus covers statistics, parametric inference, maximum likelihood, method of moments, hypothesis testing, goodness of fit, regression, Bayesian statistics, PCA, and generalized linear models. | LATTICE/CROP scoring and diagnostics can cite statistical concepts without relying on ad hoc terminology. | High |
| FONTES-MATH-03 | `https://ocw.mit.edu/courses/18-440-probability-and-random-variables-spring-2014/` | MIT 18.440 covers probability, random variables, distributions, conditional probability, Bayes theorem, joint distributions, Chebyshev inequality, law of large numbers, and central limit theorem. | Probability and uncertainty sources now sit beside statistics and optimization sources. | High |
| FONTES-MATH-04 | `https://ocw.mit.edu/courses/18-701-algebra-i-fall-2010/` | MIT 18.701 covers groups, vector spaces, linear transformations, symmetry groups, bilinear forms, and linear groups. | Group/symmetry vocabulary can support transformations, invariants, canonicalization, and equivalence reasoning. | High |
| FONTES-MATH-05 | `https://ocw.mit.edu/courses/18-703-modern-algebra-spring-2013/` | MIT 18.703 covers finite group theory, ring theory, ideals, unique factorization in polynomial and Euclidean rings, field theory, and finite fields. | Algebraic structures now have a stronger source anchor than compiler/rewrite sources alone. | High |
| FONTES-MATH-06 | `https://ocw.mit.edu/courses/18-901-introduction-to-topology-fall-2004/` | MIT 18.901 covers topological spaces, continuous functions, connectedness, compactness, separation axioms, function spaces, metrization, embedding theorems, and the fundamental group. | Topology vocabulary can support spaces, neighborhoods, continuity, connectedness, compactness, and shape/coverage reasoning. | High |
| FONTES-MATH-07 | `https://www.openintro.org/book/os/` | OpenIntro Statistics is a public statistics textbook/resource identity used for courses and self-study. | Useful source-identity backup for statistics, but not a derived-text source until assets and terms are reviewed. | Medium |
| FONTES-MATH-08 | `https://math.dartmouth.edu/~prob/prob/prob.pdf` | MIT 18.440 references Grinstead and Snell's Introduction to Probability as a free probability book. | Useful probability backup identity; PDF extraction is deferred. | Medium |
| FONTES-MATH-09 | `https://abstract.ups.edu/` | Judson's Abstract Algebra: Theory and Applications is a public abstract algebra source identity. | Useful algebra/group-theory backup identity; generated book/source assets are deferred. | Medium |
| FONTES-MATH-10 | `https://topology.terilla.org/` | Topology: A Categorical Approach is a public topology source identity. | Useful topology backup identity; book body and diagrams are deferred. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | LATTICE / CROP / PEBBLE | Use statistics/probability for scoring, uncertainty, sampling, hypothesis tests, and evidence-quality diagnostics; use groups/algebra for transformations, invariants, and equivalence; use topology for neighborhoods, continuity, connectedness, compactness, and space/coverage language. | Do not over-formalize v1 designs around advanced algebraic topology or measure theory. |
| Prototype behind boundary | SLICE / LATTICE | Add optional math-backed diagnostics for symmetry/equivalence, probabilistic confidence, and neighborhood/coverage continuity where current simple methods need explanation. | Do not require theorem-proving or numerical-statistics libraries for core pack generation. |
| Defer | FONTES | Promote open textbook bodies only after license, attribution, PDF/generated-asset, data, code, and diagram extraction rules are captured. | Do not cache OCW PDFs, textbook PDFs, generated books, data files, exercises, diagrams, videos, or code in this tranche. |
