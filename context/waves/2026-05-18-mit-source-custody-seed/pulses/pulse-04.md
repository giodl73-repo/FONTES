# Pulse 04 - Open education family intake

## Objective

Broaden FONTES beyond MIT by registering source-family custody records for Open
Yale Courses, Stanford Engineering Everywhere, Open Michigan, UC Berkeley OCW,
and Open Education Global.

## Work

| Family | Status | Policy |
|---|---|---|
| Open Yale Courses | Seeded | CC BY-NC-SA 3.0 for most Yale-owned course materials; third-party content review required. |
| Stanford Engineering Everywhere | Seeded | CC BY-NC-SA 4.0 unless otherwise indicated; Stanford Introduction to Logic excluded. |
| Open Michigan | Seeded | `license_review` until authoritative terms are captured. |
| UC Berkeley OCW | Seeded | `license_review` until authoritative terms are captured. |
| Open Education Global | Seeded | `metadata_only` discovery/community hub. |

## Validation commands

```powershell
git grep -n "Open Yale Courses\|Stanford Engineering Everywhere\|Open Michigan\|UC Berkeley\|Open Education Global" -- sources .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-open-education-families.json
git status --short
```
