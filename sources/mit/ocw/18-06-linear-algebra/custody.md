# 18.06 Linear Algebra Custody

## Source

MIT OpenCourseWare course page:
`https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/`

## Current custody decision

18.06 is a high-priority source family for FONTES, but the assigned Strang
textbook is not treated as OCW-downloadable source material. The first pass
registers the course page, readings table, and resource groups, then separates
OCW materials from assigned textbook metadata.

OCW-owned materials are governed by the MIT OpenCourseWare License recorded in
`sources\mit\ocw\TERMS.md`: CC BY-NC-SA 4.0 with attribution,
noncommercial-use, and share-alike requirements.

## Fetch policy

| Source | Policy | Reason |
|---|---|---|
| Course page | `derived_text_allowed` | OCW terms allow sharing/adaptation under CC BY-NC-SA 4.0. |
| Syllabus | `derived_text_allowed` | OCW terms allow derived text with attribution and share-alike. |
| Readings table | `derived_text_allowed` | OCW readings page text can seed a source map; assigned textbooks remain separate. |
| Assignments | `derived_text_allowed` | Assignment page text is OCW-owned; assigned textbook problem references do not make textbook content cacheable. |
| Exams | `derived_text_allowed` | OCW exam page and linked OCW PDFs can be recorded under OCW terms. |
| Study materials | `derived_text_allowed` | OCW-owned study-material page text can be indexed; linked resources still need child checks. |
| Instructor insights | `derived_text_allowed` | Teaching-context page is OCW-owned text under OCW terms. |
| Video gallery metadata | `derived_text_allowed` | Lecture titles/resource metadata are OCW page text; video assets remain per-resource. |
| OCW course download | `bundle_allowed` | OCW-owned downloadable materials may be copied under CC BY-NC-SA 4.0 if no per-file restriction applies. |
| Related resources page | `license_review` | Page mixes OCW materials, Strang textbook metadata, OCW-hosted PDFs, Java demos, MathWorks, YouTube, external PDFs, and third-party sites. |
| Strang textbook 4e/5e | `metadata_only` | Assigned textbook, not presumed freely downloadable or redistributable. |

## Next enumeration pass

- Enumerate the individual assignment/exam PDF resource URLs into child records.
- Classify related-resource child links as OCW-owned, external metadata-only, or
  per-resource license review.
- Identify the concrete downloadable package URL behind the OCW download page and
  fetch it through FLETCH into local cache, not git.
