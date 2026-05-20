# Electrical and Computer Engineering Custody

## Research question

What source custody should FONTES add for electrical and computer engineering
foundations so downstream PROOF, FLETCH, CROP, and PEBBLE can distinguish
circuit, signal, digital-system, microelectronic-device, and electromagnetic
claims from broader computer-science or physics coverage?

## Current custody decision

This tranche anchors electrical/computer engineering custody in MIT OCW 6.002,
6.003, 6.004, 6.012, and 6.013. MIT OCW course/listing/syllabus pages are
mapped as `derived_text_allowed`. Textbook bodies, lecture notes, lecture
videos, podcasts, problem sets, solutions, exams, quizzes, formula sheets,
diagnostic exercises, handouts, lab exercises, measurement data, student
circuits, processor designs, design assignments, projects, code, simulations,
online textbook bodies, images, diagrams, applets, software, and linked
third-party assets remain boundary-checked unless separately reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-ENG3-01 | `https://ocw.mit.edu/courses/6-002-circuits-and-electronics-spring-2007/` | MIT 6.002 is a first EE/EECS core course covering lumped circuit abstraction, resistive networks, sources, switches, MOS transistors, digital abstraction, amplifiers, energy storage, dynamics, time/frequency design, analog/digital circuits, design/lab exercises, videos, exams, problem sets, and textbook boundary. | Adds circuit/electronics custody distinct from physics E&M. | High |
| FONTES-ENG3-02 | `https://ocw.mit.edu/courses/6-002-circuits-and-electronics-spring-2007/pages/syllabus/` | The 6.002 syllabus details lumped models, circuit analysis, Boolean logic, gate design, MOSFET models, small-signal amplifier analysis, RLC behavior, lab measurements, op amps, CMOS power, audio system design, prerequisites, textbook, homework, tutorials, ethics, and lab boundaries. | Adds circuit-design, lab-measurement, and ethics boundaries. | High |
| FONTES-ENG3-03 | `https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/` | MIT 6.003 covers discrete/continuous signal representations, Fourier/Laplace/Z transforms, sampling, LTI systems, equations, block diagrams, system functions, poles/zeros, convolution, responses, feedback/control, communications, signal processing, lecture notes/videos, open textbook, problem sets, solutions, and exams. | Adds signals/systems custody. | High |
| FONTES-ENG3-04 | `https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/pages/syllabus/` | The 6.003 syllabus captures prerequisites, Oppenheim/Willsky textbook boundary, grading, exams, collaboration, code/graphics authorship, plagiarism, and academic-integrity rules. | Adds assessment and authorship boundaries for signal-processing work. | High |
| FONTES-ENG3-05 | `https://ocw.mit.edu/courses/6-004-computation-structures-spring-2017/` | MIT 6.004 covers digital systems architecture, multilevel implementation, primitives, lower-level mechanization, concurrency, precedence constraints, performance, pipelining, multidimensional systems, instruction-set design, software-structure support, instructor insights, notes/videos, podcasts, and programming assignments. | Adds computer-engineering/digital-system custody. | High |
| FONTES-ENG3-06 | `https://ocw.mit.edu/courses/6-004-computation-structures-spring-2017/pages/syllabus/` | The 6.004 syllabus covers MOS transistors, gates, combinational/sequential circuits, finite-state machines, computers, systems, gate-level RISC processor design, abstraction, performance, ROMs/logic arrays, pipelines, CPU debugging, cache tuning, virtual memory, translation, MITx/tutorial problems, and collaboration boundary. | Adds digital design, processor, and hands-on design boundaries. | High |
| FONTES-ENG3-07 | `https://ocw.mit.edu/courses/6-012-microelectronic-devices-and-circuits-fall-2009/` | MIT 6.012 covers microelectronic device modeling, circuit analysis/design, semiconductor junction and MOS devices, electrical behavior and physical processes, circuit models, model limitations, large-signal/incremental techniques, bipolar/FET circuits, digital circuits, amplifiers, integrated circuits, design assignments, exams, notes, problem sets, and projects. | Adds device/circuit/system concentration custody. | High |
| FONTES-ENG3-08 | `https://ocw.mit.edu/courses/6-012-microelectronic-devices-and-circuits-fall-2009/pages/syllabus/` | The 6.012 syllabus covers topics/diagnostic handouts, required online textbook, semiconductor references, problem sets, collaboration, tutorials, exams, crib sheets, take-home design problem, and grading. | Adds microelectronics assessment, design-problem, and reference boundaries. | High |
| FONTES-ENG3-09 | `https://ocw.mit.edu/courses/6-013-electromagnetics-and-applications-fall-2005/` | MIT 6.013 covers EM applications in wireless, circuits, interconnects, optical fiber, microwave/radar, antennas, sensors, MEMS, motors, power systems, Maxwell solutions, waves, radiation, diffraction, media/structure coupling, guided/unguided waves, resonance, forces, power, energy, notes, problem sets, solutions, and exams. | Adds applied electromagnetics custody. | High |
| FONTES-ENG3-10 | `https://ocw.mit.edu/courses/6-013-electromagnetics-and-applications-fall-2005/pages/syllabus/` | The 6.013 syllabus captures prerequisites, course-note text boundary, online textbook boundary, quizzes, formula sheets, final exam, homework, honor policy for solutions, tutorials, and grading. | Adds EM prerequisite and honor-policy boundaries. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Keep circuit abstractions, signal transforms, digital-system structures, device models, and electromagnetic fields separate by source family, units, assumptions, lab context, model scope, and design artifact. | Do not treat solved circuits, processor labs, waveform examples, device calculations, EM derivations, or textbook examples as reusable facts without source-backed assumptions and rights review. |
| Prototype behind boundary | PROOF / FLETCH | Prototype evidence nodes for circuit measurements, transfer functions, sampling claims, RISC design artifacts, microelectronic model limitations, and EM application domains. | Do not cache or redistribute notes, videos, podcasts, problem sets, solutions, exams, quizzes, formula sheets, handouts, lab data, student designs, code, simulations, online textbook bodies, images, applets, diagrams, or third-party assets. |
| Defer | FONTES | Promote concrete lab results, processor implementations, waveform data, circuit designs, device simulations, textbook figures, or video transcripts only after explicit reuse review. | Do not collapse EECS software topics, computer engineering hardware, electrical engineering circuits, signal processing, and applied electromagnetics into one undifferentiated proof category. |
