# FONTES Product Plan

## One-line product

FONTES is the source-custody knowledge system for trusted educational and
reference sources.

## Problem

The portfolio can write, compile, crop, and transfer knowledge artifacts, but it
needs a durable source layer that answers a simpler question first: what source
is this claim grounded in, what are we allowed to fetch or cache, and what
generated artifacts came from that source?

## Product promise

FONTES makes source custody explicit. It records source identity, license
posture, fetch policy, custody status, proof records, Pebble packs, Crop views,
and downstream consumer readiness without assuming that "online" means
"mirrorable."

## Core objects

| Object | Meaning |
|---|---|
| Work | A book, course, paper set, standards corpus, or other stable knowledge source. |
| Source | A concrete URL, file, landing page, reading list, PDF, HTML chapter, or resource group. |
| Custody record | Human-readable source policy, access date, rights posture, and use notes. |
| Fetch policy | Whether FLETCH may fetch, cache locally, bundle, or only record metadata. |
| Proof source record | PROOF-authored custody/source markdown for generated publishing and checks. |
| Pebble pack | Compact source/context transfer artifact when text extraction is permitted. |
| Crop view/index | Corpus inventory, status, backlinks, headings, and selected context boundary. |

## First wave

**Wave:** MIT Source-Custody Seed

Goal: establish FONTES as a TRACKER-managed Knowledge Systems submodule and
prove the license-aware source -> fetch policy -> proof record -> Pebble/Crop
publisher path on a small MIT-first corpus.

Pulses:

1. **Repo foundation and intake** - scaffold FONTES, wave records, skills,
   source schema stubs, MIT seed registry, and TRACKER integration.
2. **18.06 complete source map** - enumerate the OCW 18.06 course page,
   readings table, lecture/resource groups, assignments, exams, videos, and
   textbook custody boundary.
3. **AI book/source map** - register MIT OCW 6.034, 6.036/Open Learning
   Library, MIT Press/author-hosted AI books, and license review state.
4. **FLETCH registry gate** - convert source records into fetch/cache plans,
   keeping copyrighted or unclear sources metadata-only.
5. **PROOF/PEBBLE/CROP publisher loop** - generate proof source records,
   Pebble packs where permitted, and Crop status/index views for the seed.

### Foundation acceptance checks

| Pulse | Acceptance check |
|---:|---|
| 1 | FONTES exists only as `repos\knowledge-systems\fontes`, includes source schemas, source records, wave docs, skills, and dependency intake. |
| 2 | 18.06 has course-level, readings, resource-group, and textbook-boundary records with explicit fetch policies. |
| 3 | AI seed sources distinguish open OCW materials, free-to-read but non-redistributable books, and license-review candidates. |
| 4 | FLETCH registry validates source IDs, URLs, freshness, and metadata-only/cacheable distinctions before any bulk download. |
| 5 | PROOF records, Pebble candidates, and Crop views are generated or deliberately marked pending with reasons. |

## Dependency placement

FONTES is upstream of MAXIM source-custody backfill and adjacent to CANON
identity. It should publish portable artifacts rather than force runtime coupling
into downstream knowledge repos.

| System | Initial status | Reason |
|---|---|---|
| FLETCH | Required | Owns generic fetch/cache/ledger policy for source URLs and local cache. |
| PROOF | Required | Owns custody/source markdown, generated records, and markdown checks. |
| CROP | Planned | Index source corpora, status pages, and selected context views. |
| PEBBLE | Planned | Transfer source sections and metadata as compact context packs. |
| CANON | Planned | Canonicalize works, authors, institutions, editions, and concept IDs. |
| MAXIM | Consumer | Uses FONTES as a backsourced authority layer, not as generated prose. |
| SLICE | Planned later | Query source metadata once selectors stabilize. |
| ROLES | Planned later | Add source/license/citation review panels after first seed stabilizes. |

## Non-goals

- No bulk textbook download until each source has a clear fetch policy.
- No committed `.fletch\cache` objects.
- No redistribution of copyrighted books that are merely assigned by MIT courses.
- No source scraping that bypasses publisher or author access rules.
- No full citation manager replacement in the foundation wave.

## Acquisition priority

The first corpus expansion should prioritize CS/software, AI/ML, mathematics,
physics for objects, and chemistry for real items before moving into broader
game-design support domains. The working priority list lives in
[`sources\ACQUISITION_PRIORITIES.md`](sources/ACQUISITION_PRIORITIES.md).

## Validation commands

```powershell
git grep -n "FONTES" -- README.md PRODUCT_PLAN.md context\waves\PHASES.md
git grep -n "fetch_policy" -- sources .fletch\registries
git status --short
```
