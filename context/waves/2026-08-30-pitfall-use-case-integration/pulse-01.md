# FONTES PITFALL Use-Case Integration Pulse 01

Date: 2026-08-30

## Focus

Second-pass PITFALL review for source-custody user-mode failures: visible
online source material, fetch/cache labels, generated artifacts, citation
authority, and downstream adoption.

## Findings

- Existing PITFALL entries already capture the highest-risk source-publication
  mistakes, and `tests/test_fontes_pitfall_policy.ps1` already exercises the
  open pitfalls.
- The gap was role integration: FONTES still described ROLES as planned, even
  though the PITFALL owners need concrete source-custody, fetch-policy,
  publisher-artifact, citation-authority, and consumer-boundary reviewers.
- The current README reuse boundary is sound: FONTES is a source-custody corpus,
  not a runtime dependency or adopted downstream contract.

## Integration

- Added `.roles/ROLE.md` and five focused role files.
- Updated PITFALL evidence to cite repo-local roles.
- Updated `FONTES-P-05` from planned-panel warning to an existing-role gate.
- Extended `tests/test_fontes_pitfall_policy.ps1` to require role coverage.

## Validation

- Passed: `pwsh -NoProfile -File tests/test_fontes_pitfall_policy.ps1`
- Passed: `git grep -n "FONTES" -- README.md PRODUCT_PLAN.md context\waves\PHASES.md`
- Passed: `git grep -n "fetch_policy" -- sources .fletch\registries`
- Passed: PITFALL CLI
- Passed: Python PITFALL checker
- Passed: `git diff --check`
