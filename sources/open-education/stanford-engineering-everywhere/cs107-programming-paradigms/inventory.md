# CS107 Programming Paradigms Source Inventory

## SEE-owned surfaces

| Surface | URL | Policy |
|---|---|---|
| Course page | `https://see.stanford.edu/Course/CS107` | `derived_text_allowed` |
| Syllabus/course information PDF | `https://see.stanford.edu/materials/icsppcs107/01-CS107-Course-Information.pdf` | `bundle_allowed` |
| All course materials ZIP | `https://see.stanford.edu/materials/icsppcs107/ProgrammingParadigmsAllMaterials.zip` | `bundle_allowed` |
| Section assignment representative | `https://see.stanford.edu/materials/icsppcs107/10-Section-Handout.pdf` | `bundle_allowed` |
| Programming assignment representative | `https://see.stanford.edu/materials/icsppcs107/04-Assignment-1-RSG.pdf` | `bundle_allowed` |
| Assignment starter/data representative | `https://see.stanford.edu/materials/icsppcs107/assn-1-rsg.zip` | `bundle_allowed` |
| Lecture transcript representative | `https://see.stanford.edu/materials/icsppcs107/transcripts/ProgrammingParadigms-Lecture01.html` | `bundle_allowed` |

## Resource counts from mapped page

| Resource family | Count | Notes |
|---|---:|---|
| Course sessions | 27 | Each session has watch/download metadata, duration, topics, and transcript links. |
| Section assignments | 8 | Handout PDFs and solution PDFs. |
| Programming assignments | 8 | Assignment PDFs, starter code, data archives, FAQs, and selected solutions. |
| Lecture videos | 27 | Downloadable MP4 files; local FLETCH cache only. |
| Lecture transcripts | 27 | HTML/PDF transcript files listed per lecture. |

## Boundary surfaces

| Surface | Policy | Reason |
|---|---|---|
| Lecture MP4 files | `local_cache_allowed` | Downloadable but large media should be cached outside git. |
| Assignment code/data archives | `bundle_allowed` | SEE-distributed, but child-resource review should happen before downstream package promotion. |

## First extraction targets

| Target | Why |
|---|---|
| Transcript links | Generate searchable systems-programming lecture text without storing MP4 bytes in git. |
| Assignment table | Connect problem handouts, starter archives, and solutions to a systems-programming concept spine. |
| Handout table | Capture memory, C/C++, assembly, concurrency, functional, and Python topic progression. |
