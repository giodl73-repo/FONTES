# Computer Security, Web Security, and Cryptography Custody

## Research question

What source custody should FONTES add for secure computer systems, web security,
software weaknesses, cryptographic primitives, standards, controls, and applied
cryptography before downstream repos make security, trust, authentication,
integrity, or confidentiality claims?

## Current custody decision

This tranche anchors systems security and cryptography in MIT OCW 6.858, 6.857,
and 6.875. OCW course/listing pages are mapped as `derived_text_allowed`.
OWASP, CWE, NIST, IETF, and Applied Cryptography book identities are mapped as
`metadata_only` until exact project, standards, book, RFC, code-component,
translation, PDF, dataset, image, diagram, and linked-asset reuse rules are
reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-SEC-01 | `https://ocw.mit.edu/courses/6-858-computer-systems-security-fall-2014/` | MIT 6.858 covers secure computer-system design and implementation, threat models, attacks, OS security, capabilities, information flow control, language security, network protocols, hardware security, and web applications. | Provides the primary systems-security source anchor for FLETCH/LATTICE trust and runtime-boundary claims. | High |
| FONTES-SEC-02 | `https://ocw.mit.edu/courses/6-858-computer-systems-security-fall-2014/pages/lecture-notes/` | The 6.858 lecture index covers threat models, control hijacking, buffer overflows, privilege separation, capabilities, sandboxing, web security, network security, SSL/HTTPS, side channels, authentication, private browsing, mobile security, data tracking, and economics. | Supports source-backed security vocabulary while keeping PDFs and media boundary-checked. | High |
| FONTES-SEC-03 | `https://ocw.mit.edu/courses/6-858-computer-systems-security-fall-2014/pages/readings/` | The reading index maps systems-security papers and readings, including bounds checking, blind attacks, capabilities, sandboxing, OWASP Top 10, Django security, symbolic execution, Kerberos, and HTTPS. | Useful as an identity bridge to papers/tools, but third-party bodies remain separate rights boundaries. | High |
| FONTES-SEC-04 | `https://ocw.mit.edu/courses/6-857-network-and-computer-security-spring-2014/` | MIT 6.857 is an upper-level/first-year graduate network and computer security course covering computer networks, cryptography, and security studies. | Adds network/computer security course lineage adjacent to the OS/networking tranche. | High |
| FONTES-SEC-05 | `https://ocw.mit.edu/courses/6-875-cryptography-and-cryptanalysis-spring-2005/` | MIT 6.875 introduces modern cryptography with public-key encryption, digital signatures, pseudorandom number generation, basic protocols, and computational-complexity requirements. | Connects cryptography custody to computability/complexity and protocol-source custody. | High |
| FONTES-SEC-06 | `https://crypto.stanford.edu/~dabo/cryptobook/` | Boneh/Shoup Applied Cryptography lists secret-key cryptography, public-key cryptography, protocols, zero knowledge, authenticated key exchange, secure computation, number theory, probability, complexity, and probabilistic algorithms. | Strong applied-crypto identity for future protocol/credential packs, but PDFs remain boundary-checked. | High |
| FONTES-SEC-07 | `https://owasp.org/www-project-top-ten/` | OWASP Top Ten is a standard awareness document for developers and web-application security that represents broad consensus on critical web-application security risks. | Web-application security should be tracked as risk taxonomy/guidance, not treated as formal proof of safety. | High |
| FONTES-SEC-08 | `https://cheatsheetseries.owasp.org/` | OWASP Cheat Sheet Series provides concise high-value information on specific application-security topics by application-security professionals. | Useful guidance identity for implementation checklists, with generated docs and repo content boundary-checked. | Medium |
| FONTES-SEC-09 | `https://cwe.mitre.org/top25/archive/2024/2024_cwe_top25.html` | CWE Top 25 highlights common and impactful software weaknesses and supports vulnerability reduction, SDLC feedback, trend analysis, exploitability insight, and risk prioritization. | Downstream quality/security packs should distinguish weaknesses, vulnerabilities, and mitigations. | High |
| FONTES-SEC-10 | `https://csrc.nist.gov/pubs/fips/197/final` | NIST FIPS 197 identifies AES as a block-cipher standard for confidentiality/encryption and notes the 2023 update made no technical algorithm changes. | AES should be treated as an algorithm-standard identity, not embedded as copied specification text. | High |
| FONTES-SEC-11 | `https://csrc.nist.gov/pubs/fips/180-4/upd1/final` | NIST FIPS 180-4 specifies secure hash algorithms that generate message digests to detect whether messages changed. | Hash/integrity claims can cite a standard identity, with extraction deferred. | High |
| FONTES-SEC-12 | `https://csrc.nist.gov/pubs/sp/800/53/r5/upd1/final` | NIST SP 800-53 provides a catalog of security and privacy controls for information systems and organizations. | Controls are governance/control identities, not direct implementation guarantees. | High |
| FONTES-SEC-13 | `https://www.rfc-editor.org/rfc/rfc9380.html` | RFC 9380 specifies algorithms for encoding or hashing strings to elliptic-curve points and is CFRG/IRTF informational output. | Advanced crypto-protocol source identities should name standard/research status explicitly. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FLETCH / LATTICE / PROOF / CROP | Track trust, integrity, authentication, authorization, confidentiality, vulnerability, weakness, and control claims as separate source-backed dimensions. | Do not claim security properties from generic correctness validation. |
| Prototype behind boundary | FLETCH / LATTICE | Prototype signatures, digests, authenticated fetches, credential stores, sandboxed execution, or policy gates only behind explicit key, threat-model, algorithm, failure, revocation, and audit boundaries. | Do not invent crypto or silently fold authentication, integrity, and confidentiality into one boolean. |
| Defer | FONTES | Promote standards text, OWASP/CWE pages, crypto-book chapters, RFC bodies, code components, PDFs, assignments, and readings only after reuse review. | Do not cache course PDFs, problem sets, assignments, readings, papers, standards bodies, book PDFs, code, datasets, images, diagrams, translations, or linked assets in this tranche. |
