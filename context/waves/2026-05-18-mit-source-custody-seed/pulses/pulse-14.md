# Pulse 14 - PROOF source ledger bridge

## Objective

Make the source-custody wave PROOF-authentic by adding a normalized ledger that
PEBBLE and CROP can consume instead of relying on inline prose summaries.

## Work

| Item | Status | Notes |
|---|---|---|
| PROOF schema | Done | `schemas\fonte.proof-ledger.v1.json` defines required row fields. |
| Source table | Done | `sources\tables\proof-source-ledger.json` records one row per work-level source record. |
| PROOF source record | Done | `.proof\sources\fontes-course-source-ledger.source.md` points to the canonical JSON table. |
| PEBBLE candidate pack | Done | `.pebble\packs\fontes-proof-source-candidates.json` gates candidate vs blocked rows. |
| CROP source view | Done | `.crop\views\fontes-proof-source-ledger.json` indexes PROOF table, custody records, inventories, and registries. |

## Validation commands

```powershell
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json | Select-Object -ExpandProperty rows | Measure-Object
git grep -n "fontes-course-source-ledger\|proof-source-ledger" -- .proof sources .pebble .crop schemas
git diff --check
```
