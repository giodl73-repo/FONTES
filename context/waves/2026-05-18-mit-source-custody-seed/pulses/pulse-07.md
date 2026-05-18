# Pulse 07 - MIT 6.006 source map

## Objective

Expand the CS/software priority seed by mapping MIT 6.006 course-level source
surfaces and preserving mixed-resource license boundaries.

## Work

| Item | Status | Notes |
|---|---|---|
| Course record | Done | `sources\mit\ocw\6-006-introduction-to-algorithms\work.json`. |
| Custody record | Done | Captures CC BY-NC-SA page policy, CLRS metadata-only boundary, and assignment exclusions. |
| Inventory | Done | Records surface policies, resource counts, and portfolio relevance. |
| FLETCH registry | Done | `fontes-mit-6-006-surfaces` validates six course-level source surfaces. |

## Validation commands

```powershell
git grep -n "6.006\|excluded from the Creative Commons license\|CLRS" -- sources .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-006-surfaces.json
git status --short
```
