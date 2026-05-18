# Pulse 16 - Open Yale PHYS 200 normalized pilot

## Objective

Map Open Yale PHYS 200 as the first normalized Open Yale course pilot, using a
table-first pattern that a follow-on agent can repeat across the school.

## Work

| Item | Status | Notes |
|---|---|---|
| Course record | Done | `sources\open-education\open-yale-courses\phys-200-fundamentals-of-physics-i\work.json`. |
| Custody record | Done | Captures OYC CC BY-NC-SA 3.0 policy, third-party boundary, media boundary, and assigned-text boundary. |
| Inventory | Done | Records course surfaces, counts, boundaries, and extraction targets. |
| Session table | Done | `sources\tables\open-yale-phys-200-sessions.json` has 24 normalized OYC session rows. |
| Session schema | Done | `schemas\fonte.course-sessions.v1.json` defines the normalized session-table contract. |
| FLETCH registry | Done | `fontes-open-yale-phys-200-surfaces` captures five course-level surfaces. |
| PROOF ledger | Done | `proof-source-ledger.json` now includes PHYS 200 as a candidate row. |

## Scaling note

This is the template for school-level expansion: one course gets a clean
source map, normalized session table, FLETCH registry, and PROOF ledger row;
then agents can repeat that exact pattern for the rest of the source family.

## Validation commands

```powershell
Get-Content sources\tables\open-yale-phys-200-sessions.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-open-yale-phys-200-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
