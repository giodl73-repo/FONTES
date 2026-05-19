# Pulse 62 - MIT 2.086 numerical computation source map

## Objective

Add MIT 2.086 Numerical Computation for Mechanical Engineers as an
implementation-oriented numerical simulation support source covering MATLAB
programming, Monte Carlo methods, least squares/regression, ODEs, sparse linear
systems, nonlinear equations, robotics/dynamics examples, and numerical
error/uncertainty discipline.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 2.086 source records under `sources\mit\ocw\2-086-numerical-computation-mechanical-engineers`. |
| Surface table | Done | Added `sources\tables\mit-2-086-surfaces.json` with ten mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-2-086-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 2.086 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, calendar, readings page, assignment
  navigation, OCW-hosted unit PDFs, and download page are mapped under MIT OCW
  CC BY-NC-SA 4.0.
- Exam shell pages, demonstration-video bytes, MATLAB scripts/functions, student
  submissions, and external textbook/resource uses remain metadata-only or
  local-cache boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-2-086-surfaces.json
Get-Content sources\tables\mit-2-086-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
