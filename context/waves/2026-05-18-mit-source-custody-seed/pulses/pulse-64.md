# Pulse 64 - MIT 18.330 numerical analysis source map

## Objective

Add MIT 18.330 Introduction to Numerical Analysis as a foundation source for
simulation numerics covering root finding, interpolation, quadrature, ODEs,
Fourier analysis, spectral methods, least squares, PCA, numerical experiments,
and discretization error.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 18.330 source records under `sources\mit\ocw\18-330-introduction-numerical-analysis`. |
| Surface table | Done | Added `sources\tables\mit-18-330-surfaces.json` with nine mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-18-330-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 18.330 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, lecture notes, assignments, instructor
  insights, and download page are mapped under MIT OCW CC BY-NC-SA 4.0.
- Programming/code work, exam payloads not separately mapped, and linked
  prerequisite/comparison courses remain metadata-only or local-cache
  boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-18-330-surfaces.json
Get-Content sources\tables\mit-18-330-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
