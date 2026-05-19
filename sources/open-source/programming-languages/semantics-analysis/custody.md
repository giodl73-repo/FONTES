# Programming Language Semantics, Type Systems, and Program Analysis Custody

## Research question

What source custody should FONTES add after computability and compiler theory so
SLICE/LATTICE can define expression semantics, type/binding rules, static
analysis, abstract interpretation, and verification boundaries without treating
compiler phases as ad hoc implementation details?

## Current custody decision

This tranche anchors programming-language semantics and program analysis in MIT
OCW 6.821 and MIT OCW 6.820. MIT OCW course, syllabus, assignment, and lecture
index pages are mapped as `derived_text_allowed`. Software Foundations, PLFA,
and Cousot abstract-interpretation pages are mapped conservatively as
`metadata_only` pending license/reuse review. PDFs, Scheme files, Coq/Rocq/Agda
proof scripts, exercises, code, images, repositories, papers, talks, videos,
downloads, textbook bodies, and linked external resources remain
boundary-checked.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-PL-01 | `https://ocw.mit.edu/courses/6-821-programming-languages-fall-2002/` | MIT 6.821 covers functional, imperative, and logic programming languages, meta-circular interpreters, operational and denotational semantics, type systems, polymorphism, inference, abstract types, object-oriented programming, modules, and multiprocessing. | SLICE/LATTICE now have a direct PL semantics and type-system source anchor beyond compiler construction. | High |
| FONTES-PL-02 | `https://ocw.mit.edu/courses/6-821-programming-languages-fall-2002/pages/assignments/` | The assignment index exposes Scheme+ programming-language exercises and supporting files while keeping PDFs and source files as child resources. | FONTES can cite exercise/source identities without caching course PDFs or code artifacts. | High |
| FONTES-PL-03 | `https://ocw.mit.edu/courses/6-820-fundamentals-of-program-analysis-fall-2015/` | MIT 6.820 introduces major program-analysis forms: type checking, abstract interpretation, and model checking, with theory, techniques, and applications. | SLICE can separate static checking, abstract interpretation, and model checking as distinct validation modes. | High |
| FONTES-PL-04 | `https://ocw.mit.edu/courses/6-820-fundamentals-of-program-analysis-fall-2015/pages/syllabus/` | The syllabus names units for operational semantics, type theory, types for imperative programs, axiomatic semantics, abstract interpretation, and model checking. | LATTICE can use these as top-level design headings for expression semantics and analysis contracts. | High |
| FONTES-PL-05 | `https://ocw.mit.edu/courses/6-820-fundamentals-of-program-analysis-fall-2015/pages/lecture-notes/` | The lecture-note index names big-step/small-step semantics, Coq examples, simple types, Hindley-Milner inference, algebraic data types, subtyping, monads, imperative typing, verification conditions, separation logic, dataflow analysis, lattices, fixed points, abstract interpretation, Galois connections, model checking, temporal logic, and abstraction refinement. | This closes the gap between lattice/order theory and practical static-analysis lattices/fixpoints. | High |
| FONTES-PL-06 | `https://softwarefoundations.cis.upenn.edu/` | Software Foundations presents machine-checked foundations for reliable software, including programming-language foundations, operational semantics, Hoare logic, static type systems, verified algorithms, Verifiable C, separation logic, and security foundations. | Strong metadata-only candidate for future proof-backed semantics examples. | Medium |
| FONTES-PL-07 | `https://plfa.github.io/` | PLFA covers programming-language theory in Agda, including lambda calculus, progress and preservation, inference, big-step semantics, denotational semantics, soundness, adequacy, and contextual equivalence. | Useful source identity for type-safety and semantics vocabulary; keep body/code extraction behind license review. | Medium |
| FONTES-PL-08 | `https://www.di.ens.fr/~cousot/AI/` | The abstract-interpretation reference page indexes syntax, semantics, proofs, static analysis, data-flow/control-flow analysis, types, model checking, predicate abstraction, refinement, and transformation. | Use as a canonical source identity for abstract interpretation and analysis-as-abstraction, but not as a derived-text source yet. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | SLICE / LATTICE | Define explicit semantics and analysis layers: surface syntax, binding/type rules, operational meaning, IR/logical plan, static diagnostics, and fixpoint/abstract-interpretation boundaries. | Do not let ad hoc runtime behavior define language semantics. |
| Prototype behind boundary | SLICE / CROP | Prototype lightweight typechecking, dataflow/fixpoint diagnostics, and abstract-domain explanations for expression/planning cuts. | Do not promise full program verification or complete model checking in v1. |
| Defer | FONTES | Promote Software Foundations, PLFA, and Cousot bodies only after exact license and extraction rules are captured. | Do not cache PDFs, proof scripts, source files, textbook bodies, or linked papers in this tranche. |
