# Pulse 68 - Microsoft Analysis Services OLAP source map

## Objective

Add Microsoft Learn SQL Server Analysis Services multidimensional documentation
as a vendor-canonical OLAP cube implementation anchor. This extends the
data-warehouse/cube slice beyond Kimball and Apache Kylin with mature enterprise
terminology for cubes, dimensions, measure groups, dimension usage,
relationship types, aggregations, and partitions.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added Microsoft Learn Analysis Services OLAP source records under `sources\open-education\microsoft-learn\analysis-services-olap`. |
| Surface table | Done | Added `sources\tables\microsoft-analysis-services-olap-surfaces.json` with seven mapped documentation and boundary surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-microsoft-analysis-services-olap-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row and updated candidate/source-identity counts. |

## Boundary notes

- Microsoft Learn documentation text is treated as `derived_text_allowed` with
  attribution/terms awareness.
- Screenshots, diagrams, UI captures, tutorial sample databases, XMLA/MDX/code
  snippets, downloadable payloads, and GitHub documentation source remain
  boundary-checked.
- This pulse maps SSAS multidimensional/SQL Server Analysis Services pages, not
  Azure Analysis Services or Power BI/Fabric semantic model surfaces.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-microsoft-analysis-services-olap-surfaces.json
Get-Content sources\tables\microsoft-analysis-services-olap-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
