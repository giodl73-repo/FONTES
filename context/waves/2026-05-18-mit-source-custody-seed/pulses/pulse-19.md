# Pulse 19 - MIT 6.006 normalized tables

## Objective

Turn MIT 6.006 into the first MIT table-first extraction pilot by normalizing
readings and assignments into PROOF-consumable sidecar JSON.

## Work

| Item | Status | Notes |
|---|---|---|
| Readings table | Done | `sources\tables\mit-6-006-readings.json` has 26 rows: 24 lectures and two quiz markers. |
| Assignment table | Done | `sources\tables\mit-6-006-assignments.json` has seven problem-set rows with rights boundaries. |
| Assignment schema | Done | `schemas\fonte.course-assignments.v1.json` captures the normalized assignment row shape. |
| Work record | Done | Added normalized table surfaces to 6.006 `work.json`. |
| Inventory | Done | Added normalized-table pointers and row counts. |

## Validation commands

```powershell
Get-Content sources\tables\mit-6-006-readings.json -Raw | ConvertFrom-Json
Get-Content sources\tables\mit-6-006-assignments.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
