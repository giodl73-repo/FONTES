# Pulse 15 - PROOF inline table cleanup

## Objective

Apply PROOF's `source_inline_table` lint rule to FONTES source records so
`.source.md` files point to normalized evidence tables instead of carrying
inline row data.

## Work

| Item | Status | Notes |
|---|---|---|
| Course ledger source | Done | Removed the inline ledger summary table from `.proof\sources\fontes-course-source-ledger.source.md`; it now points to `sources\tables\proof-source-ledger.json`. |
| MIT seed source | Done | Removed the inline MIT seed table from `.proof\sources\mit\mit-source-custody-seed.source.md`; it now points to the MIT FLETCH registry and proof ledger. |
| Lint alignment | Done | Source records now comply with PROOF's normalized-data expectation. |

## Validation commands

```powershell
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
