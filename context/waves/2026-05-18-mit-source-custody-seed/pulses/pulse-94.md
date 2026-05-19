# Pulse 94 - Reinforcement learning and sequential decision source map

## Objective

Add source custody for reinforcement learning, dynamic programming, stochastic
control, sequential decision-making, planning, agent-environment APIs, and
evaluation provenance after the computer-vision/robotics tranche.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\reinforcement-learning-decisions\sequential-decision-making`. |
| Research findings | Done | Documented MIT 6.231, Sutton/Barto, Stanford CS234, OpenAI Spinning Up, and Gymnasium source identities. |
| Surface table | Done | Added `sources\tables\reinforcement-learning-decisions-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-reinforcement-learning-decisions-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing pages are mapped as derived text. Sutton/Barto, Stanford
CS234, OpenAI Spinning Up, and Gymnasium are metadata-only pending exact reuse
review. OCW PDFs, solution PDFs, problem-set PDFs, errata PDFs, textbook bodies,
book PDFs, code, slides, teaching aids, notation files, literature PDFs, course
assignments, exams, project materials, generated docs, tutorials, notebooks,
environments, images, GIFs, package artifacts, datasets, trained policies,
videos, diagrams, repositories, and linked assets remain boundary-checked.

## Decision support

Keep MDP/model definitions, state/action/reward semantics, policy/version,
rollout traces, environment IDs, simulator versions, seeds, and evaluation
protocols distinct. Agent performance is not source evidence without
PROOF-backed environment, policy, reward, and evaluation provenance.
