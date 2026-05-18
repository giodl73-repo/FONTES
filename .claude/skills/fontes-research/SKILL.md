---
name: fontes-research
description: Research source rights, access surfaces, and custody policy before FONTES integrates a source family.
tags: [fontes, research, license, source-custody]
---

# fontes-research

Use this skill before adopting a new source family.

## Research output

For every source family, record:

- canonical URL and publisher/host;
- author/editor/institution identity;
- license or rights statement;
- allowed local actions: metadata-only, fetch, cache, bundle, quote, or transform;
- access date and evidence URL;
- downstream consumers and expected artifacts.

## Required conclusion

Classify each source as one of:

| Policy | Meaning |
|---|---|
| `metadata_only` | Record identity and URL only. |
| `local_cache_allowed` | FLETCH may cache locally, but artifacts are not bundled. |
| `bundle_allowed` | FLETCH quivers or repo artifacts may include source bytes. |
| `derived_text_allowed` | PROOF/PEBBLE/CROP may carry extracted text. |
| `license_review` | Do not fetch beyond ordinary page inspection until reviewed. |
