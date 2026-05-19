# Pulse 37 - Stanford SEE surface tables

## Objective

Fill the Stanford Engineering Everywhere class registries with normalized source
surface tables so CS229, EE263, and EE364A have the same table/registry linkage
as the MIT and Open Yale classes.

## Work

| Item | Status | Notes |
|---|---|---|
| Surface tables | Done | Added `stanford-see-cs229-surfaces.json`, `stanford-see-ee263-surfaces.json`, and `stanford-see-ee364a-surfaces.json`. |
| Registry table rows | Done | Added normalized-table rows to the three Stanford SEE registries. |
| Stable surface rows | Done | Added or normalized stable source-surface rows with `work_id`, `table_record`, `row_id`, and `row_kind` metadata. |

## Boundary notes

- SEE-owned non-video materials remain `bundle_allowed` under the recorded SEE
  CC BY-NC-SA 4.0 family policy unless otherwise indicated.
- Course pages remain `derived_text_allowed`.
- Lecture video media stay local-cache only and out of git.
- External resources, textbooks, tutorials, and third-party links remain
  `license_review` until separately cleared.

## Validation commands

```powershell
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file <stanford-see-registry>
Get-Content sources\tables\stanford-see-*-surfaces.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry search --index .fletch\indexes\fontes-stanford-see-surfaces.json --tag stable-url --limit 20
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
