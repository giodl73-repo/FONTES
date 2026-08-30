# FONTES Review Panel

FONTES reviews protect source custody, rights posture, fetch/cache policy,
publisher artifacts, citation authority, and downstream consumer boundaries.

## Active Roles

| Role | Protects | Invoke when |
|---|---|---|
| [Source Custody Reviewer](source-custody-reviewer.md) | Source identity, owner, license posture, access date, and custody status | Adding or changing source records, custody notes, or proof ledgers |
| [Fetch Policy Reviewer](fetch-policy-reviewer.md) | Metadata-only, license-review, local-cache, derived-text, and bundle policies | Converting source rows into FLETCH registries or acquisition plans |
| [Publisher Artifact Reviewer](publisher-artifact-reviewer.md) | PROOF, PEBBLE, CROP, and FLETCH artifacts as custody carriers, not authority | Publishing generated source records, packs, indices, or registry views |
| [Citation Authority Reviewer](citation-authority-reviewer.md) | Difference between source identity and validated downstream claims | Using FONTES rows for MAXIM, CANON, guides, or research claims |
| [Consumer Boundary Reviewer](consumer-boundary-reviewer.md) | MAXIM/CANON/CROP/PEBBLE adoption and versioned contract boundaries | Claiming reuse, dependency adoption, or consumer readiness |

## Review Order

1. Source Custody Reviewer confirms the source exists, the owner is named, and
   rights posture is explicit.
2. Fetch Policy Reviewer confirms acquisition behavior is resource-specific and
   does not infer cache permission from online visibility.
3. Publisher Artifact Reviewer confirms generated artifacts retain custody,
   fetch policy, rights notes, and readiness status.
4. Citation Authority Reviewer confirms source identity is not treated as
   claim correctness or citation sufficiency.
5. Consumer Boundary Reviewer confirms downstream reuse has a manifest,
   versioned artifact contract, and consumer-owned validation before adoption is
   claimed.

Source visibility never outranks custody state. Generated artifacts never
outrank the source ledger.
