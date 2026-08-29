# Pulse 194 - PITFALL adoption

## Goal

Add repo-local PITFALL doctrine for FONTES so source-custody, rights, fetch
policy, publisher, and downstream-consumer risks are durable.

## Change

- Added `.pitfall/PITFALL.md`.
- Added 5 principles in `.pitfall/PRINCIPLES.md`.
- Added 5 invariants in `.pitfall/INVARIANTS.md`.
- Added 5 pitfalls in `.pitfall/PITFALLS.md`.

## Findings

- `FONTES-PF-01`, `FONTES-PF-02`, `FONTES-PF-03`, and `FONTES-PF-04` remain
  open repo-local risks.
- `FONTES-PF-05` is mitigated by the README and product-plan reuse boundary
  that keeps FONTES as a specialist source-custody corpus until versioned
  downstream contracts and real consumer manifests exist.
- No GitHub issue was filed because the current risks are structural and
  repo-local. File one only if a source acquisition batch, publisher release, or
  downstream adoption schedule needs public tracking.

## Validation

```powershell
C:\Users\giodl\.cargo\bin\cargo.exe run --manifest-path C:\src\TRACKER\repos\standards-protocols\pitfall\Cargo.toml -q -p pitfall-cli -- validate C:\src\TRACKER\repos\knowledge-systems\fontes --format json
python C:\src\TRACKER\repos\standards-protocols\pitfall\tools\check_pitfall.py C:\src\TRACKER\repos\knowledge-systems\fontes
git grep -n "FONTES" -- README.md PRODUCT_PLAN.md context\waves\PHASES.md
git grep -n "fetch_policy" -- sources .fletch\registries
git ls-files .fletch/cache
git grep -n "not a runtime dependency\|planned consumers do not establish that contract" -- README.md PRODUCT_PLAN.md
git diff --check
```
