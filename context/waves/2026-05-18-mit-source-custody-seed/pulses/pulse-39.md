# Pulse 39 - Stanford SEE CS107 source map

## Objective

Add Stanford SEE CS107 Programming Paradigms as the next CS/software source
class after the initial MIT, Open Yale, and Stanford SEE coverage passes.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added CS107 source records under `sources\open-education\stanford-engineering-everywhere\cs107-programming-paradigms`. |
| Surface table | Done | Added `sources\tables\stanford-see-cs107-surfaces.json` with eight mapped SEE source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-stanford-see-cs107-surfaces.json` with stable surface rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for CS107 and updated the ledger summary count. |

## Boundary notes

- SEE course page metadata is `derived_text_allowed`.
- Non-video PDFs, ZIPs, assignment handouts, starter/data archives, and
  transcript files are `bundle_allowed` under recorded SEE family terms unless a
  child resource indicates otherwise.
- Lecture MP4s remain `local_cache_allowed` and out of git.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-stanford-see-cs107-surfaces.json
Get-Content sources\tables\stanford-see-cs107-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
