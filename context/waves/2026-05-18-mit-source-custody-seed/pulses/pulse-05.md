# Pulse 05 - Acquisition priorities and Open Michigan clearance

## Objective

Make the next-source priority explicit and clear Open Michigan at the
source-family level.

## Work

| Item | Status | Notes |
|---|---|---|
| Acquisition priorities | Done | CS/software, AI/ML, mathematics, physics for objects, chemistry for real items, then games-design support domains. |
| Open Michigan terms | Done | Default site content is CC BY 3.0 unless otherwise noted; OER items carry item-level Creative Commons licenses. |
| Open Michigan registry | Done | Family registry promoted from `license_review` to `derived_text_allowed` for default site content. |
| Game-design bridge | Done | Source domains for object behavior, real items, worlds/hazards, players/puzzles, and culture/story are recorded. |

## Validation commands

```powershell
git grep -n "physics for objects\|chemistry for real items\|Open.Michigan" -- sources PRODUCT_PLAN.md
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-open-education-families.json
git status --short
```
