# MIT Statistics/Data/IDS Core Custody

## Research question

What MIT Statistics/Data/IDS source custody should FONTES add so PROOF, FLETCH,
CROP, and PEBBLE can distinguish probability, statistics, applied probability,
and statistical data-analysis claims from math-core, economics, Sloan, and HST
rows?

## Current custody decision

This tranche anchors MIT Statistics/Data/IDS custody in MIT OCW 18.05, 18.650,
6.436J, 6.041, and 15.075J. MIT OCW course/listing and syllabus pages are
mapped as `derived_text_allowed`. Lecture notes, slides, videos, problem sets,
solutions, exams, quizzes, readings, textbook bodies, R/MATLAB/code files,
interactive problem checkers, datasets, spreadsheets, figures, images, PDFs,
student work, and linked third-party assets remain boundary-checked unless
separately reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-STATS-01 | `https://ocw.mit.edu/courses/18-05-introduction-to-probability-and-statistics-spring-2022/` | MIT 18.05 covers probability, statistics, Bayesian inference, hypothesis testing, confidence intervals, regression, readings, R code, problem sets, and exams. | Adds intro probability/statistics custody. | High |
| FONTES-STATS-02 | `https://ocw.mit.edu/courses/18-650-statistics-for-applications-fall-2016/` | MIT 18.650 covers parametric inference, MLE, hypothesis testing, regression, Bayesian statistics, PCA, GLMs, slides/videos, and problem sets. | Adds applied statistics custody. | High |
| FONTES-STATS-03 | `https://ocw.mit.edu/courses/6-436j-fundamentals-of-probability-fall-2018/` | MIT 6.436J covers probability spaces, random variables, expectation, convergence, stochastic processes, assignments, exams, and readings. | Adds IDS/probability custody. | High |
| FONTES-STATS-04 | `https://ocw.mit.edu/courses/6-041-probabilistic-systems-analysis-and-applied-probability-fall-2010/` | MIT 6.041 covers probabilistic systems, applied probability, random processes, estimation, decision making, lecture notes, problem sets, and exams. | Adds applied-probability custody. | High |
| FONTES-STATS-05 | `https://ocw.mit.edu/courses/15-075j-statistical-thinking-and-data-analysis-fall-2011/` | MIT 15.075J covers statistical data analysis, sampling, estimation, hypothesis testing, regression/ANOVA, categorical/nonparametric methods, MATLAB/problem sets, and exams. | Adds Sloan/IDS data-analysis custody. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Keep claims distinct as probability, applied probability, statistical inference, and statistical data analysis. | Do not duplicate math-core, economics, Sloan, or HST rows. |
| Prototype behind boundary | PROOF / FLETCH | Prototype evidence nodes for inference, regression, stochastic process, and data-analysis claims. | Do not cache or redistribute notes, videos, code, datasets, problem solutions, exams, PDFs, or student work. |
| Defer | FONTES | Promote specific datasets, code, spreadsheets, or interactive checkers only after source-scope and rights review. | Do not infer reuse rights from OCW listing/syllabus text alone. |
