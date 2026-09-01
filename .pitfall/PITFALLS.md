# FONTES Pitfalls

## FONTES-PF-01: Online Source Becomes Mirrorable Content

**Pattern:** A public course page, author-hosted text, book listing, PDF link,
assignment bundle, media file, or third-party reading is treated as cacheable or
redistributable because it is visible online.

**Domain:** Source records, custody files, FLETCH registries, PEBBLE packs, CROP
views, and PROOF source ledgers.

**Detection difficulty:** Discovery and acquisition happen next to each other,
so a useful URL can quietly become a download plan before rights are reviewed.

**Actor:** A maintainer, source-expansion agent, or downstream packager adding a
new educational source to FONTES.

**Task:** Register a course page, reading list, linked file, book, or resource
group while deciding whether the material may be fetched, cached, bundled, or
kept metadata-only.

**Surface:** `sources/**/work.json`, `sources/**/custody.md`,
`sources/tables/*.json`, `.fletch/registries`, and generated PROOF source
ledgers.

**Likely mistake:** The maintainer treats a URL that is visible in a browser as
content FONTES may mirror or redistribute.

**Consequence:** FONTES can turn source discovery into unauthorized copying,
and downstream PEBBLE/CROP/MAXIM consumers can inherit a rights mistake as if
it were source custody.

**Owner:** FONTES owns source-policy and custody labels; FLETCH owns generic
fetch/cache mechanics; downstream consumers must not reinterpret visibility as
redistribution permission.

**Structural solution:** Require exact fetch policy, rights posture, owner,
child-resource boundary, and a machine-readable source-boundary contract before
fetching, caching, bundling, or transferring source content.

**Evidence:** `docs/source-boundaries.v1.json`, `README.md`,
`PRODUCT_PLAN.md`, `sources/mit/README.md`, `sources/mit/ocw/TERMS.md`, and
`.roles/ROLE.md`.

**Test:** `tests/test_fontes_pitfall_policy.ps1` parses
`docs/source-boundaries.v1.json` and checks that repo-visible source policy
keeps online visibility separate from mirroring permission.

**Status:** MITIGATED

## FONTES-PF-02: Fetch Policy Becomes Bulk Cache Authorization

**Pattern:** A `derived_text_allowed` or source-family policy is generalized
across resource groups, supplemental PDFs, ZIPs, code, datasets, videos, books,
images, or external readings without resource-level review.

**Domain:** `.fletch/registries`, `sources/**/work.json`, source tables,
custody records, and acquisition priorities.

**Detection difficulty:** Policy labels are compact and machine-friendly, so a
coarse source-family decision can look like a precise resource decision.

**Actor:** A maintainer or automation step preparing a FLETCH registry or
acquisition batch from FONTES source rows.

**Task:** Convert source-family policy into per-resource fetch/cache behavior
for course pages, files, readings, videos, books, and external references.

**Surface:** `.fletch/registries`, `sources/**/work.json`,
`sources/tables/*.json`, `sources/ACQUISITION_PRIORITIES.md`, and custody
records.

**Likely mistake:** The operator reads one permissive source-family label as
authorization to cache every linked object in that family.

**Consequence:** A legally safe metadata/source map can become an unsafe bulk
cache plan, especially for assigned textbooks, linked third-party PDFs, videos,
and external readings.

**Owner:** FONTES owns per-resource policy and review state; FLETCH must obey
those labels rather than infer broader cache rights.

**Structural solution:** Keep metadata-only and license-review states visible,
require every FLETCH registry row to carry row-level `fetch_policy` and
`license` metadata, and promote fetch/cache handling only for the specific
resource class that has clear terms.

**Evidence:** `sources/mit/ocw/TERMS.md`,
`sources/ACQUISITION_PRIORITIES.md`, `schemas/fonte.source.v1.json`,
`.fletch/registries`, and `.roles/fetch-policy-reviewer.md`.

**Test:** `tests/test_fontes_pitfall_policy.ps1` checks that source and
registry surfaces keep fetch policy explicit, and parses every
`.fletch/registries/*.json` row to require paired `metadata.fetch_policy` and
`metadata.license` fields.

**Status:** MITIGATED

## FONTES-PF-03: Source Identity Becomes Citation Authority

**Pattern:** A source row or source-identity record is treated as proof that a
claim is correct, current, complete, cited enough, or ready for MAXIM/CANON
interpretation.

**Domain:** Source maps, proof ledgers, downstream knowledge claims, CROP
status views, and consumer handoffs.

**Detection difficulty:** Source custody is close to evidence, so a valid source
pointer can be overread as validated interpretation.

**Actor:** A downstream MAXIM, CANON, CROP, or research maintainer consuming a
FONTES source row.

**Task:** Use a source identity, ledger row, or custody note as input for a
claim, concept, guide, interpretation, or context pack.

**Surface:** `.proof/sources/fontes-course-source-ledger.source.md`,
`sources/tables/proof-source-ledger.json`, CROP status views, and downstream
handoff notes.

**Likely mistake:** The consumer treats a valid source pointer as proof that a
claim is correct, complete, current, or citation-sufficient.

**Consequence:** FONTES source custody can be mistaken for authored knowledge,
causing downstream repos to skip their own extraction, interpretation, or review
work.

**Owner:** FONTES owns source identity and custody; downstream knowledge repos
own extracted context, claim quality, citation sufficiency, and interpretation.

**Structural solution:** Separate source identity, source custody, extracted
context, citation sufficiency, and consumer-authored claims through a
machine-readable source-boundary contract.

**Evidence:** `docs/source-boundaries.v1.json`,
`.proof/sources/fontes-course-source-ledger.source.md`, `README.md`,
`PRODUCT_PLAN.md`, and `.roles/citation-authority-reviewer.md`.

**Test:** `tests/test_fontes_pitfall_policy.ps1` parses
`docs/source-boundaries.v1.json` and checks that source identity remains
distinct from downstream authored claims.

**Status:** MITIGATED

## FONTES-PF-04: Publisher Artifact Looks Rights-Cleared

**Pattern:** A PROOF source record, PEBBLE candidate, CROP view, or FLETCH
registry row is read as confirming license clearance or downstream package
readiness when it only records custody or placeholder status.

**Domain:** Publisher loop, generated records, source-ledger rows, package
candidates, and portfolio dependency reports.

**Detection difficulty:** Publisher artifacts look more official than raw source
notes, especially when generated into compact or machine-readable forms.

**Actor:** A publisher-loop maintainer, portfolio reviewer, or downstream repo
using PROOF, PEBBLE, CROP, or FLETCH artifacts.

**Task:** Decide whether a generated source record, candidate pack, registry
row, or corpus view is ready to publish or consume.

**Surface:** `.proof/sources/*.source.md`, `.pebble`, `.crop`,
`.fletch/registries`, `sources/tables/proof-source-ledger.json`, and
`context/waves/PHASES.md`.

**Likely mistake:** The reviewer reads a generated artifact as a rights-clear
or downstream-ready signal because it looks official and machine-readable.

**Consequence:** A placeholder or custody-only artifact can be promoted into a
public package or dependency handoff before rights state and extraction policy
are explicit.

**Owner:** FONTES owns custody state and publisher status; PROOF/PEBBLE/CROP
own artifact generation; downstream repos own adoption gates.

**Structural solution:** Repeat custody state, fetch policy, rights notes,
publisher status, downstream readiness, and blocked publisher-overclaim rules
in generated artifacts.

**Evidence:** `docs/source-boundaries.v1.json`,
`.proof/sources/fontes-course-source-ledger.source.md`, `.pebble`, `.crop`,
`context/waves/PHASES.md`, and
`.roles/publisher-artifact-reviewer.md`.

**Test:** `tests/test_fontes_pitfall_policy.ps1` parses
`docs/source-boundaries.v1.json` and checks that generated/publisher-facing
records preserve non-ready states.

**Status:** MITIGATED

## FONTES-PF-05: Planned Consumer Contract Becomes Adopted Dependency

**Pattern:** MAXIM, CANON, CROP, PEBBLE, SLICE, or ROLES planning text is
treated as a versioned artifact contract or downstream compatibility proof.

**Domain:** Dependency placement, reuse boundary, publisher path, consumer
handoffs, and portfolio adoption reports.

**Detection difficulty:** The pipeline is real enough to guide work, so planned
consumers can sound adopted before they have manifests, versioning, and
consumer-owned validation.

**Structural solution:** Keep FONTES as source-custody corpus until a bounded,
versioned artifact contract and real downstream manifest exist.

**Evidence:** `README.md`, `PRODUCT_PLAN.md`, and `context/waves/PHASES.md`.

**Status:** MITIGATED
