# Pulse 02 - OCW license clearance and 18.06 source expansion

## Objective

Record the MIT OpenCourseWare terms page as the authoritative rights source and
promote OCW-owned course pages/materials from generic review to explicit
CC BY-NC-SA 4.0 source policy.

## Work

| Item | Status | Notes |
|---|---|---|
| OCW terms | Done | `sources\mit\ocw\TERMS.md` records CC BY-NC-SA 4.0, attribution, noncommercial, share-alike, and MIT-name constraints. |
| 18.06 source map | Expanded | Syllabus, readings, video gallery, and course download records now have explicit policy. |
| AI/ML OCW policy | Updated | 6.034 and 6.036 course pages inherit OCW terms for OCW-owned page text. |
| Textbook boundary | Preserved | Strang, Winston, and non-redistributable AI books remain metadata-only or license-review. |
| FLETCH registry | Updated | OCW terms and expanded 18.06 records are included with license metadata. |

## Validation commands

```powershell
git grep -n "CC BY-NC-SA" -- sources .proof README.md PRODUCT_PLAN.md
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-seed.json
git status --short
```
