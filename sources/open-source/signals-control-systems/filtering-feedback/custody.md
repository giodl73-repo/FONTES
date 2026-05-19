# Signals, Systems, Feedback Control, Filtering, and Estimation Custody

## Research question

What source custody should FONTES add for signal representations, linear
systems, feedback control, filtering, estimation, and signal-processing/control
tool identities before PROOF, FLETCH, CROP, and PEBBLE make stronger claims
about transforms, filters, stability, observers, or control loops?

## Current custody decision

This tranche anchors signals, systems, and feedback control in MIT OCW 6.003,
6.011, and 2.14. MIT OCW course/listing pages are mapped as
`derived_text_allowed`. Stanford EE102, SciPy signal, and python-control are
mapped as `metadata_only` until exact course-site, generated-doc, source,
example, package, notebook, release, and linked-asset reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-CONTROL-01 | `https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/` | MIT 6.003 covers discrete/continuous-time signal representations, Fourier/Laplace/Z transforms, sampling, LTI systems, differential/difference equations, block diagrams, system functions, poles/zeros, convolution, impulse/step/frequency responses, and applications to feedback/control, communications, and signal processing. | Provides the primary candidate surface for signal and LTI-system custody. | High |
| FONTES-CONTROL-02 | `https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/pages/syllabus/` | The 6.003 syllabus repeats the signal/system topic scope, names Oppenheim/Willsky as textbook, and documents collaboration, exams, homework, and grading. | Syllabus/course metadata are citeable; textbook bodies, lecture notes, exams, videos, solutions, and problem sets remain boundary-checked. | High |
| FONTES-CONTROL-03 | `https://ocw.mit.edu/courses/6-011-introduction-to-communication-control-and-signal-processing-spring-2010/` | MIT 6.011 unifies signals, systems, and inference across communication, control, and signal processing, covering state-space models, random signals, transform domains, feedback/observers, stochastic processes, spectra, MMSE estimation, Wiener filtering, hypothesis testing, detection, and matched filters. | Adds estimation/filtering and stochastic-signal custody for inference and communication pipelines. | High |
| FONTES-CONTROL-04 | `https://ocw.mit.edu/courses/2-14-analysis-and-design-of-feedback-control-systems-spring-2014/` | MIT 2.14 covers feedback-control fundamentals using linear transfer-function models, time/frequency-domain analysis, root locus, loop shaping, nonlinear describing functions, state-variable/multivariable control with observers, and z-plane design. | Provides feedback-control and stability/design source custody. | High |
| FONTES-CONTROL-05 | `https://ocw.mit.edu/courses/2-14-analysis-and-design-of-feedback-control-systems-spring-2014/pages/syllabus/` | The 2.14 syllabus documents course meetings, textbooks, labs, assignments, quizzes, recitations, and design case study. | Labs, reports, assignments, readings, and textbook bodies require boundary review. | High |
| FONTES-CONTROL-06 | `https://web.stanford.edu/class/ee102/` | Stanford EE102 page redirects users to an EE102A web site. | Use as metadata-only course identity until the active course site is reviewed. | Medium |
| FONTES-CONTROL-07 | `https://docs.scipy.org/doc/scipy/reference/signal.html` | SciPy signal docs expose APIs for convolution, correlation, FFT convolution, overlap-add convolution, 2D convolution/correlation, B-splines, and related signal-processing functions. | Adds implementation-doc identity for future filter/convolution provenance. | High |
| FONTES-CONTROL-08 | `https://python-control.readthedocs.io/en/latest/` | python-control implements feedback-control analysis/design, state-space/frequency-domain systems, nonlinear systems, block diagrams, time/frequency responses, stability, reachability, observability, root locus, LQR, H2/Hinf, MPC/RHC, model reduction, and estimator design. | Adds control-tool identity for reproducible control-system analysis claims. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate signal representation, transform, filter, system model, stability, controller, observer, estimator, simulation, and implementation-library claims; cite source identities for each. | Do not treat filtered output or a stable-looking simulation as source evidence without model, sampling, noise, controller, and validation provenance. |
| Prototype behind boundary | PROOF / FLETCH | Prototype signal/control provenance records for sample rate, transform, filter coefficients, plant model, controller, observer, noise model, simulation settings, and response metrics. | Do not cache or redistribute course PDFs, textbook bodies, labs, assignments, generated docs, examples, notebooks, or package artifacts in FONTES. |
| Defer | FONTES | Promote lecture notes, textbook sections, lab assets, code examples, API docs, and tool examples only after reuse review. | Do not collapse signal-processing transformations, control decisions, and semantic evidence into one proof category. |
