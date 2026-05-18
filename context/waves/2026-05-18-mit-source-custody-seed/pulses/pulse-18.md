# Pulse 18 - Open Yale priority course normalized expansion

## Objective

Extend the PHYS 200 normalized Open Yale source-custody pattern to the remaining priority Open Yale courses in the seed list.

## Work

- PHYS 201: created work, custody, inventory, 27-row session table, FLETCH registry, and PROOF ledger row.
- CHEM 125a: created work, custody, inventory, 41-row session table, FLETCH registry, and PROOF ledger row.
- CHEM 125b: created work, custody, inventory, 38-row session table, FLETCH registry, and PROOF ledger row.
- PROOF ledger summary now counts 16 source records and 13 candidate rows.

## Boundary notes

- OYC-owned course pages, lecture pages, transcript text, and listed exam pages stay `derived_text_allowed` under the captured OYC terms.
- OYC media remains local-cache only.
- Assigned/optional textbooks, Professor McBride's on-campus resource site, and any third-party lecture credits remain `metadata_only` or `license_review` until resource-level terms are captured.
- CHEM 125b's OYC session list exposes lectures only; no OYC exam session rows were listed on the fetched course page.

## Validation commands

```powershell
Get-Content sources\tables\open-yale-phys-201-sessions.json -Raw | ConvertFrom-Json
Get-Content sources\tables\open-yale-chem-125a-sessions.json -Raw | ConvertFrom-Json
Get-Content sources\tables\open-yale-chem-125b-sessions.json -Raw | ConvertFrom-Json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-open-yale-phys-201-surfaces.json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-open-yale-chem-125a-surfaces.json
cargo run --manifest-path ..\..\tools-infra\fletch\Cargo.toml --bin fletch-cli --quiet -- registry validate --file .fletch\registries\fontes-open-yale-chem-125b-surfaces.json
..\..\tools-infra\proof\target\debug\proof.exe check .proof --no-fail --by-code
git diff --check
```
