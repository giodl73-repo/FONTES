# Pulse 58 - MIT 18.03SC differential equations source map

## Objective

Add MIT 18.03SC Differential Equations as a simulation mathematics and game
physics support source covering ODE modeling, numerical/geometric solution
approaches, second-order systems, Fourier/Laplace methods, impulse response,
first-order systems, phase portraits, nonlinear systems, and linearization.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 18.03SC source records under `sources\mit\ocw\18-03sc-differential-equations`. |
| Surface table | Done | Added `sources\tables\mit-18-03sc-surfaces.json` with ten mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-18-03sc-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 18.03SC and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, unit pages, course-note/problem/exam surfaces, and
  download page are mapped under MIT OCW CC BY-NC-SA 4.0.
- Lecture/problem-solving video media bytes, Java mathlets/interactive assets,
  and unit images remain local-cache or metadata-only boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-18-03sc-surfaces.json
Get-Content sources\tables\mit-18-03sc-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
