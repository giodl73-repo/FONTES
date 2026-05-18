# Pulse 26 - MIT 6.4210 robotic-manipulation boundary map

## Objective

Add MIT 6.4210 as the robotics/perception-to-action leg of the MIT AI source
slice while preserving external-surface rights boundaries.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added 6.4210 source records under `sources\mit\ocw\6-4210-robotic-manipulation`. |
| Surface table | Done | `sources\tables\mit-6-4210-surfaces.json` records five mapped surfaces. |
| FLETCH registry | Done | `.fletch\registries\fontes-mit-6-4210-surfaces.json` records five source surfaces. |
| PROOF ledger | Done | Added a work-level ledger row for 6.4210. |

## Boundary notes

- The OCW course page is extractable as metadata under MIT OCW terms.
- The authoritative textbook site, lecture playlist, homework software stack, and
  cloud/simulation resources are external or pending-inventory surfaces.
- No textbook, media, or software bytes are bundled.

## Validation commands

```powershell
Get-Content sources\tables\mit-6-4210-surfaces.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-mit-6-4210-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
