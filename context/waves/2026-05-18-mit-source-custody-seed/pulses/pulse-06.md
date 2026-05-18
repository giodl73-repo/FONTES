# Pulse 06 - Priority course seed

## Objective

Seed the first course-level acquisition targets across CS/software, AI/ML,
mathematics, physics for objects, and chemistry for real items.

## Work

| Domain | Seeded courses |
|---|---|
| CS/software | MIT 6.006 Introduction to Algorithms |
| AI/ML | Stanford SEE CS229 Machine Learning; MIT 6.034 and 6.036 already remain in the MIT seed |
| Mathematics | MIT 18.065, Stanford SEE EE263, Stanford SEE EE364A |
| Physics for objects | MIT 8.01SC, Open Yale PHYS 200, Open Yale PHYS 201 |
| Chemistry for real items | MIT 5.111SC, Open Yale CHEM 125a, Open Yale CHEM 125b |

## Validation commands

```powershell
git grep -n "physics-for-objects\|chemistry-for-real-items\|cs-software\|ai-ml" -- sources .fletch
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-priority-course-seed.json
git status --short
```
