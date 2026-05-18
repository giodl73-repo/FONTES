# Pulse 27 - MIT 6.8300 advances-in-vision boundary map

## Objective

Add MIT 6.8300 as the advanced computer-vision leg of the MIT AI source slice
without over-claiming externally hosted course materials as OCW-cleared text.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.8300 source records under `sources\mit\ocw\6-8300-advances-in-computer-vision`. |
| Surface table | Done | `sources\tables\mit-6-8300-surfaces.json` records nine OCW/external surfaces. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-8300-surfaces.json` records seven cacheline surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.8300. |

## Boundary notes

- The OCW course page is extractable as metadata under MIT OCW terms.
- The detailed course site, recordings, slides, GitHub problem sets, and course
  platforms are external or mixed-rights surfaces.
- No recordings, slides, problem-set artifacts, or platform content are bundled.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-8300-surfaces.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-8300-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
