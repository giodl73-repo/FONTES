# Pulse 61 - MIT 18.336 numerical PDE source map

## Objective

Add MIT 18.336 Numerical Methods for Partial Differential Equations as an
advanced simulation support source covering finite differences, finite volumes,
finite elements, spectral methods, ENO/WENO, stability, multigrid, Krylov
spaces, level sets, Navier-Stokes, particle methods, and physically arising PDE
project examples.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 18.336 source records under `sources\mit\ocw\18-336-numerical-methods-pdes`. |
| Surface table | Done | Added `sources\tables\mit-18-336-surfaces.json` with ten mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-18-336-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 18.336 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, lecture notes, assignments navigation,
  project page, and download page are mapped under MIT OCW CC BY-NC-SA 4.0.
- Recommended textbooks, external lecture links, programming work, student
  project bodies, and code assets remain metadata-only or local-cache
  boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-18-336-surfaces.json
Get-Content sources\tables\mit-18-336-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
