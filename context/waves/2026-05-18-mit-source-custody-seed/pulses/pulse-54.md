# Pulse 54 - MIT 6.831 user interface design source map

## Objective

Add MIT 6.831 / 6.813 User Interface Design and Implementation as a game UI
support source covering usability, learnability, user-centered design,
prototyping, UI architecture, user testing, accessibility, animation, and
mobile interfaces.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.831 source records under `sources\mit\ocw\6-831-user-interface-design`. |
| Surface table | Done | Added `sources\tables\mit-6-831-surfaces.json` with ten mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-6-831-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 6.831 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, calendar, lecture notes, assignments,
  projects, representative user-testing milestone, and download page are mapped
  under MIT OCW CC BY-NC-SA 4.0.
- Code/resource ZIPs, recommended textbooks/literature, and unavailable
  nanoquizzes remain local-cache, metadata-only, or unavailable boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-831-surfaces.json
Get-Content sources\tables\mit-6-831-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
