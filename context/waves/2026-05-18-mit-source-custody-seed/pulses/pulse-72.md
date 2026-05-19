# Pulse 72 - Apache Calcite query planning source map

## Objective

Continue the FONTES expression-engine research queue with Apache Calcite as the
planner/compiler precedent for Slice/LATTICE. Calcite anchors relational
algebra, SQL parsing and validation, cost-based optimization, planner rules,
adapter boundaries, model files, lattices, materialized-view rewrites, and
streaming SQL.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added Apache Calcite source records under `sources\open-source\apache-calcite\query-planning`. |
| Research findings | Done | Documented six findings in `custody.md` with URLs, observations, implications, and confidence. |
| Surface table | Done | Added `sources\tables\apache-calcite-query-planning-surfaces.json` with twelve mapped documentation and boundary surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-apache-calcite-query-planning-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row and updated candidate/source-identity counts. |

## Boundary notes

- Apache Calcite documentation pages are treated as `derived_text_allowed`
  under the Apache 2.0 documentation/source posture.
- Source repository files, release tarballs, generated Javadocs, example code,
  adapter implementations, tests, dependencies, logos, and binary artifacts
  remain boundary-checked for provenance, notices, checksums, and redistribution.
- This pulse does not decide that Slice/LATTICE should depend on Calcite at
  runtime; it anchors Calcite as a design and vocabulary precedent.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-apache-calcite-query-planning-surfaces.json
Get-Content sources\tables\apache-calcite-query-planning-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
