# Pulse 10 - MIT 5.111SC source map

## Objective

Map MIT 5.111SC as the first chemistry-for-real-items source for molecular
structure, thermodynamics, equilibrium, redox, kinetics, and catalysis.

## Work

| Item | Status | Notes |
|---|---|---|
| Course record | Done | `sources\mit\ocw\5-111sc-principles-of-chemical-science\work.json`. |
| Custody record | Done | Captures OCW policy, textbook boundary, external-video boundary, and media handling. |
| Inventory | Done | Records unit, lecture, problem, exam, and assessment metadata. |
| FLETCH registry | Done | `fontes-mit-5-111sc-surfaces` validates six course-level source surfaces. |

## Validation commands

```powershell
git grep -n "5.111SC\|Principles of Chemical Science\|Atkins" -- sources .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-5-111sc-surfaces.json
git status --short
```
