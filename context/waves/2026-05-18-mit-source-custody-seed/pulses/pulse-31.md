# Pulse 31 - MIT 6.S897 machine-learning healthcare source map

## Objective

Add MIT 6.S897 as the applied clinical machine-learning anchor for the MIT AI
source slice.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.S897 source records under `sources\mit\ocw\6-s897-machine-learning-for-healthcare`. |
| Lecture table | Done | `sources\tables\mit-6-s897-lecture-notes.json` records 25 lecture rows. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-s897-surfaces.json` records five source surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.S897. |

## Boundary notes

- OCW course, syllabus, and lecture-note metadata are candidate proof input.
- External readings, clinical data, projects, and videos require resource-level
  review before bundling.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-s897-lecture-notes.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-s897-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
