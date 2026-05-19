# Pulse 59 - MIT 18.085 computational science source map

## Objective

Add MIT 18.085 Computational Science and Engineering I as a numerical
simulation and game-engine support source covering applied linear algebra,
finite differences, finite elements, Laplace/Poisson solvers, Fourier series,
DFT/FFT, convolution, filtering, and MATLAB-code boundaries.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 18.085 source records under `sources\mit\ocw\18-085-computational-science-engineering`. |
| Surface table | Done | Added `sources\tables\mit-18-085-surfaces.json` with nine mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-18-085-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 18.085 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus/calendar, assignments, exams, and download
  page are mapped under MIT OCW CC BY-NC-SA 4.0.
- MATLAB code files, video media bytes, assigned textbooks, book pages, and
  related external resources remain local-cache or metadata-only boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-18-085-surfaces.json
Get-Content sources\tables\mit-18-085-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
