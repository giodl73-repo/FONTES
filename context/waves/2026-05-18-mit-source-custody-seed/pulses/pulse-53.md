# Pulse 53 - MIT 6.837 computer graphics source map

## Objective

Add MIT 6.837 Computer Graphics as a game-engine rendering support source
covering geometry, animation, collision detection, ray tracing, shading, texture
mapping, global illumination, rasterization, graphics hardware, and games.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.837 source records under `sources\mit\ocw\6-837-computer-graphics`. |
| Surface table | Done | Added `sources\tables\mit-6-837-surfaces.json` with eight mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-6-837-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 6.837 and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, calendar, assignment page, representative
  ray-tracing handout, and download page are mapped under MIT OCW CC BY-NC-SA
  4.0.
- Starter code, executables, model assets, platform bundles, Athena environment,
  and recommended textbooks remain local-cache, metadata-only, or blocked
  boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-837-surfaces.json
Get-Content sources\tables\mit-6-837-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
