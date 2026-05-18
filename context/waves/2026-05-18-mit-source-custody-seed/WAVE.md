# MIT Source-Custody Seed

## Goal

Create FONTES as the portfolio's source-custody Knowledge Systems repo and prove
an MIT-first, license-aware pipeline from registry records to FLETCH, PROOF,
PEBBLE, and CROP artifacts.

## Scope

| Area | Included |
|---|---|
| 18.06 Linear Algebra | OCW course page, readings table, source groups, and textbook custody boundary. |
| AI/ML OCW | 6.034 Artificial Intelligence, 6.036 Introduction to Machine Learning, and related MIT learning sources. |
| AI books | Goodfellow/Bengio/Courville Deep Learning, Charniak Introduction to Deep Learning, and other MIT Press/open candidates after license review. |
| Publisher path | FLETCH registry, PROOF custody records, PEBBLE placeholders, and CROP view recipes. |

## Out of scope

- Bulk mirroring all MIT-hosted or MIT-used books.
- Committing raw PDFs or HTML book text without explicit license clearance.
- Generating MAXIM guide prose.
- Treating assigned commercial textbooks as OCW-licensed materials.

## Pulses

| Pulse | Title | Validation |
|---:|---|---|
| 1 | Repo foundation and intake | `git grep -n "FONTES" -- README.md PRODUCT_PLAN.md context\waves\PHASES.md` |
| 2 | 18.06 complete source map | `git grep -n "18.06" -- sources .proof .fletch` |
| 3 | AI book/source map | `git grep -n "artificial-intelligence\\|deep-learning\\|machine-learning" -- sources .proof .fletch` |
| 4 | FLETCH registry gate | `git grep -n "fetch_policy" -- sources .fletch\registries` |
| 5 | PROOF/PEBBLE/CROP publisher loop | `git grep -n "fontes-mit-seed" -- .proof .pebble .crop` |

## Decision log

| Date | Decision |
|---|---|
| 2026-05-18 | FONTES is created only as a TRACKER submodule at `repos\knowledge-systems\fontes`; no standalone `C:\src\FONTES` checkout is used. |
| 2026-05-18 | The first MIT pass records source custody and fetch policy before downloading; online availability alone is not treated as redistribution permission. |
