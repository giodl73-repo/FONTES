# MIT EECS Core Custody

## Research question

What MIT EECS source custody should FONTES add so PROOF, FLETCH, CROP, and
PEBBLE can distinguish circuits, signals, digital systems, computer systems,
operating systems, and security claims from existing AI/ML, software, algorithms,
and broad engineering source maps?

## Current custody decision

This tranche anchors MIT EECS custody in MIT OCW 6.002, 6.003, 6.004, 6.033,
6.828, and 6.858. MIT OCW course/listing and syllabus pages are mapped as
`derived_text_allowed`. Lecture notes, videos, podcasts, open/commercial
textbook bodies, research papers, problem sets, solutions, exams, quizzes, labs,
lab handins, code reviews, student code, programming assignments, projects,
design reports, oral presentations, peer-review artifacts, software, simulations,
Athena/private environments, x86/C/Python/Javascript artifacts, diagrams, images,
PDFs, and linked third-party assets remain boundary-checked unless separately
reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-EECS-01 | `https://ocw.mit.edu/courses/6-002-circuits-and-electronics-spring-2007/` | MIT 6.002 anchors EE/EECS core circuits through lumped circuit abstraction, resistive networks, MOS transistors, digital abstraction, amplifiers, storage elements, design/lab exercises, videos, problem sets, exams, and textbook. | Adds circuits/electronics custody. | High |
| FONTES-EECS-02 | `https://ocw.mit.edu/courses/6-002-circuits-and-electronics-spring-2007/pages/syllabus/` | The 6.002 syllabus records learning objectives for circuit models, Boolean algebra, MOSFETs, small-signal analysis, lab measurement with oscilloscopes, multimeters, and signal generators. | Adds lab/tool and circuit-design boundaries. | High |
| FONTES-EECS-03 | `https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/` | MIT 6.003 covers signal/system representations, Fourier/Laplace/Z transforms, LTI systems, convolution, frequency response, feedback/control, communications, signal processing, videos, open textbooks, problem sets, solutions, and exams. | Adds signals/systems custody. | High |
| FONTES-EECS-04 | `https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/pages/syllabus/` | The 6.003 syllabus records the Oppenheim/Willsky textbook, exams, homework, collaboration policy, code/graphics originality, and plagiarism reporting. | Adds signal-processing textbook, assignment, and academic-integrity boundaries. | High |
| FONTES-EECS-05 | `https://ocw.mit.edu/courses/6-004-computation-structures-spring-2017/` | MIT 6.004 covers digital-system architecture, multilevel implementation, gates, instructions, procedures, processes, concurrency, performance, pipelines, instruction-set design, videos, podcasts, and programming assignments. | Adds computation-structures custody. | High |
| FONTES-EECS-06 | `https://ocw.mit.edu/courses/6-004-computation-structures-spring-2017/pages/syllabus/` | The 6.004 syllabus records MOS transistors, gates, sequential circuits, FSMs, computers, RISC processor design, labs, simulations, and student design work. | Adds digital-design, lab, simulation, and student-design boundaries. | High |
| FONTES-EECS-07 | `https://ocw.mit.edu/courses/6-033-computer-system-engineering-spring-2018/` | MIT 6.033 covers computer software/hardware systems, modularity, operating systems, performance, networks, naming, security/privacy, fault tolerance, atomicity, coordination, recovery, social impact, projects, and written assignments. | Adds computer-system engineering custody. | High |
| FONTES-EECS-08 | `https://ocw.mit.edu/courses/6-033-computer-system-engineering-spring-2018/pages/syllabus/` | The 6.033 syllabus records distributed-system design, design critique, virtualization, Internet scale, unreliable networks, security pitfalls, CI-M communication, design reports, oral presentations, peer review, and textbook. | Adds distributed systems, communication, report, presentation, peer-review, and textbook boundaries. | High |
| FONTES-EECS-09 | `https://ocw.mit.edu/courses/6-828-operating-system-engineering-fall-2012/` | MIT 6.828 covers OS design/implementation, UNIX/research papers, virtual memory, threads, kernels, interrupts, system calls, IPC, coordination, C/x86 assembly labs, programming assignments, projects, and exams. | Adds operating-systems custody. | High |
| FONTES-EECS-10 | `https://ocw.mit.edu/courses/6-828-operating-system-engineering-fall-2012/pages/syllabus/` | The 6.828 syllabus records OS labs, make handin, late hours, double-blind code reviews, lab grading, student code, and software-environment requirements. | Adds OS lab, code-review, student-code, and environment boundaries. | High |
| FONTES-EECS-11 | `https://ocw.mit.edu/courses/6-858-computer-systems-security-fall-2014/` | MIT 6.858 covers secure computer systems, threat models, attacks, OS security, capabilities, information flow control, language security, network protocols, hardware security, web application security, papers, videos, projects, and exams. | Adds systems-security custody. | High |
| FONTES-EECS-12 | `https://ocw.mit.edu/courses/6-858-computer-systems-security-fall-2014/pages/syllabus/` | The 6.858 syllabus records Athena environment limits, reading questions, quizzes, labs, secure web server/application work, x86/C/Python/Javascript, final projects, presentations, and grading. | Adds security lab, programming-language, presentation, final-project, and Athena/private-environment boundaries. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Keep EECS claims distinct as circuits, signals, digital systems, computer systems, operating systems, and systems security. | Do not duplicate AI/ML, games/UI, algorithms, or broad software-engineering rows. |
| Prototype behind boundary | PROOF / FLETCH | Prototype evidence nodes for circuit abstractions, transform methods, digital-system design, system-design tradeoffs, OS mechanisms, and security threat models. | Do not cache or redistribute notes, videos, textbooks, papers, assignments, labs, code, design reports, projects, exams, simulations, PDFs, or private computing-environment assets. |
| Defer | FONTES | Promote specific labs, code, textbooks, videos, research papers, or project artifacts only after source-scope and rights review. | Do not infer reuse rights from OCW listing/syllabus text alone. |
