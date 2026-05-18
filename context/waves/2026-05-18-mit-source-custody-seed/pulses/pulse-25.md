# Pulse 25 - MIT 6.801 machine-vision source map

## Objective

Add MIT 6.801 as the machine-vision/perception leg of the MIT AI source-custody slice.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.801 source records under `sources\mit\ocw\6-801-machine-vision`. |
| Lecture-note table | Done | `sources\tables\mit-6-801-lecture-notes.json` records 23 lecture positions. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-801-surfaces.json` records seven course surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.801. |

## Boundary notes

- OCW pages and available lecture-note PDFs are `derived_text_allowed`.
- The course download page says the package excludes audio/video materials, so
  the download surface is `bundle_allowed`.
- Assignments and exams remain `license_review` because fetched pages exposed no
  structured rows.
- Graduate project toolchain references are external and review-gated.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-801-lecture-notes.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-801-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
