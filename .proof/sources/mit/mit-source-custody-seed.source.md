---
title: MIT Source-Custody Seed
fontes_schema: fonte.custody.v1
status: seeded
source_family: mit
---

# MIT Source-Custody Seed

FONTES starts with MIT source custody because MIT OCW, Open Learning Library, and
MIT Press provide high-value educational anchors with varied reuse policies.

## OCW terms

MIT OpenCourseWare materials are recorded under CC BY-NC-SA 4.0 when they are
OCW-owned course pages or downloadable materials without separate restrictions.
FONTES records the authoritative terms page at `sources\mit\ocw\TERMS.md` and
keeps assigned textbooks outside that license unless a separate open source is
found.

## Seed works

The MIT seed works are represented in structured records rather than an inline
source table:

- Source URL/cacheline rows live in `.fletch\registries\fontes-mit-seed.json`.
- Work-level proof/custody rows live in
  `sources\tables\proof-source-ledger.json`.
- Detailed course and book boundaries live under `sources\mit\`.

The seed includes 18.06 Linear Algebra, 6.034 Artificial Intelligence, 6.036
Introduction to Machine Learning, _Deep Learning_, and _Introduction to Deep
Learning_. Use the structured records for exact policy and rights-boundary
values.

## Publisher status

FLETCH registries exist for the MIT seed and dedicated MIT Press book boundary
surfaces. Pebble and Crop outputs remain pending until source text extraction
policy is explicit per source.
