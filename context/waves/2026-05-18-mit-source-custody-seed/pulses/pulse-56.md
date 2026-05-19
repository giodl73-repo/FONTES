# Pulse 56 - MIT 6.832 underactuated robotics source map

## Objective

Add MIT 6.832 Underactuated Robotics as a game physics, locomotion, and
character-controller support source covering nonlinear dynamics, optimal
control, motion planning, walking/running models, stochastic control,
reinforcement learning, Q-learning, and actor-critic methods.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.832 source records under `sources\mit\ocw\6-832-underactuated-robotics`. |
| Surface table | Done | Added `sources\tables\mit-6-832-surfaces.json` with eleven mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-6-832-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 6.832 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, calendar, readings, assignments, projects,
  exams, and download page are mapped under MIT OCW CC BY-NC-SA 4.0.
- Video media bytes, MATLAB/code files, recommended textbooks, and external
  updated course-note links remain local-cache or metadata-only boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-832-surfaces.json
Get-Content sources\tables\mit-6-832-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
