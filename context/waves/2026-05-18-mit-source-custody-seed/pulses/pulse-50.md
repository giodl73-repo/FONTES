# Pulse 50 - MIT CMS.300 videogame studies source map

## Objective

Add MIT CMS.300 Introduction to Videogame Studies as the analytic companion to
CMS.301, covering videogames as texts, game culture, narrative, player identity,
simulation, value systems, aesthetics, journalism, and game-analysis writing.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added CMS.300 source records under `sources\mit\ocw\cms-300-videogame-studies`. |
| Surface table | Done | Added `sources\tables\mit-cms-300-surfaces.json` with eight mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-cms-300-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for CMS.300 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, lecture notes, assignments, game-analysis
  guidance, and course download package are mapped under MIT OCW CC BY-NC-SA
  4.0.
- Readings, lab games, student-selected games, and third-party game content
  remain metadata-only boundaries unless separately reviewed.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-cms-300-surfaces.json
Get-Content sources\tables\mit-cms-300-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
