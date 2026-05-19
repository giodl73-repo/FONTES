# Pulse 51 - Open Yale ECON 159 Game Theory source map

## Objective

Add Open Yale ECON 159 Game Theory as a strategy/mechanics support source for
the game-design lane.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added ECON 159 source records under `sources\open-education\open-yale-courses\econ-159-game-theory`. |
| Session table | Done | Added `sources\tables\open-yale-econ-159-sessions.json` with 26 lecture/exam rows. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-open-yale-econ-159-surfaces.json` with stable source rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for ECON 159 and updated the ledger summary count. |

## Boundary notes

- OYC course page, lecture transcript pages, exam page identities, and normalized
  session metadata are mapped under Open Yale Courses terms.
- Assigned textbooks, video/audio media files, and third-party materials remain
  metadata-only or local-cache boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-open-yale-econ-159-surfaces.json
Get-Content sources\tables\open-yale-econ-159-sessions.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
