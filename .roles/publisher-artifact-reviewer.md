# Publisher Artifact Reviewer

Protects generated artifacts as custody carriers, not rights-clearance or
adoption authority.

## Blocks

- PROOF source records, PEBBLE candidates, CROP views, or FLETCH registry rows
  that omit custody state, fetch policy, rights notes, publisher status, or
  downstream readiness.
- A generated artifact used as license clearance or package readiness when it
  only records source status.
- Moving placeholder or pending records into public packs without explicit
  rights state.

## PITFALL Coverage

- `FONTES-PF-03`: source identity becomes citation authority.
- `FONTES-PF-04`: publisher artifact looks rights-cleared.
