# Reinforcement Learning, Dynamic Programming, and Sequential Decision Custody

## Research question

What source custody should FONTES add for reinforcement learning, dynamic
programming, stochastic control, sequential decision-making, planning, and
agent-environment evaluation before PROOF, FLETCH, CROP, and PEBBLE make
stronger adaptive-agent or policy-learning claims?

## Current custody decision

This tranche anchors sequential decision-making in MIT OCW 6.231. MIT OCW
course/listing pages are mapped as `derived_text_allowed`. Sutton/Barto,
Stanford CS234, OpenAI Spinning Up, and Gymnasium are mapped as `metadata_only`
until exact textbook, course, generated-doc, code, environment, benchmark,
dataset, image, and package reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-RL-01 | `https://ocw.mit.edu/courses/6-231-dynamic-programming-and-stochastic-control-fall-2015/` | MIT 6.231 covers models and solution techniques for sequential decision-making under uncertainty, stochastic control, finite/infinite horizon optimal control, finite/infinite state spaces, perfect/imperfect observation, and approximation methods for large state spaces. | Provides the primary candidate surface for dynamic programming and stochastic-control custody. | High |
| FONTES-RL-02 | `https://ocw.mit.edu/courses/6-231-dynamic-programming-and-stochastic-control-fall-2015/pages/lecture-notes/` | The lecture index includes dynamic programming, examples, feedback, principle of optimality, state augmentation, shortest paths, stochastic DP, linear-quadratic problems, imperfect state information, sufficient statistics, suboptimal control, rollout, model predictive control, stochastic shortest paths, Bellman's equation, and value iteration. | Supports source-backed vocabulary for Bellman recursion, rollout, approximation, and policy evaluation claims. | High |
| FONTES-RL-03 | `https://ocw.mit.edu/courses/6-231-dynamic-programming-and-stochastic-control-fall-2015/pages/assignments/` | The assignment page names Bertsekas Dynamic Programming and Optimal Control volumes and lists problem sets and solutions. | Assignment indexes are citeable, but textbook bodies, solution PDFs, errata PDFs, and homework artifacts must stay boundary-checked. | High |
| FONTES-RL-04 | `http://incompleteideas.net/book/the-book-2nd.html` | Sutton/Barto identifies the MIT Press second edition of Reinforcement Learning: An Introduction and links book PDFs, code, solutions, slides, teaching aids, literature links, and notation assets. | Use as the broad reinforcement-learning textbook identity, not as permission to cache book/code bodies. | High |
| FONTES-RL-05 | `https://web.stanford.edu/class/cs234/` | Stanford CS234 exposes course policy around homework, coding, exams/quizzes, projects, and generative-AI collaboration constraints. | Use as a course identity for modern RL instruction while keeping assignments, code, exams, and project content boundary-checked. | Medium |
| FONTES-RL-06 | `https://spinningup.openai.com/en/latest/` | Spinning Up is Sphinx/Read the Docs generated educational documentation from OpenAI. | Treat deep-RL educational docs and code as source identity pending generated-doc and repository reuse review. | Medium |
| FONTES-RL-07 | `https://gymnasium.farama.org/` | Gymnasium describes itself as a maintained fork of OpenAI Gym and an API standard for RL with reference environments, reset/step semantics, rewards, and termination/truncation. | Adds agent-environment API and evaluation-environment identity while keeping environments, code, images, and packages boundary-checked. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate MDP/model, state/action/reward, policy, value function, planning, learning algorithm, environment, benchmark, simulator, and evaluation claims; cite source identities for each. | Do not treat agent performance as source evidence without environment version, policy/model, reward definition, seed, and evaluation protocol provenance. |
| Prototype behind boundary | PROOF / FLETCH | Prototype RL/agent provenance records for policy runs, rollouts, reward traces, environment IDs, simulator versions, and evaluation summaries behind explicit reproducibility diagnostics. | Do not cache or redistribute textbook bodies, solution PDFs, course assignments, environment packages, videos, datasets, trained policies, or generated docs in FONTES. |
| Defer | FONTES | Promote book chapters, generated docs, framework code, benchmark environments, notebooks, examples, and course assets only after rights review. | Do not equate API identity, demo success, or course listing with a validated policy-learning result. |
