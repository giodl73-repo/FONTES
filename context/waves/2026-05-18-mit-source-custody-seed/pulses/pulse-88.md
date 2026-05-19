# Pulse 88 - Security and cryptography source map

## Objective

Add source custody for secure computer systems, web security, software
weaknesses, cryptographic primitives, standards, controls, and applied
cryptography after the OS/networking tranche.

## Work

| Item | Status | Notes |
|---|---|---|
| Work/custody/inventory | Done | Added records under `sources\open-source\security-cryptography\systems-and-crypto`. |
| Research findings | Done | Documented MIT 6.858, MIT 6.857, MIT 6.875, Boneh/Shoup Applied Cryptography, OWASP Top Ten, OWASP Cheat Sheet Series, CWE Top 25, NIST FIPS 197, NIST FIPS 180-4, NIST SP 800-53, and RFC 9380 identities. |
| Surface table | Done | Added `sources\tables\security-cryptography-surfaces.json`. |
| FLETCH registry | Done | Added `.fletch\registries\fontes-security-cryptography-surfaces.json`. |
| PROOF ledger | Done | Added a candidate work-level row and updated counts. |

## Boundary notes

MIT OCW course/listing pages are mapped as derived text. OWASP, CWE, NIST,
IETF, and Applied Cryptography book identities are metadata-only pending license
and extraction review. OCW PDFs, problem sets, assignments, readings,
third-party papers, standards bodies, RFC bodies, RFC code components,
crypto-book PDFs, chapters, OWASP/CWE generated docs, repository content,
translations, datasets, images, diagrams, examples, code, and linked assets
remain boundary-checked.

## Decision support

Keep threat models, weaknesses, vulnerabilities, security controls,
authentication, integrity, confidentiality, authorization, and cryptographic
algorithms as distinct source-backed claims. Do not treat generic correctness,
network reachability, or checksum validation as a security proof.
