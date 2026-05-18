# CS229 Machine Learning Source Inventory

## SEE-owned surfaces

| Surface | URL | Policy |
|---|---|---|
| Course page | `https://see.stanford.edu/Course/CS229` | `derived_text_allowed` |
| Syllabus/info PDF | `https://see.stanford.edu/materials/aimlcs229/info.pdf` | `bundle_allowed` |
| Schedule PDF | `https://see.stanford.edu/materials/aimlcs229/schedule.pdf` | `bundle_allowed` |
| All course materials ZIP | `https://see.stanford.edu/materials/aimlcs229/MachineLearningAllMaterials.zip` | `bundle_allowed` |
| Lecture handouts | `https://see.stanford.edu/materials/aimlcs229/cs229-notes1.pdf` | `bundle_allowed` |
| Assignments | `https://see.stanford.edu/materials/aimlcs229/problemset1.pdf` | `bundle_allowed` |

## Resource counts from mapped page

| Resource family | Count | Notes |
|---|---:|---|
| Course sessions | 20 | Each session has online watch link, MP4 download link, duration, topics, and transcript links. |
| Course handouts | 3 | Course information, course schedule, and other AI courses. |
| Lecture handouts | 12 | Notes 1-12 cover regression through reinforcement learning and control. |
| Review-note families | 7 | Linear algebra, probability, Matlab, convex optimization parts I/II, HMMs, and Gaussian processes. |
| Problem sets | 4 | Each has assignment PDF; most include data files, solution PDFs, and solution data where applicable. |

## Boundary surfaces

| Surface | Policy | Reason |
|---|---|---|
| Lecture MP4 files | `local_cache_allowed` | Downloadable but large media should be cached outside git. |
| Previous projects page | `license_review` | External Stanford class page, not automatically covered by SEE course-material policy. |
| Matlab/Octave tutorials and docs | `license_review` | External links require their own terms before indexing or bundling. |

## First extraction targets

| Target | Why |
|---|---|
| Lecture handout table | Build an ML concept spine for PROOF/PEBBLE/CROP. |
| Assignment table | Connect problem sets, data files, and solutions to the concept spine. |
| Transcript links | Generate searchable lecture-derived text without storing MP4 bytes in git. |
| Review notes | Add prerequisite math and implementation reference nodes. |
