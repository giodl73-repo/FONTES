# Pulse 49 - MIT CMS.301 game design methods source map

## Objective

Add MIT CMS.301 Introduction to Game Design Methods as the methods spine for
the game-design support lane: rapid prototyping, playtesting, design iteration,
player-centered design, crit sessions, peer feedback, and game design research.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added CMS.301 source records under `sources\mit\ocw\cms-301-game-design-methods`. |
| Surface table | Done | Added `sources\tables\mit-cms-301-surfaces.json` with nine mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-cms-301-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for CMS.301 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, calendar, assignments, instructor insights,
  representative assignment/template resources, and download page are mapped
  under MIT OCW CC BY-NC-SA 4.0.
- External study materials, readings, games, media, and example student work
  remain metadata-only boundaries unless separately reviewed.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-cms-301-surfaces.json
Get-Content sources\tables\mit-cms-301-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
