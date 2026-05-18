# Pulse 12 - Stanford SEE EE263 source map

## Objective

Map Stanford SEE EE263 as the systems/control mathematics anchor.

## Work

| Item | Status | Notes |
|---|---|---|
| Course record | Done | `sources\open-education\stanford-engineering-everywhere\ee263-linear-dynamical-systems\work.json`. |
| Custody record | Done | Captures SEE policy, downloadable-materials policy, software/data file handling, transcript handling, and video cache boundary. |
| Inventory | Done | Records sessions, handouts, background notes, homework, exams, software files, and extraction targets. |
| FLETCH registry | Done | `fontes-stanford-see-ee263-surfaces` validates six source surfaces. |

## Validation commands

```powershell
git grep -n "EE263\|Linear Dynamical Systems\|LinearDynamicalSystemsAllMaterials" -- sources .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-stanford-see-ee263-surfaces.json
git status --short
```
