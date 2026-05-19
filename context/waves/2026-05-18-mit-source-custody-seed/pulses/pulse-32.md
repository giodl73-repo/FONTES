# Pulse 32 - MIT Press deep-learning book boundaries

## Objective

Move the MIT Press / author-hosted deep-learning book seeds out of the broad MIT
seed registry into dedicated source-surface registries with explicit
metadata-only and license-review boundaries.

## Work

| Item | Status | Notes |
|---|---|---|
| Book inventories | Done | Added inventory records for Goodfellow/Bengio/Courville _Deep Learning_ and Charniak _Introduction to Deep Learning_. |
| FLETCH registries | Done | Added dedicated MIT Press book registries under `.fletch\registries`. |
| PROOF ledger | Done | Updated work-level ledger rows to point at the dedicated inventories and registries. |

## Boundary notes

- _Deep Learning_ remains metadata-only because the official site is
  free-to-read but not a redistributable corpus.
- _Introduction to Deep Learning_ remains in license review until an
  authoritative open-access or reuse statement is recorded.
- No book body text, PDFs, ebook files, or derived text chunks were cached,
  bundled, indexed, or committed.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-press-deep-learning-surfaces.json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-press-introduction-to-deep-learning-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
