# 6.006 Introduction to Algorithms Custody

## Source

MIT OpenCourseWare course page:
`https://ocw.mit.edu/courses/6-006-introduction-to-algorithms-fall-2011/`

## Current custody decision

6.006 is a first-priority CS/software source. OCW-owned page text and course
metadata are covered by the MIT OpenCourseWare License recorded at
`sources\mit\ocw\TERMS.md`: CC BY-NC-SA 4.0 with attribution,
noncommercial-use, and share-alike requirements.

The course also contains child resources that need individual treatment. The
assignments page explicitly notes courtesy code in some problem sets and says
the Problem Set 7 sunset image is excluded from the Creative Commons license.
Therefore FONTES should not mark the whole downloadable course bundle as clean
`bundle_allowed` until excluded and third-party resources are separated.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| Course page | `derived_text_allowed` | OCW terms allow page text sharing/adaptation under CC BY-NC-SA 4.0. |
| Syllabus | `derived_text_allowed` | OCW-owned course policy and structure text. |
| Lecture notes page | `derived_text_allowed` | Page text maps lectures and linked note/code resources. |
| Exams page | `derived_text_allowed` | Page text lists quizzes, final exam, and solutions. |
| Assignments page | `license_review` | Page text is OCW, but child ZIP/PDF resources include courtesy code and one explicitly CC-excluded image. |
| Course download | `license_review` | Bundle may include excluded/third-party materials; split before caching or bundling. |
| CLRS textbook | `metadata_only` | Assigned commercial textbook, not OCW-licensed source text. |

## Next enumeration pass

- Split assignment child resources into OCW-owned PDFs, code ZIPs, courtesy-code
  ZIPs, and excluded/fair-use assets.
- Enumerate lecture-note PDFs and lecture-code ZIPs.
- Enumerate quiz/final PDFs and solutions.
- Decide whether FLETCH should fetch the course package only into local cache
  with excluded assets flagged, or fetch individual cleared resources.
