# Pulse 09 - MIT 8.01SC source map

## Objective

Map MIT 8.01SC as the first physics-for-objects source for mechanics,
simulation, object behavior, and game-design support.

## Work

| Item | Status | Notes |
|---|---|---|
| Course record | Done | `sources\mit\ocw\8-01sc-classical-mechanics\work.json`. |
| Custody record | Done | Captures OCW policy, online textbook status, assignments, weekly lessons, and media boundary. |
| Inventory | Done | Records course weeks, lessons, problem sets, textbook chapters, and extraction targets. |
| FLETCH registry | Done | `fontes-mit-8-01sc-surfaces` validates six course-level source surfaces. |

## Validation commands

```powershell
git grep -n "8.01SC\|Classical Mechanics\|Dourmashkin" -- sources .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-8-01sc-surfaces.json
git status --short
```
