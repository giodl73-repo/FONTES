# Optimization, Operations Research, Mathematical Programming, and Solver Custody

## Research question

What source custody should FONTES add for optimization models, operations
research, mathematical programming, convex optimization, and solver/documentation
identities before PROOF, FLETCH, CROP, and PEBBLE make stronger claims about
objectives, constraints, duals, optimality, routing, scheduling, or solver
outputs?

## Current custody decision

This tranche anchors broad optimization and mathematical programming in MIT OCW
15.093J, 6.251J, and 15.053. It intentionally complements existing Stanford
EE364A/EE364B convex-optimization custody rather than replacing it. Boyd and
Vandenberghe's book site, CVXPY, SciPy optimize, and Google OR-Tools are mapped
as `metadata_only` until exact book, generated-doc, source-code, example,
package, solver-binary, and linked-asset reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-OPT-01 | `https://ocw.mit.edu/courses/15-093j-optimization-methods-fall-2009/pages/syllabus/` | MIT 15.093J takes a unified view of optimization across linear, robust, network-flow, discrete, dynamic, and nonlinear optimization, including simplex, duality, sensitivity, large-scale optimization, branch-and-bound, cutting planes, Lagrangean methods, dynamic programming, optimality conditions, gradient/Newton/conjugate-gradient methods, affine scaling, interior-point methods, and semidefinite optimization. | Provides the broad course-level candidate surface for optimization-method provenance. | High |
| FONTES-OPT-02 | `https://ocw.mit.edu/courses/6-251j-introduction-to-mathematical-programming-fall-2009/pages/syllabus/` | MIT 6.251J introduces linear optimization and extensions with formulations, geometry, algorithms, real-world software, robust optimization, network flows, ellipsoid methods, exponentially many constraints, interior-point methods, semidefinite optimization, and discrete optimization. | Adds mathematical-programming structure and algorithm custody. | High |
| FONTES-OPT-03 | `https://ocw.mit.edu/courses/15-053-optimization-methods-in-management-science-spring-2013/pages/syllabus/` | MIT 15.053 covers linear programming theory/applications, integer programming theory, network flows and heuristics, decision trees, behavioral economics, Excel Solver use, and the free-online Applied Mathematical Programming reference. | Adds operations-research and management-science optimization custody. | High |
| FONTES-OPT-04 | `https://web.stanford.edu/~boyd/cvxbook/` | The Boyd/Vandenberghe site identifies Convex Optimization, links to the book PDF, slides, additional exercises, code/example locations, course sites, and catalog records, while stating copyright is held by Cambridge University Press. | Use as metadata-only book-site identity; book/slide/exercise/code/example bodies need separate rights review. | High |
| FONTES-OPT-05 | `https://www.cvxpy.org/` | CVXPY is a Python-embedded modeling language for convex optimization; docs identify parametrized, geometric, mixed-integer convex, quasiconvex, and nonlinear programming support plus examples, solver benchmarks, and solver dependencies. | Adds modeling-language identity for solver and formulation provenance. | High |
| FONTES-OPT-06 | `https://docs.scipy.org/doc/scipy/reference/optimize.html` | SciPy optimize provides functions for constrained/unconstrained minimization/maximization, nonlinear and global optimization, linear programming, least squares, root finding, curve fitting, scalar minimization, BFGS/Newton-CG/L-BFGS-B/COBYLA/SLSQP/trust-region methods, and Hessian update strategies. | Adds numerical-optimization library identity for implementation provenance. | High |
| FONTES-OPT-07 | `https://developers.google.com/optimization/` | Google OR-Tools is the official documentation hub for operations-research tooling, including constraint programming, integer/linear programming, routing, scheduling, graph/network-flow, and multi-language examples. | Adds operations-research solver identity for routing, scheduling, and combinatorial-optimization provenance. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate objective, variables, constraints, data source, algorithm family, solver implementation, solver settings, solution status, dual/certificate, and sensitivity claims. | Do not treat a solver result as proof unless the model, data, solver, settings, and status are also custody-backed. |
| Prototype behind boundary | PROOF / FLETCH | Prototype optimization-provenance records for model schema, input table hashes, constraint families, solver/version, termination status, infeasibility/unboundedness certificates, optimality gaps, and reproducibility settings. | Do not cache or redistribute OCW assignments/exams, book PDFs, slides, exercises, generated docs, code examples, package artifacts, solver binaries, or proprietary tool manuals. |
| Defer | FONTES | Promote book sections, solver manuals, API pages, tutorials, examples, notebooks, benchmark datasets, and code only after explicit reuse review. | Do not collapse optimization truth, feasible plans, and operational recommendations into one undifferentiated proof category. |
