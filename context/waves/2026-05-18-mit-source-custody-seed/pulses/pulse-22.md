# Pulse 22 - MIT 6.864 NLP source map

## Objective

Add MIT 6.864 as the NLP leg of the MIT AI source-custody slice.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.864 source records under `sources\mit\ocw\6-864-advanced-natural-language-processing`. |
| Lecture-note table | Done | `sources\tables\mit-6-864-lecture-notes.json` records 25 lecture rows. |
| Assignment table | Done | `sources\tables\mit-6-864-assignments.json` records six homework rows with dataset/tool boundaries. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-864-surfaces.json` records six course surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.864. |

## Boundary notes

- OCW pages and lecture-note PDFs are `derived_text_allowed`.
- Homework datasets/corpora, external NLP tools, tagsets, and suggested textbooks
  are review-gated.
- Lecture 17 includes courtesy material and is flagged `license_review` at row
  level.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-864-lecture-notes.json -Raw | ConvertFrom-Json
Get-Content sources\tables\mit-6-864-assignments.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-864-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
