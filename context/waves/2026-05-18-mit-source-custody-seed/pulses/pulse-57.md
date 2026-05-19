# Pulse 57 - MIT 2.003SC engineering dynamics source map

## Objective

Add MIT 2.003SC Engineering Dynamics as a game physics and simulation support
source covering kinematics, moving and rotating reference frames, angular
momentum, rigid-body rotation, Lagrange equations, and mechanical vibration.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 2.003SC source records under `sources\mit\ocw\2-003sc-engineering-dynamics`. |
| Surface table | Done | Added `sources\tables\mit-2-003sc-surfaces.json` with eleven mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-2-003sc-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 2.003SC and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, resource index, representative session pages,
  problem-set surfaces, and download page are mapped under MIT OCW CC BY-NC-SA
  4.0.
- Lecture/recitation media bytes, suggested textbooks, and third-party
  illustrative images remain local-cache or metadata-only boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-2-003sc-surfaces.json
Get-Content sources\tables\mit-2-003sc-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
