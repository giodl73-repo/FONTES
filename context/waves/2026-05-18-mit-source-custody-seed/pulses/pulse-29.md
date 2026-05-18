# Pulse 29 - MIT 15.773 hands-on deep-learning source map

## Objective

Add MIT 15.773 as the Sloan hands-on deep-learning and business-analytics leg of
the MIT AI source slice.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 15.773 source records under `sources\mit\ocw\15-773-hands-on-deep-learning`. |
| Schedule table | Done | `sources\tables\mit-15-773-schedule.json` records 12 schedule rows. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-15-773-surfaces.json` records seven source surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 15.773. |

## Boundary notes

- OCW pages, schedule rows, and downloadable non-media course package are mapped.
- Lecture media is `local_cache_allowed`.
- The assigned textbook, public dataset sources, programming assignments, and
  student project artifacts require child-resource review.

## Validation commands

```powershell
Get-Content sources\tables\mit-15-773-schedule.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-15-773-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
