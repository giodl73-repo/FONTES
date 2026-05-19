# Pulse 38 - FONTES ledger alignment

## Objective

Verify the current FONTES work records, proof-source ledger rows, FLETCH
registries, and normalized source tables agree after the MIT, Open Yale, and
Stanford SEE registry-filling passes.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/ledger coverage | Done | Confirmed all 27 `work.json` records have proof-ledger rows and no stale ledger rows exist. |
| Registry linkage | Done | Updated the MIT 18.06 ledger row to point at its dedicated `.fletch\registries\fontes-mit-18-06-surfaces.json` registry instead of the broad MIT seed registry. |
| Path audit | Done | Confirmed ledger work, custody, inventory, registry, and proof-record paths resolve. |

## Boundary notes

- This pulse changes ledger linkage only; it does not add new source URLs or
  alter any fetch policy.
- Broad seed registries remain useful as discovery seeds, but work-level ledger
  rows should point at the most specific dedicated registry when one exists.

## Validation commands

```powershell
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-18-06-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
