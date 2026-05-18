# Pulse 08 - MIT 18.065 source map

## Objective

Map MIT 18.065 as the math-to-AI bridge course for matrix methods, signal
processing, optimization, and deep learning.

## Work

| Item | Status | Notes |
|---|---|---|
| Course record | Done | `sources\mit\ocw\18-065-matrix-methods\work.json`. |
| Custody record | Done | Captures OCW policy, download policy, video metadata, and textbook boundary. |
| Inventory | Done | Records surfaces, resource counts, and external/book-site review targets. |
| FLETCH registry | Done | `fontes-mit-18-065-surfaces` validates six course-level source surfaces. |

## Validation commands

```powershell
git grep -n "18.065\|Matrix Methods\|Learning from Data" -- sources .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-18-065-surfaces.json
git status --short
```
