# Pulse 45 - MIT CMS.608 Game Design source map

## Objective

Add MIT CMS.608 / CMS.864 Game Design as the first direct game-design support
source after the hard-science and seed-CS source coverage.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added CMS.608 source records under `sources\mit\ocw\cms-608-game-design`. |
| Surface table | Done | Added `sources\tables\mit-cms-608-surfaces.json` with nine mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-cms-608-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for CMS.608 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, instructor insights, calendar, assignment
  resources, style guide, and course ZIP are mapped under MIT OCW CC BY-NC-SA
  4.0.
- Third-party readings and commercial game references are metadata-only.
- Lecture audio is declared by OCW but currently unavailable, so it stays a
  metadata/media boundary.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-cms-608-surfaces.json
Get-Content sources\tables\mit-cms-608-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
