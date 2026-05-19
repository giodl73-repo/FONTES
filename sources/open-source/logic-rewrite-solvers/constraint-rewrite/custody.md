# Logic Programming, SMT/SAT, and Equality-Saturation Custody

## Research question

What source identities should FONTES add for logic programming, Datalog,
SMT/SAT solving, and equality saturation so SLICE, LATTICE, CROP, and future
compiler/planner work can reason about fixed-point rules, constraints, rewrites,
solver boundaries, and optimization search without overcommitting to a solver
implementation?

## Current custody decision

This tranche maps official project, standard, benchmark, and paper identities
for Souffle Datalog, SMT-LIB, Z3, SAT Competition, egg, egglog, and equality
saturation. All rows are `metadata_only` until documentation, benchmark, paper,
generated-doc, demo, repository, package, and example-code reuse terms are
reviewed. This tranche is therefore a source-identity map, not an extraction
grant.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-SOLVER-01 | `https://souffle-lang.github.io/` | Souffle positions itself as logic-defined static analysis for large-scale analysis problems, including points-to analysis, taint analysis, and security checks, with translation to parallel C++. | Datalog is a strong candidate model for declarative CROP/SLICE facts, recursive closure, and static-analysis style rules. | High |
| FONTES-SOLVER-02 | `https://souffle-lang.github.io/tutorial` | The Souffle tutorial describes Datalog as a declarative logic-based query language for recursive queries, a decidable fragment in pure form, and a tool for program analysis, security, graph databases, and declarative networking. | Use Datalog semantics for recursive closure and dependency rules, while keeping non-termination risks explicit when extensions add expressiveness. | High |
| FONTES-SOLVER-03 | `https://smt-lib.org/` | SMT-LIB is an initiative for SMT research/development, standard theory descriptions, common solver input/output languages, theory/logics specifications, benchmarks, and solver tools. | SMT-LIB is the right source identity if SLICE/LATTICE later exports constraints to external solvers. | High |
| FONTES-SOLVER-04 | `https://github.com/Z3Prover/z3` and `https://microsoft.github.io/z3guide/` | Z3 is a Microsoft Research theorem prover with a public repository, releases, language bindings, and user guide. | Z3 is a concrete solver precedent, but should remain behind an adapter boundary rather than becoming a core dependency. | High |
| FONTES-SOLVER-05 | `https://satcompetition.github.io/2024/` | SAT Competition 2024 is a competitive event for Boolean SAT solvers with solver tracks, benchmarks, results, metadata, sources, and proceedings. | SAT should be treated as a benchmarked solver ecosystem with strict input/output and benchmark provenance boundaries. | Medium |
| FONTES-SOLVER-06 | `https://egraphs-good.github.io/` | The egraphs-good project presents egg and egglog as e-graph systems for program optimizers and synthesizers; egglog is described as Datalog-based with incremental execution and composable analyses. | Equality saturation and Datalog/e-graph hybrids are strong precedents for rewrite-heavy SLICE/LATTICE planning. | High |
| FONTES-SOLVER-07 | `https://docs.rs/egg/latest/egg/` | egg is a Rust e-graph library optimized for equality saturation and documents rewrite rules, runners, e-graphs, extractors, and cost-based extraction. | If SLICE needs rewrite saturation, egg-like architecture gives a Rust-native precedent with explicit extraction cost models. | High |
| FONTES-SOLVER-08 | `https://egraphs-good.github.io/egglog-tutorial/01-basics.html` | The egglog tutorial shows equality saturation over a DSL using rewrite rules, checks, extraction, and e-graphs. | egglog is useful precedent for making rewrite systems inspectable and queryable, especially where Datalog-style relations matter. | Medium |
| FONTES-SOLVER-09 | `https://www.cs.cornell.edu/~ross/publications/eqsat/` | The equality-saturation paper page describes replacing destructive optimization ordering with equality analyses over a common IR, saturation, and profitability-based extraction. | This directly supports a non-destructive rewrite/search model for LATTICE/Slice optimizers. | High |
| FONTES-SOLVER-10 | `https://arxiv.org/abs/2004.03082` | The egg paper abstract describes e-graphs as congruence relations, equality saturation for compiler optimizations and synthesizers, rebuilding, and e-class analyses. | E-graphs can be deferred as a v2 optimizer while v1 keeps simpler rule and cost diagnostics. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | SLICE / CROP | Use Datalog-style terminology for recursive facts, dependency closure, and fixed-point rule evaluation; keep every rule explainable and terminating by construction. | Do not introduce an external Datalog engine as a hard v1 dependency. |
| Prototype behind boundary | SLICE / LATTICE | Prototype SMT/SAT export and equality-saturation rewrite search behind adapters with explicit input, output, timeout, and proof/explanation contracts. | Do not make solver success required for core correctness. |
| Defer | FONTES | Promote specific docs, papers, examples, solver sources, and benchmarks only after license and extraction review. | Do not cache standards PDFs, generated docs, benchmarks, solver sources, demos, paper PDFs, or example code in this tranche. |
