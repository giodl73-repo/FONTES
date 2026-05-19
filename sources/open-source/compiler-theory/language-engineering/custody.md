# Compiler Theory and Language Engineering Custody

## Research question

What public source custody should FONTES add for compiler theory, language
engineering, IRs, optimization passes, and interpreter construction so SLICE and
LATTICE can evolve from expression syntax into a source-backed compiler/planner
architecture?

## Current custody decision

This tranche anchors compiler theory in MIT OCW 6.035 and records conservative
source identities for LLVM, Crafting Interpreters, and Stanford CS143. MIT OCW
course/listing pages are mapped as `derived_text_allowed`. LLVM, Crafting
Interpreters, and Stanford CS143 are mapped as `metadata_only` pending
documentation/book/course-material reuse review. PDFs, code bundles, skeletons,
test inputs, solutions, videos, linked papers, generated docs, examples,
templates, and course-platform content remain boundary-checked.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-COMPILER-01 | `https://ocw.mit.edu/courses/6-035-computer-language-engineering-spring-2010/` | MIT 6.035 covers implementation of higher-level programming languages, compiler concepts, theory/practice interaction, tools, and a multiperson compiler design/implementation project. | SLICE can use 6.035 as the primary source anchor for treating expression handling as language engineering rather than ad hoc parsing. | High |
| FONTES-COMPILER-02 | `https://ocw.mit.edu/courses/6-035-computer-language-engineering-spring-2010/pages/lecture-notes/` | The lecture-note index names regular expressions, CFGs, shift-reduce parsing, top-down parsing, intermediate formats, semantic analysis, code generation, program analysis, dataflow analysis, optimization, register allocation, parallelization, and memory optimization. | LATTICE/Slice pass design can cite parser, IR, analysis, and optimization phases explicitly. | High |
| FONTES-COMPILER-03 | `https://ocw.mit.edu/courses/6-035-computer-language-engineering-spring-2010/pages/projects/` | The project sequence stages scanner/parser, semantic checker, code generation, dataflow optimizations, and optimizer work. | A future SLICE compiler can be organized in visible phases with separate validation boundaries. | High |
| FONTES-COMPILER-04 | `https://llvm.org/docs/` | LLVM docs identify a compiler infrastructure spanning design overview, tutorials, user guides, reference docs, and analysis/transformation use cases. | LLVM is a strong precedent for IR-centered compiler infrastructure and pass pipelines, but should remain source-identity only until documentation reuse is reviewed. | Medium |
| FONTES-COMPILER-05 | `https://craftinginterpreters.com/` | Crafting Interpreters describes building a scripting language with parsing, semantics, bytecode representation, garbage collection, lexical scope, closures, classes, and inheritance. | Useful practical implementation precedent for small languages and interpreters; keep as metadata-only until book/code rights are reviewed. | Medium |
| FONTES-COMPILER-06 | `https://web.stanford.edu/class/cs143/` | Stanford CS143 exposes syllabus, course information, assignments, handouts, and exams for compilers. | Good secondary source identity for compiler-course coverage and assignment sequencing, not a primary derived-text source in this tranche. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | SLICE / LATTICE | Model expression/query handling as a compiler pipeline: parse, bind/typecheck, lower to IR/logical plan, analyze, optimize, and emit executable/query plans. | Do not collapse syntax, semantic model, and execution plan into one untyped representation. |
| Prototype behind boundary | SLICE / FLETCH / CROP | Add pass-level diagnostics and source-backed plan explanations inspired by compiler project phases and LLVM-style analysis/transform separation. | Do not adopt LLVM or any heavy compiler dependency before a narrow compatibility boundary exists. |
| Defer | FONTES | Promote LLVM/Crafting/Stanford bodies only after license/reuse review and exact extraction rules. | Do not cache PDFs, code bundles, skeletons, generated docs, solutions, videos, or linked papers in this tranche. |
