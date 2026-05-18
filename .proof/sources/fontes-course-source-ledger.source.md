---
title: FONTES Course Source Ledger
fontes_schema: fonte.proof-ledger.v1
status: active
source_table: sources\tables\proof-source-ledger.json
generated: 2026-05-18
---

# FONTES Course Source Ledger

This PROOF source record is the work-level evidence ledger for FONTES source
custody. It binds each source map to its machine-readable work record, custody
record, inventory record, FLETCH registry, rights boundary, and downstream
PEBBLE/CROP readiness status.

The canonical table is `sources\tables\proof-source-ledger.json`. Markdown below
is only the human-readable summary; downstream extraction should use the JSON
table as the proof input.

## Ledger summary

| Work | Domain | Family | Policy | PROOF status |
|---|---|---|---|---|
| 6.006 Introduction to Algorithms | CS/software | MIT OCW | `derived_text_allowed` | candidate |
| CS229 Machine Learning | AI/ML | Stanford SEE | `bundle_allowed` | candidate |
| 18.065 Matrix Methods | Mathematics | MIT OCW | `derived_text_allowed` | candidate |
| EE263 Linear Dynamical Systems | Mathematics/systems | Stanford SEE | `bundle_allowed` | candidate |
| EE364A Convex Optimization I | Mathematics/optimization | Stanford SEE | `bundle_allowed` with textbook boundary | candidate |
| 8.01SC Classical Mechanics | Physics-for-objects | MIT OCW | `derived_text_allowed` | candidate |
| 5.111SC Principles of Chemical Science | Chemistry-for-real-items | MIT OCW | `derived_text_allowed` with textbook/external-video boundary | candidate |
| 18.06 Linear Algebra | Mathematics | MIT OCW | `derived_text_allowed` | candidate |
| 6.034 Artificial Intelligence | AI/ML | MIT OCW | `derived_text_allowed` with textbook boundary | candidate |
| 6.036 Introduction to Machine Learning | AI/ML | MIT OCW | `derived_text_allowed` | pending inventory |
| Deep Learning | AI/ML | MIT Press/author-hosted | `metadata_only` | blocked-rights |
| Introduction to Deep Learning | AI/ML | MIT Press | `license_review` | blocked-rights |

## PROOF rule

PEBBLE nodes and CROP views must cite ledger rows, not ad hoc source prose. If a
source has `blocked-rights`, `metadata-only`, or `pending-inventory` status, it
can appear in CROP as a source identity or gap but cannot contribute extracted
text chunks.
