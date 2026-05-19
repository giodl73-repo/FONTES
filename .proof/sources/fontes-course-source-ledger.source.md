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

The canonical table is `sources\tables\proof-source-ledger.json`. Downstream
extraction must use that JSON table as the proof input.

## Ledger summary

The ledger currently covers 91 work-level source records:

- 75 candidate rows ready for surface-level PEBBLE/CROP expansion.
- 13 source-identity rows that may only contribute source identity or gap status.
- 3 blocked-rights rows that may only contribute source identity or gap status.

For exact work, domain, family, policy, and status values, use the JSON ledger.

## PROOF rule

PEBBLE nodes and CROP views must cite ledger rows, not ad hoc source prose. If a
source has `blocked-rights`, `metadata-only`, or `pending-inventory` status, it
can appear in CROP as a source identity or gap but cannot contribute extracted
text chunks.
