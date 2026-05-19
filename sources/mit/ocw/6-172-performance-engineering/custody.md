# 6.172 Performance Engineering of Software Systems Custody

## Source

MIT OpenCourseWare course page:
`https://ocw.mit.edu/courses/6-172-performance-engineering-of-software-systems-fall-2018/`

## Current custody decision

6.172 is a game-engine support source for FONTES. It anchors performance
analysis, instruction-level optimization, vectorization, caching, parallelism,
memory allocation, synchronization, autotuning, graph optimization, collision
detection, and performance-oriented code/design review.

OCW-owned course pages, syllabus, calendar, project prose, project PDFs, and
download page are mapped under MIT OCW CC BY-NC-SA 4.0. Project material ZIPs
contain source code and mixed assets; they are local-cache only until downstream
review decides what may be indexed or transformed. Lecture videos and any media
bytes stay out of git. The current lecture-notes page capture is sparse and is
kept as a metadata boundary.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| Course page | `derived_text_allowed` | OCW-owned course description and learning-resource metadata. |
| Syllabus | `derived_text_allowed` | OCW-owned prerequisites, grading, and course structure. |
| Calendar | `derived_text_allowed` | OCW-owned weekly topic and due-date sequence. |
| Projects page | `derived_text_allowed` | OCW-owned project process, team-contract, review, and resource metadata. |
| Representative project PDFs | `derived_text_allowed` | OCW-hosted project PDFs for collision detection and Leiserchess. |
| Project material ZIPs | `local_cache_allowed` | Code bundles and mixed assets require explicit downstream review; do not commit bytes. |
| Lecture notes | `metadata_only` | Sparse visible capture in current OCW page. |
| Course download | `bundle_allowed` | OCW package contains online course content except audio/video materials. |

## Portfolio relevance

This course supports Rust and other game-engine repos by capturing practical
patterns for profiling, optimizing hot loops, managing memory, using caches,
parallelizing systems, reviewing performance code, and structuring teams around
high-performance project work.
