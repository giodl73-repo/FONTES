# Pulse 01 - Repo foundation and intake

## Objective

Scaffold FONTES as a TRACKER-managed Knowledge Systems submodule with a
MIT-first source-custody seed, dependency placement, and validation contract.

## Work

| Item | Status | Notes |
|---|---|---|
| Submodule path | Done | FONTES lives at `repos\knowledge-systems\fontes`. |
| Product docs | Done | README and PRODUCT_PLAN define source-custody boundaries. |
| Wave docs | Done | MIT Source-Custody Seed wave records the first five pulses. |
| Source seed | Done | 18.06, 6.034, 6.036, and initial AI book records are registered. |
| Generated layers | Seeded | FLETCH, PROOF, PEBBLE, and CROP paths are present or represented by placeholders. |

## Validation commands

```powershell
git grep -n "FONTES" -- README.md PRODUCT_PLAN.md context\waves\PHASES.md
git grep -n "fetch_policy" -- sources .fletch\registries
git status --short
```
