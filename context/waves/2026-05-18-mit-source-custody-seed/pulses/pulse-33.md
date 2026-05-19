# Pulse 33 - MIT 6.036 OLL material boundary

## Objective

Harden the MIT 6.036 source map so the FLETCH registry matches the normalized
surface table and explicitly records the Open Learning Library course-material
rights boundary.

## Work

| Item | Status | Notes |
|---|---|---|
| FLETCH registry | Done | Added the OLL lectures/notes/exercises/labs/homework boundary row from `sources\tables\mit-6-036-surfaces.json`. |
| Work linkage | Done | Added `work_id` metadata to the 6.036 registry rows for ledger-aligned search. |
| Pulse record | Done | Recorded the 6.036 hardening slice in this pulse. |

## Boundary notes

- The OCW landing page remains `derived_text_allowed`.
- The OLL about page remains `metadata_only`.
- OLL lectures, lecture notes, exercises, labs, homework, media, and interactive
  platform state remain blocked behind resource-level license review.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-036-surfaces.json
Get-Content sources\tables\mit-6-036-surfaces.json -Raw | ConvertFrom-Json
git diff --check
```
