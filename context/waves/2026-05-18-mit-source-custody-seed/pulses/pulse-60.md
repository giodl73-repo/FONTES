# Pulse 60 - MIT 18.086 mathematical methods source map

## Objective

Add MIT 18.086 Mathematical Methods for Engineers II as a PDE and numerical
simulation support source covering initial-value problems, wave/heat/convection
equations, conservation laws, finite-difference stability, spectral methods,
large sparse systems, Krylov methods, preconditioning, multigrid, inverse
problems, and regularization.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 18.086 source records under `sources\mit\ocw\18-086-mathematical-methods-engineers-ii`. |
| Surface table | Done | Added `sources\tables\mit-18-086-surfaces.json` with ten mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-18-086-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 18.086 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, assignments, projects, sample project PDFs,
  and download page are mapped under MIT OCW CC BY-NC-SA 4.0.
- MATLAB support files, project ZIPs, video media bytes, assigned textbooks,
  book pages, and external resources remain local-cache or metadata-only
  boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-18-086-surfaces.json
Get-Content sources\tables\mit-18-086-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
