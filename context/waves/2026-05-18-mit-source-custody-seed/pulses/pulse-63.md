# Pulse 63 - MIT 16.920J numerical PDE source map

## Objective

Add MIT 16.920J Numerical Methods for Partial Differential Equations (SMA 5212)
as an advanced PDE solver support source covering finite difference, finite
volume, finite element, boundary element, integral equation, direct solver,
iterative solver, multigrid, and conservation-law methods.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 16.920J source records under `sources\mit\ocw\16-920j-numerical-methods-pdes-sma`. |
| Surface table | Done | Added `sources\tables\mit-16-920j-surfaces.json` with eight mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-16-920j-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 16.920J and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, lecture notes, assignments, and download page
  are mapped under MIT OCW CC BY-NC-SA 4.0.
- Archived lecture-video bytes, reference textbooks, SMA/NUS program links, and
  non-OCW resources remain metadata-only or local-cache boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-16-920j-surfaces.json
Get-Content sources\tables\mit-16-920j-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
