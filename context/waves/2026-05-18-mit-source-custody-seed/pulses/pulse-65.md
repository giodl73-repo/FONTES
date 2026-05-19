# Pulse 65 - MIT 18.335J numerical methods source map

## Objective

Add MIT 18.335J Introduction to Numerical Methods as an advanced
numerical-methods support source covering numerical linear algebra,
floating-point arithmetic, backward error, conditioning, stability, sparse and
dense solvers, Krylov/preconditioning methods, optimization, adjoints,
quadrature, FFTs, memory hierarchy, and numerical software concerns.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 18.335J source records under `sources\mit\ocw\18-335j-introduction-numerical-methods`. |
| Surface table | Done | Added `sources\tables\mit-18-335j-surfaces.json` with ten mapped source surfaces. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-mit-18-335j-surfaces.json` with stable URL rows and a normalized-table row. |
| PROOF ledger | Done | Added a work-level ledger row for 18.335J and updated the ledger summary count. |

## Boundary notes

- OCW-owned course page, syllabus, resource index, representative lecture pages,
  handouts, problem sets, exam PDFs, solutions, and download page are mapped
  under MIT OCW CC BY-NC-SA 4.0.
- Julia notebooks, GitHub/nbviewer content, external texts, final project
  implementations, external diagrams, and third-party resource links remain
  metadata-only or local-cache boundaries.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-18-335j-surfaces.json
Get-Content sources\tables\mit-18-335j-surfaces.json -Raw | ConvertFrom-Json
Get-Content sources\tables\proof-source-ledger.json -Raw | ConvertFrom-Json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
