# FONTES Principles

## FONTES-P-01: Source Custody Precedes Content Transfer

**Status:** ACTIVE

**Statement:** FONTES records source identity, rights posture, fetch policy,
access date, and custody status before any source body is fetched, cached,
bundled, or transferred.

**Decision rule:** Reject a new source or publisher artifact if it treats an
online URL as permission to mirror, cache, or redistribute source content.

**Evidence:** `README.md`, `PRODUCT_PLAN.md`, `sources/mit/README.md`, and
`sources/mit/ocw/TERMS.md`.

## FONTES-P-02: Fetch Policy Is A Rights Boundary

**Status:** ACTIVE

**Statement:** `derived_text_allowed`, `metadata_only`, and `license_review`
are source-custody states, not convenience labels for bulk acquisition.

**Decision rule:** Keep a source metadata-only or review-gated until the exact
resource, owner, terms, and child-material boundary justify stronger handling.

**Evidence:** `schemas/fonte.source.v1.json`, `sources/mit/ocw/TERMS.md`, and
`.fletch/registries`.

## FONTES-P-03: Publisher Artifacts Carry Custody, Not Authority

**Status:** ACTIVE

**Statement:** PROOF source records, PEBBLE packs, CROP views, and FLETCH
registries can carry custody evidence, but they do not certify source quality,
license clearance, citation sufficiency, or downstream factual claims.

**Decision rule:** Generated artifacts must cite FONTES source/custody rows and
retain fetch policy, rights notes, and downstream readiness status.

**Evidence:** `.proof/sources/fontes-course-source-ledger.source.md`,
`.pebble`, `.crop`, and `PRODUCT_PLAN.md`.

## FONTES-P-04: Consumers Own Their Interpretation

**Status:** ACTIVE

**Statement:** FONTES supplies source custody and context-pack candidates, while
MAXIM, CANON, and other downstream repos own authored prose, canonical identity,
knowledge claims, and compatibility proof.

**Decision rule:** A FONTES source row may support a downstream claim, but must
not decide that claim or imply the consumer has adopted a stable contract.

**Evidence:** `README.md`, `PRODUCT_PLAN.md`, and `context/waves/PHASES.md`.

## FONTES-P-05: Review Panels Must Be Existing Gates

**Status:** ACTIVE

**Statement:** ROLES-based source, license, citation, publisher, and consumer
panels count only when a repo-local `.roles` layer exists and is used by a
pulse.

**Decision rule:** Do not close source-custody or publication risks by citing
planned review. Cite existing role files, docs, schemas, ledgers, registries, or
validation commands.

**Evidence:** `.roles/ROLE.md`, `PRODUCT_PLAN.md`, and
`context/waves/PHASES.md`.
