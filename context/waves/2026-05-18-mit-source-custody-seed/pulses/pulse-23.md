# Pulse 23 - MIT 6.825 AI techniques source map

## Objective

Add MIT 6.825 as the graduate AI-techniques leg of the MIT AI source-custody slice.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.825 source records under `sources\mit\ocw\6-825-techniques-in-artificial-intelligence`. |
| Lecture-note table | Done | `sources\tables\mit-6-825-lecture-notes.json` records 22 lecture positions. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-825-surfaces.json` records five course surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.825. |

## Boundary notes

- OCW pages and available lecture-note PDFs are `derived_text_allowed`.
- Lecture notes for lectures 6 and 21 are unavailable and recorded as
  metadata-only markers.
- Assignments remain `pending_inventory` because the fetched assignment page did
  not expose structured rows.
- AIMA, AI Topics, Java resources, and course downloads remain boundary-checked.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-825-lecture-notes.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-825-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
