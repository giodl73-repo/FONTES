# Pulse 71 - Microsoft MDX cube query source map

## Objective

Start the FONTES expression-engine research queue with MDX, the classic cube
query language. This source map gives Slice/LATTICE a contrast point to DAX:
cube cellsets, axes, slicer axes, members, tuples, sets, calculated members,
named sets, cell calculations, and multidimensional SELECT syntax.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added Microsoft MDX source records under `sources\open-education\microsoft-learn\mdx-cube-query`. |
| Surface table | Done | Added `sources\tables\microsoft-mdx-cube-query-surfaces.json` with eleven mapped documentation and boundary surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-microsoft-mdx-cube-query-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row and updated candidate/source-identity counts. |

## Boundary notes

- Microsoft Learn MDX documentation pages are treated as `derived_text_allowed`
  with documentation terms and attribution awareness.
- MDX code examples, Adventure Works sample databases, screenshots, UI captures,
  downloadable tutorial assets, and local query traces remain boundary-checked.
- This pulse intentionally maps MDX before Calcite/dbt/Cube/LookML/Malloy so
  Slice can compare DAX-style measures against MDX-style axes, members, tuples,
  and sets.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-microsoft-mdx-cube-query-surfaces.json
Get-Content sources\tables\microsoft-mdx-cube-query-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
