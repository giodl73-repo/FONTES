# Open Education Source Families

FONTES can cover major open-education sources beyond MIT, but each family enters
through source-family custody before any course-level fetching.

## Initial families

| Family | Canonical URL | Initial policy | Notes |
|---|---|---|---|
| Open Yale Courses | `https://oyc.yale.edu/` | `derived_text_allowed` for most Yale-owned course materials under CC BY-NC-SA 3.0; third-party content excluded unless explicitly cleared. | Terms captured in `open-yale-courses\TERMS.md`. |
| Stanford Engineering Everywhere | `https://see.stanford.edu/Course` | `bundle_allowed` for SEE-owned downloadable course materials under CC BY-NC-SA 4.0 unless otherwise indicated; Stanford Introduction to Logic excluded from CC policy. | Terms captured in `stanford-engineering-everywhere\TERMS.md`. |
| Open Michigan | `https://open.umich.edu/` | `license_review` | Likely OER/Creative Commons per item, but authoritative source-family terms still need capture. |
| UC Berkeley OCW | `https://ocw.berkeley.edu/` | `license_review` | Reported CC BY-NC-SA family, but authoritative terms page fetch failed in this pass. |
| Open Education Global | `https://www.oeglobal.org/` | `metadata_only` | Discovery/community hub for open education, not a single source corpus license. |

## Rule

Do not assume "open education" means every linked file is cacheable. FONTES
records source-family terms first, then promotes individual courses/resources
only when the owning page or per-resource license is explicit.
