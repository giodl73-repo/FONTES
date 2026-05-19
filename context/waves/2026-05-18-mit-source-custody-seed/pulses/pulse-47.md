# Pulse 47 - MIT CMS.615 Games for Social Change source map

## Objective

Add MIT CMS.615 Games for Social Change as the next game-design support source,
covering serious games, civic engagement, social-change design, prototype
reflection, and impact assessment.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added CMS.615 source records under `sources\mit\ocw\cms-615-games-for-social-change`. |
| Surface table | Done | Added `sources\tables\mit-cms-615-surfaces.json` with six mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-cms-615-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for CMS.615 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, assignments, and course download package are
  mapped under MIT OCW CC BY-NC-SA 4.0.
- Serious-game examples and readings are metadata-only boundaries because they
  reference third-party games and works.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-cms-615-surfaces.json
Get-Content sources\tables\mit-cms-615-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
