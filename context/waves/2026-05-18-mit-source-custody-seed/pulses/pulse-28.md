# Pulse 28 - MIT 6.S191 deep-learning bootcamp boundary map

## Objective

Add MIT 6.S191 as the practical deep-learning bootcamp leg of the MIT AI source
slice while preserving external site, lab, and media boundaries.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.S191 source records under `sources\mit\ocw\6-s191-introduction-to-deep-learning`. |
| Surface table | Done | `sources\tables\mit-6-s191-surfaces.json` records six mapped surfaces. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-s191-surfaces.json` records six source surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.S191. |

## Boundary notes

- The OCW course page is extractable as metadata under MIT OCW terms.
- The official course sites, GitHub lab repository, and YouTube playlist are
  external or mixed-rights surfaces.
- GitHub code appears MIT-licensed, but notebooks, dependencies, data, and
  current-year drift remain child-resource review items.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-s191-surfaces.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-s191-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
