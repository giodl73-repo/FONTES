# Pulse 48 - MIT 11.127J educational games source map

## Objective

Add MIT 11.127J / CMS.590J Computer Games and Simulations for Education and
Exploration as an educational-games support source covering game-based
learning, simulations, board/digital game projects, field testing, and learning
assessment.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 11.127J source records under `sources\mit\ocw\11-127j-computer-games-and-simulations`. |
| Surface table | Done | Added `sources\tables\mit-11-127j-surfaces.json` with seven mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-11-127j-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 11.127J and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, calendar, assignments, instructor insights,
  and course download package are mapped under MIT OCW CC BY-NC-SA 4.0.
- Readings and student project examples remain metadata-only boundaries unless
  separately sourced with explicit reusable terms.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-11-127j-surfaces.json
Get-Content sources\tables\mit-11-127j-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
