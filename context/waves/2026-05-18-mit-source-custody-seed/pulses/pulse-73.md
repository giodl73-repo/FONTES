# Pulse 73 - dbt Semantic Layer and MetricFlow source map

## Objective

Continue the FONTES expression-engine research queue with dbt Semantic Layer and
MetricFlow as the modern metrics/semantic-model precedent. This source map
anchors semantic models, entities, dimensions, measures, metric types, join
logic, saved queries, exports, architecture, and MetricFlow dataflow-plan SQL
generation.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added dbt Semantic Layer and MetricFlow source records under `sources\open-source\dbt-labs\semantic-layer-metricflow`. |
| Research findings | Done | Documented six findings in `custody.md` with URLs, observations, implications, and confidence. |
| Surface table | Done | Added `sources\tables\dbt-semantic-layer-metricflow-surfaces.json` with twelve mapped documentation and source-identity surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-dbt-semantic-layer-metricflow-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a source-identity work-level ledger row and updated source-identity counts. |

## Boundary notes

- dbt documentation pages are mapped as `metadata_only` pending documentation
  reuse-terms review.
- MetricFlow repository identity is mapped under its Apache 2.0 license posture.
- Screenshots, diagrams, videos, pricing/tier details, generated docs, code
  examples, package artifacts, dependency files, and release payloads remain
  boundary-checked.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-dbt-semantic-layer-metricflow-surfaces.json
Get-Content sources\tables\dbt-semantic-layer-metricflow-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
