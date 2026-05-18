# Pulse 30 - MIT 6.S087 foundation-model source map

## Objective

Add MIT 6.S087 Foundation Models and Generative AI as the explicit foundation
models / generative AI anchor for the MIT AI source slice.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.S087 source records under `sources\mit\ocw\6-s087-foundation-models-and-generative-ai`. |
| Surface table | Done | `sources\tables\mit-6-s087-surfaces.json` records OCW and external course-site boundaries. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-s087-surfaces.json` records six source surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.S087. |

## Boundary notes

- OCW landing-page metadata is candidate proof input.
- The official MIT Future of AI site, lecture lists, embedded media, Google Form,
  and registration link are mapped as rights-boundary or metadata-only surfaces.
- No lecture media, images, GIFs, forms, or external-site artifacts were bundled.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-s087-surfaces.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-s087-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
