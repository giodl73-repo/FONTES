# Information Theory, Coding, Compression, and Digital Communication Custody

## Research question

What source custody should FONTES add for entropy, compression, channel coding,
digital communication, and information-representation limits before PROOF,
FLETCH, CROP, and PEBBLE make stronger claims about information content,
encoding, communication, or inference?

## Current custody decision

This tranche anchors information theory and digital communication in MIT OCW
6.441 and 6.02. MIT OCW course/listing pages are mapped as
`derived_text_allowed`. Stanford EE376A, MacKay's textbook site, and the IEEE
record for Shannon's foundational paper are mapped as `metadata_only` until
exact course, book, paper, download, mirror, figure, code, assignment, and linked
asset reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-INFO-01 | `https://ocw.mit.edu/courses/6-441-information-theory-spring-2016/` | MIT 6.441 is a graduate introduction to the mathematics of information theory covering entropy, lossless data compression, binary hypothesis testing, channel coding, and lossy data compression. | Provides the primary candidate source surface for entropy, compression, and coding claims. | High |
| FONTES-INFO-02 | `https://ocw.mit.edu/courses/6-02-introduction-to-eecs-ii-digital-communication-systems-fall-2012/` | MIT 6.02 introduces EECS through digital communication systems, using bits, signals, and packets as abstraction layers, and teaches probabilistic analysis, superposition, time/frequency representations, system tradeoffs, programming tasks, and real-world communication channels. | Connects information-theory concepts to communication-system implementation and packet/channel evidence boundaries. | High |
| FONTES-INFO-03 | `https://web.stanford.edu/class/ee376a/` | Stanford EE376A covers measuring, representing, and communicating information, entropy, mutual information, compression, error correction, inference, and applications to statistics, machine learning, neural networks, genomics, quantum information, and blockchains. | Adds modern information-theory course identity while keeping course assets and discussion platforms boundary-checked. | High |
| FONTES-INFO-04 | `https://www.inference.org.uk/itprnn/book.html` | MacKay's Information Theory, Inference, and Learning Algorithms page identifies the book and exposes downloadable PDF, PostScript, EPUB, DJVU, text, and figure assets. | Use as a broad textbook identity; book bodies, figures, mirrors, and downloads need explicit reuse review before extraction or caching. | High |
| FONTES-INFO-05 | `https://ieeexplore.ieee.org/document/6773024` | IEEE Xplore provides a platform identity for Shannon's foundational information-theory paper record, but fetched content is platform HTML and not suitable as extracted source text. | Preserve the paper as a metadata-only identity until bibliographic and reuse review is completed. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate entropy, source coding, channel coding, lossy compression, error correction, communication-system, and inference claims; cite source identities for each. | Do not infer semantic truth, reliability, or evidential quality from compression or information-content measures alone. |
| Prototype behind boundary | PROOF / FLETCH | Prototype source sidecars for encoded artifacts with codec, channel, noise model, compression policy, lossiness, checksum, and reconstruction provenance. | Do not cache or redistribute course PDFs, textbook downloads, figures, paper PDFs, programming tasks, datasets, or mirrors in FONTES. |
| Defer | FONTES | Promote textbook sections, paper bodies, lecture PDFs, problem sets, code, and course assets only after rights review. | Do not collapse information-theoretic, communication-system, and semantic-evidence claims into one proof category. |
