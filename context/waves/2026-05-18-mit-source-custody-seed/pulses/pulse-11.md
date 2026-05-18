# Pulse 11 - Stanford SEE CS229 source map

## Objective

Map Stanford SEE CS229 as the first non-MIT AI/ML source anchor.

## Work

| Item | Status | Notes |
|---|---|---|
| Course record | Done | `sources\open-education\stanford-engineering-everywhere\cs229-machine-learning\work.json`. |
| Custody record | Done | Captures SEE policy, downloadable-materials policy, video cache boundary, and external-link boundary. |
| Inventory | Done | Records 20 sessions, handouts, notes, review notes, assignments, transcripts, and boundary surfaces. |
| FLETCH registry | Done | `fontes-stanford-see-cs229-surfaces` validates six source surfaces. |

## Validation commands

```powershell
git grep -n "CS229\|Machine Learning\|MachineLearningAllMaterials" -- sources .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-stanford-see-cs229-surfaces.json
git status --short
```
