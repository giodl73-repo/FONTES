# Pulse 55 - MIT 6.838 computer animation source map

## Objective

Add MIT 6.838 Algorithms for Computer Animation as a game-engine animation
support source covering keyframing, inverse kinematics, motion capture,
particles, constraints, rigid bodies, physics approximation, cloth, fluids,
interactive characters, motion editing, and controllers.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.838 source records under `sources\mit\ocw\6-838-algorithms-for-computer-animation`. |
| Surface table | Done | Added `sources\tables\mit-6-838-surfaces.json` with eight mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-6-838-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 6.838 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, calendar, readings-list page, projects page,
  and download page are mapped under MIT OCW CC BY-NC-SA 4.0.
- Third-party papers, books, linked papers, and external SIGGRAPH formatting
  instructions remain metadata-only boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-838-surfaces.json
Get-Content sources\tables\mit-6-838-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
