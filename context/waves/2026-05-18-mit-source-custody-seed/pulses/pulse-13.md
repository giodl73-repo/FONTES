# Pulse 13 - Stanford SEE EE364A source map

## Objective

Map Stanford SEE EE364A as the convex optimization source anchor.

## Work

| Item | Status | Notes |
|---|---|---|
| Course record | Done | `sources\open-education\stanford-engineering-everywhere\ee364a-convex-optimization\work.json`. |
| Custody record | Done | Captures SEE policy, textbook/Cambridge boundary, homework exercise boundary, software handling, transcript handling, and video cache boundary. |
| Inventory | Done | Records sessions, lecture notes, review notes, readings, homework, exams, software files, and extraction targets. |
| FLETCH registry | Done | `fontes-stanford-see-ee364a-surfaces` validates six source surfaces. |

## Validation commands

```powershell
git grep -n "EE364A\|Convex Optimization I\|ConvexOptimizationIAllMaterials" -- sources .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-stanford-see-ee364a-surfaces.json
git status --short
```
