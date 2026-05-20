# MIT Nuclear Science and Engineering Core Custody

## Research question

What MIT Nuclear Science and Engineering source custody should FONTES add so
PROOF, FLETCH, CROP, and PEBBLE can distinguish ionizing radiation, applied
nuclear physics, nuclear systems, design, numerical methods, and reactor claims
from physics, engineering, and numerical-methods rows?

## Current custody decision

This tranche anchors MIT Nuclear Science and Engineering custody in MIT OCW
22.01, 22.02, 22.06, 22.033, 22.15, and 22.312. MIT OCW course/listing and
syllabus pages are mapped as `derived_text_allowed`. Lecture notes, videos,
problem sets, solutions, exams, quizzes, textbooks, readings, labs, radiation
data, reactor models, numerical code, MATLAB/Octave files, simulations, design
project reports, presentations, safety analyses, diagrams, images, PDFs, student
work, and linked third-party assets remain boundary-checked unless separately
reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-NUC-01 | `https://ocw.mit.edu/courses/22-01-introduction-to-nuclear-engineering-and-ionizing-radiation-spring-2024/` | MIT 22.01 covers nuclear models, radioactivity, reactions, radiation interaction, detection, shielding, biological/chemical effects, notes, videos, problem sets, and exams. | Adds ionizing-radiation custody. | High |
| FONTES-NUC-02 | `https://ocw.mit.edu/courses/22-02-introduction-to-applied-nuclear-physics-spring-2012/` | MIT 22.02 covers nuclear structure, decay, quantum theory, radiation interactions, fission/fusion, lecture notes, assignments, and exams. | Adds applied nuclear physics custody. | High |
| FONTES-NUC-03 | `https://ocw.mit.edu/courses/22-06-engineering-of-nuclear-systems-fall-2010/` | MIT 22.06 covers nuclear systems, reactors, radiation transport, shielding, safety, fuel cycle, notes, assignments, and exams. | Adds nuclear systems custody. | High |
| FONTES-NUC-04 | `https://ocw.mit.edu/courses/22-033-nuclear-systems-design-project-fall-2011/` | MIT 22.033 covers nuclear systems design, team projects, safety/economic tradeoffs, reports, presentations, and design artifacts. | Adds nuclear design custody. | High |
| FONTES-NUC-05 | `https://ocw.mit.edu/courses/22-15-essential-numerical-methods-fall-2014/` | MIT 22.15 covers numerical methods, ODE/PDEs, finite differences, matrix iterations, stability, Monte Carlo, particle-in-cell methods, assignments, and code/software boundaries. | Adds nuclear numerical-methods custody. | High |
| FONTES-NUC-06 | `https://ocw.mit.edu/courses/22-312-engineering-of-nuclear-reactors-fall-2015/` | MIT 22.312 covers reactor engineering, neutron diffusion, reactor kinetics, thermal hydraulics, safety, fuel, notes, assignments, and exams. | Adds reactor-engineering custody. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Keep claims distinct as ionizing radiation, applied nuclear physics, systems, design, numerical methods, and reactors. | Do not duplicate physics, broad engineering, or numerical-computation rows. |
| Prototype behind boundary | PROOF / FLETCH | Prototype evidence nodes for radiation, reactor, systems-design, and nuclear numerical-method claims. | Do not cache or redistribute notes, videos, code, models, designs, reports, exams, images, PDFs, or student work. |
| Defer | FONTES | Promote specific reactor models, radiation datasets, software, videos, or design reports only after source-scope and rights review. | Do not infer reuse rights from OCW listing/syllabus text alone. |
