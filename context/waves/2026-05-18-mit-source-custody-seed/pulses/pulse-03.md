# Pulse 03 - 18.06 OCW source map

## Objective

Promote the 18.06 course-level source map from seed records to a complete
OCW-surface inventory with explicit policy for assignments, exams, instructor
insights, videos, course download, and mixed related resources.

## Work

| Item | Status | Notes |
|---|---|---|
| Assignments | Done | Ten problem sets and solution links are represented as an OCW page source. |
| Exams | Done | Three exams, final exam, and solution links are represented as an OCW page source. |
| Instructor insights | Done | Teaching context, assessment, enrollment, weekly time, and course-team roles recorded. |
| Related resources | Done | Page is registered as mixed-license and requires child-resource review. |
| Inventory page | Done | `sources\mit\ocw\18-06-linear-algebra\inventory.md` records surfaces, counts, and next extraction target. |
| FLETCH registry | Done | Registry has first-class 18.06 fletches for the new source surfaces. |

## Validation commands

```powershell
git grep -n "18.06" -- sources .proof .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-seed.json
git status --short
```
