# FONTES Invariants

## FONTES-I-01: Source Rows Carry Fetch Policy

**Status:** ENFORCED

**Invariant:** Source and registry records expose fetch-policy state before
they are used for acquisition, proof, PEBBLE, or CROP work.

**Why it matters:** Without fetch policy, source identity can become accidental
permission to cache or redistribute.

**Evidence:** `schemas/fonte.source.v1.json`, `sources`, and
`.fletch/registries`.

**Enforcement:** `git grep -n "fetch_policy" -- sources .fletch\registries`.

## FONTES-I-02: Metadata-Only Sources Stay Non-Transferable

**Status:** ENFORCED

**Invariant:** `metadata_only` source rows may support source identity or gap
status but not extracted text transfer, bundle claims, or downstream content
packs.

**Why it matters:** FONTES is valuable only if it keeps rights boundaries louder
than acquisition convenience.

**Evidence:** `sources/mit/README.md`, `sources/mit/ocw/TERMS.md`, and
`.proof/sources/fontes-course-source-ledger.source.md`.

**Enforcement:** Custody files and PROOF ledger text distinguish source identity
from transferable extracted text.

## FONTES-I-03: Raw Cache Objects Are Not Committed

**Status:** VERIFIED

**Invariant:** `.fletch/cache` objects are not committed to the FONTES repo.

**Why it matters:** Source custody can be correct in metadata while raw cached
content still leaks through the repository.

**Evidence:** `README.md`, `PRODUCT_PLAN.md`, and `.gitignore`.

**Test:** `git ls-files .fletch/cache`.

## FONTES-I-04: Publisher Outputs Cite Source Ledgers

**Status:** ENFORCED

**Invariant:** PEBBLE nodes and CROP views must cite source-ledger or custody
rows instead of ad hoc prose when representing source status.

**Why it matters:** Generated publisher artifacts are easy to trust more than
the underlying rights and custody record supports.

**Evidence:** `.proof/sources/fontes-course-source-ledger.source.md`, `.pebble`,
and `.crop`.

**Enforcement:** PROOF source ledger rule requires PEBBLE and CROP artifacts to
cite ledger rows.

## FONTES-I-05: Downstream Contracts Remain Unpromoted

**Status:** VERIFIED

**Invariant:** FONTES remains a specialist source-custody corpus, not a runtime
dependency, until downstream artifact contracts stabilize.

**Why it matters:** Planned MAXIM, CANON, CROP, PEBBLE, SLICE, or ROLES
relationships do not prove compatibility by themselves.

**Evidence:** `README.md`, `PRODUCT_PLAN.md`, and `context/waves/PHASES.md`.

**Test:** `git grep -n "not a runtime dependency\|planned consumers do not establish that contract" -- README.md PRODUCT_PLAN.md`.
