# Pulse 70 - Microsoft DAX, Power BI, Power Pivot, and Tabular source map

## Objective

Add the Microsoft public semantic-model stack as the next data-warehouse source
anchor: DAX, Power BI semantic model guidance, Power BI star-schema and
relationship guidance, Power BI measures, Power Pivot in Excel, and Analysis
Services Tabular models.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added Microsoft DAX/Power BI/Power Pivot/Tabular source records under `sources\open-education\microsoft-learn\dax-powerbi-tabular`. |
| Surface table | Done | Added `sources\tables\microsoft-dax-powerbi-tabular-surfaces.json` with seventeen mapped documentation and boundary surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-microsoft-dax-powerbi-tabular-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row and updated candidate/source-identity counts. |

## Boundary notes

- Microsoft Learn DAX, Power BI, and Analysis Services Tabular pages are treated
  as `derived_text_allowed` with documentation terms and attribution awareness.
- Microsoft Learn DAX function, syntax, operator, query, variables, and filter
  argument guidance pages are included as DAX-focused derived-text surfaces.
- Microsoft Support Power Pivot pages are source identities until support-site
  terms are reviewed for derived extraction.
- SQLBI DAX Guide, SQLBI DAX Patterns, and DAX Studio are source identities only
  until their terms, examples, downloads, docs, and tool artifacts are reviewed.
- Screenshots, animations, UI captures, installer files, sample workbooks,
  model files, downloadable payloads, code snippets, and internal Microsoft
  assets remain boundary-checked.
- Public downloads are `local_cache_allowed` only after license, security,
  redistribution, and file review.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-microsoft-dax-powerbi-tabular-surfaces.json
Get-Content sources\tables\microsoft-dax-powerbi-tabular-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
