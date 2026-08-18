# FONTES

Source custody for trusted educational and reference knowledge.

FONTES is a Knowledge Systems repo. It does not replace MAXIM's authored
reference guides; it records where source authority comes from, what can be
fetched or cached, what must remain metadata-only, and which generated proof,
Pebble, and Crop artifacts downstream systems may trust.

## Product thesis

Public knowledge sources are generous but uneven. MIT OpenCourseWare pages,
MIT Press books, author-hosted HTML books, PDFs, lecture notes, assignments,
and exams all have different custody and reuse rules. FONTES turns those
sources into explicit records: source identity, license posture, fetch policy,
access date, derived proof records, and downstream context-pack status.

## First corpus: MIT source-custody seed

The first wave starts with MIT because it is high-value and well-structured,
not because every MIT-used textbook is automatically downloadable.

| Source area | Initial policy |
|---|---|
| MIT OCW 18.06 Linear Algebra | Register the course page, readings table, and resource groups; do not cache the assigned Strang textbook unless a license-cleared source is identified. |
| MIT OCW 6.034 Artificial Intelligence | Register OCW pages and linked supplemental PDFs; keep Winston's assigned textbook metadata-only. |
| MIT OCW / Open Learning Library 6.036 | Register the ML course as an AI/ML source anchor and review downloadable materials before caching. |
| MIT Press / author-hosted AI books | Register book identity, URL, license posture, and fetch policy; cache only where redistribution/caching is clearly allowed. |

## Pipeline boundary

```text
FONTES registry
  -> FLETCH fetch/cache plans and ledgers
  -> PROOF custody/source records
  -> PEBBLE transfer packs
  -> CROP corpus indices and status views
  -> MAXIM, CANON, and downstream knowledge consumers
```

## Non-goals

- No blind mirroring of online textbooks.
- No committed raw PDFs or book HTML unless the license explicitly permits it.
- No replacement for MIT OCW, MIT Press, author sites, libraries, or publishers.
- No generated MAXIM prose; FONTES supplies source custody and context packs.
- No runtime dependency forced onto downstream repos before artifact contracts
  stabilize.

## First validation

```powershell
git grep -n "FONTES" -- README.md PRODUCT_PLAN.md context\waves\PHASES.md
git grep -n "fetch_policy" -- sources .fletch\registries
git status --short
```

## Reuse boundary

FONTES is intentionally a specialist source-custody corpus, not a runtime
dependency. Its registries, custody records, proof records, Pebble candidates,
and Crop views are FONTES-owned evidence artifacts whose schemas and publisher
loop are still evolving. MAXIM consumes the resulting authority layer as
reviewed content, but does not pin a versioned FONTES package or own a
compatibility proof. Direct reuse should wait for a bounded, versioned artifact
contract and a real downstream manifest; copied records, shared methods, and
planned consumers do not establish that contract.
