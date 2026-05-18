# Pulse 17 - MIT 6.036 rights boundary

## Objective

Map MIT 6.036 as a mixed OCW/Open Learning Library source and prevent the AI/ML
pipeline from treating OLL materials as extractable before rights are cleared.

## Work

| Item | Status | Notes |
|---|---|---|
| Course record | Done | Updated `work.json` with OCW vs OLL source surfaces. |
| Custody record | Done | Captures OLL all-rights-reserved statement and extraction block. |
| Inventory | Done | Adds mapped facts, boundaries, and extraction targets. |
| Surface table | Done | `sources\tables\mit-6-036-surfaces.json` records the OCW page, OLL about page, and blocked OLL materials. |
| FLETCH registry | Done | `fontes-mit-6-036-surfaces` has two source surfaces. |
| PROOF ledger | Done | 6.036 now resolves from pending inventory to metadata-only/blocked-rights. |

## Validation commands

```powershell
Get-Content sources\tables\mit-6-036-surfaces.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-036-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
