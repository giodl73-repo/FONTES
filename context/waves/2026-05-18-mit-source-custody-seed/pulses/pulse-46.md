# Pulse 46 - MIT CMS.611J Creating Video Games source map

## Objective

Add MIT CMS.611J / 6.073 Creating Video Games as the second direct game-design
support source, extending CMS.608 analog game design into digital game
production and team project practice.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added CMS.611J source records under `sources\mit\ocw\cms-611j-creating-video-games`. |
| Surface table | Done | Added `sources\tables\mit-cms-611j-surfaces.json` with ten mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-cms-611j-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for CMS.611J and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, instructor insights, project resources,
  focus-testing resources, and course download package are mapped under MIT OCW
  CC BY-NC-SA 4.0.
- Lecture videos are local-cache only and out of git.
- External project references, student game builds, and sparse lecture-note
  surfaces remain metadata-only boundaries until separately sourced.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-cms-611j-surfaces.json
Get-Content sources\tables\mit-cms-611j-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
