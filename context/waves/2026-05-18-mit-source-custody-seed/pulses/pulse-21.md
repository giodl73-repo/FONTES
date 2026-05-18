# Pulse 21 - MIT 6.867 machine-learning source map

## Objective

Add MIT 6.867 as the next table-first MIT AI/ML source map after 6.034.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.867 source records under `sources\mit\ocw\6-867-machine-learning`. |
| Lecture-note table | Done | `sources\tables\mit-6-867-lecture-notes.json` records 24 lecture rows. |
| Assignment table | Done | `sources\tables\mit-6-867-assignments.json` records five problem-set rows with ZIP/data boundaries. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-867-surfaces.json` records seven course surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.867. |

## Boundary notes

- OCW pages and lecture-note PDFs are `derived_text_allowed` under MIT OCW terms.
- Supporting MATLAB/data ZIPs are `license_review`.
- Recommended textbooks and optional external papers are metadata-only or
  review-gated until separate terms are captured.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-867-lecture-notes.json -Raw | ConvertFrom-Json
Get-Content sources\tables\mit-6-867-assignments.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-867-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
