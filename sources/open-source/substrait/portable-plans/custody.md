# Substrait Portable Query Plan Custody

## Research question

How should FONTES anchor Substrait as a portable query-plan precedent for
Slice/LATTICE if Slice emits executable or exchangeable plans rather than only
SQL strings?

## Current custody decision

Substrait public specification pages are mapped as `derived_text_allowed` with
open-source specification/source posture. The repository, protobuf definitions,
YAML extension files, examples, generated docs, test data, and release artifacts
remain boundary-checked for provenance, notices, checksums, and redistribution
before local caching.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-SUBSTRAIT-01 | `https://substrait.io/` | Substrait is a format for structured-data compute operations intended for interoperability across languages and systems. | Slice can treat Substrait as the portable-plan precedent if plans need to move between frontends and engines. | High |
| FONTES-SUBSTRAIT-02 | `https://substrait.io/spec/specification/` | The spec covers types, expressions, functions, relations, logical relations, and serializations. | Slice IR should make explicit whether it covers expressions only or full relation trees. | High |
| FONTES-SUBSTRAIT-03 | `https://substrait.io/tutorial/sql_to_substrait/` | A SQL query is represented as a logical plan with types, schemas, expressions, extensions, and relation trees; the tutorial emphasizes Substrait is not SQL but logical plans. | A Slice compiler should preserve a distinction between user syntax and logical plan exchange. | High |
| FONTES-SUBSTRAIT-04 | `https://substrait.io/extensions/` | Substrait uses extension YAML/URNs for custom types and functions while maintaining interoperability. | LATTICE can model engine-specific functions as extensions rather than hardcoding every backend capability. | High |
| FONTES-SUBSTRAIT-05 | `https://substrait.io/serialization/binary_serialization/` | Protobuf Plan messages include versions, extension declarations, relation trees, advanced extensions, dynamic parameters, aliases, and execution behavior. | Persistent plan artifacts need versioning, extension manifests, and parameter bindings. | High |
| FONTES-SUBSTRAIT-06 | `https://substrait.io/tools/producer_tools/` | Isthmus serializes SQL to Substrait Protobuf via Calcite. | Calcite and Substrait form a natural chain for SQL parsing/planning to portable execution. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FONTES | Keep Substrait spec surfaces searchable through FLETCH and PROOF. | Do not cache protobuf/source artifacts in this pulse. |
| Prototype behind boundary | LATTICE / Slice | Compare Slice plan needs against Substrait types, relations, expressions, extensions, serialization, and versioning. | Do not require Substrait compatibility before a local Slice IR exists. |
| Defer | FONTES | Add source-level custody only when implementation needs exact protobuf/YAML files. | Do not mirror generated specs, releases, or test corpora. |
