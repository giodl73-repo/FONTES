# Knowledge Representation, Search, Planning, and Agent Reasoning Custody

## Research question

What source custody should FONTES add for knowledge representation, AI search,
logic agents, automated planning, PDDL, and agent reasoning before PROOF, FLETCH,
CROP, and PEBBLE make stronger symbolic-agent or planning claims?

## Current custody decision

This tranche anchors symbolic AI and planning in MIT OCW 6.034 and 6.825. MIT
OCW course/listing pages are mapped as `derived_text_allowed`. AIMA,
AIMA-Python, Planning.Wiki, and Fast Downward are mapped as `metadata_only`
until exact textbook, exercise, code, generated-doc, wiki, planner, benchmark,
example, and release reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-PLAN-01 | `https://ocw.mit.edu/courses/6-034-artificial-intelligence-fall-2010/` | MIT 6.034 introduces knowledge representation, problem solving, learning methods, intelligent-system engineering, and the roles of problem solving, vision, and language in computational accounts of human intelligence. | Provides the primary introductory AI and agent-reasoning candidate surface. | High |
| FONTES-PLAN-02 | `https://ocw.mit.edu/courses/6-034-artificial-intelligence-fall-2010/pages/syllabus/` | The syllabus describes lectures, recitations, tutorials, open-book/open-note exams, collaboration rules, grading, and problem-set expectations. | Course policy and structure are citeable, while problem sets, solutions, videos, and code remain boundary-checked. | High |
| FONTES-PLAN-03 | `https://ocw.mit.edu/courses/6-825-techniques-in-artificial-intelligence-sma-5504-fall-2002/` | MIT 6.825 covers first-order logic representation/inference, deterministic and decision-theoretic planning, supervised learning, and Bayesian network inference/learning. | Adds graduate-level planning, logic, and probabilistic-reasoning custody. | High |
| FONTES-PLAN-04 | `https://ocw.mit.edu/courses/6-825-techniques-in-artificial-intelligence-sma-5504-fall-2002/pages/lecture-notes/` | The lecture index includes problem solving/search, logic, satisfiability, first-order logic, resolution theorem proving, planning, partial-order planning, GraphPlan, probability, Bayesian networks, decision-making under uncertainty, MDPs, and reinforcement learning. | Supports source-backed vocabulary for symbolic planning, logic inference, and decision-theoretic planning claims. | High |
| FONTES-PLAN-05 | `https://aima.cs.berkeley.edu/` | AIMA exposes a table of contents spanning intelligent agents, search, adversarial search, constraint satisfaction, logic agents, first-order logic, inference, knowledge representation, automated planning, uncertainty, decisions, multiagent decision-making, learning, NLP, vision, robotics, ethics, and safety. | Use as broad AI textbook identity, not as permission to cache book PDFs, exercises, figures, code, or pseudocode. | High |
| FONTES-PLAN-06 | `https://github.com/aimacode/aima-python` | AIMA Python describes Python implementations of AIMA pseudocode with notebooks, generated `.py` files, tests, examples, and fourth-edition updates. | Adds implementation identity for algorithm provenance while keeping code and notebooks boundary-checked. | High |
| FONTES-PLAN-07 | `https://planning.wiki/` | Planning.Wiki presents AI planning and PDDL resources, including guide/reference/example sections, feature support indicators, planner references, and International Planning Competition context. | Adds PDDL/planning-reference identity while preserving wiki/example/planner content behind reuse review. | Medium |
| FONTES-PLAN-08 | `https://www.fast-downward.org/` | Fast Downward resolves to a planning-project site and is used here as an automated-planner identity. | Adds planner implementation identity pending documentation, source, binary, example, benchmark, and release review. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate agent, state space, search strategy, heuristic, knowledge base, inference rule, planning domain, planner, benchmark, and plan trace claims; cite source identities for each. | Do not treat a generated plan, code sample, or solver output as source evidence without domain/problem/planner/version provenance. |
| Prototype behind boundary | PROOF / FLETCH | Prototype symbolic-agent and planning provenance records for domains, problem instances, planner versions, search traces, heuristic settings, and plan validation results. | Do not cache or redistribute textbook bodies, exercises, code notebooks, planner binaries, PDDL examples, course solutions, or generated docs in FONTES. |
| Defer | FONTES | Promote book chapters, code, wiki examples, planner documentation, benchmarks, and course artifacts only after rights review. | Do not collapse symbolic planning, probabilistic decision-making, and learned policy behavior into one evidence category. |
