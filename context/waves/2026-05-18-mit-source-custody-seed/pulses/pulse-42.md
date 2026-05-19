# Pulse 42 - Stanford SEE EE261 source map

## Objective

Add Stanford SEE EE261 The Fourier Transform and its Applications as the next
mathematics/signal-processing source class after the MIT physics and chemistry
expansion.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added EE261 source records under `sources\open-education\stanford-engineering-everywhere\ee261-fourier-transform`. |
| Surface table | Done | Added `sources\tables\stanford-see-ee261-surfaces.json` with seven mapped SEE source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-stanford-see-ee261-surfaces.json` with stable surface rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for EE261 and updated the ledger summary count. |

## Boundary notes

- SEE course page metadata is `derived_text_allowed`.
- Non-video PDFs, ZIPs, assignment handouts, solution PDFs, support files, and
  transcript files are `bundle_allowed` under recorded SEE family terms unless a
  child resource indicates otherwise.
- Lecture MP4s remain `local_cache_allowed` and out of git.
- Matlab/text/audio/image support files should receive child-resource review
  before downstream package promotion.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-stanford-see-ee261-surfaces.json
Get-Content sources\tables\stanford-see-ee261-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
