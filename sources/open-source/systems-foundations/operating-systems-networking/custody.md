# Operating Systems and Computer Networking Custody

## Research question

What source custody should FONTES add for operating-system kernels, file systems,
runtime coordination, network protocols, routing, congestion, and secure
application transport before downstream repos add stronger local runtime,
network, or distributed execution assumptions?

## Current custody decision

This tranche anchors systems foundations in MIT OCW 6.828 Operating System
Engineering and MIT OCW 6.829 Computer Networks. OCW course/listing pages are
mapped as `derived_text_allowed`. Current MIT 6.S081/6.828 course pages, OSTEP,
and IETF RFC identities are mapped conservatively as `metadata_only` until exact
course-site, book, homework, project, RFC text, code-component, PDF, image, and
linked-asset reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-SYS-01 | `https://ocw.mit.edu/courses/6-828-operating-system-engineering-fall-2012/` | MIT 6.828 studies OS design and implementation: virtual memory, threads, context switches, kernels, interrupts, system calls, IPC, coordination, and hardware/software interaction. | FONTES now has a direct OS-kernel foundation for runtime, file, memory, process, and coordination claims. | High |
| FONTES-SYS-02 | `https://ocw.mit.edu/courses/6-828-operating-system-engineering-fall-2012/pages/lecture-notes-and-readings/` | The 6.828 lecture index covers OS interfaces, PC hardware, system calls, virtual memory, interrupts, locking, scheduling, sleep/wakeup, file systems, crash recovery, journaling, OS organization, scalable locks, lock-free coordination, and virtual machines. | Use the index as source custody for operating-system mechanisms while keeping PDFs, xv6 code/book, and third-party papers boundary-checked. | High |
| FONTES-SYS-03 | `https://ocw.mit.edu/courses/6-829-computer-networks-fall-2002/` | MIT 6.829 focuses on design, implementation, analysis, and evaluation of large-scale networked systems, including internetworking, routing, congestion control, QoS, mobile networking, router architectures, network-aware applications, content dissemination, network security, and performance. | This complements distributed-systems custody with network-layer and transport-layer foundations. | High |
| FONTES-SYS-04 | `https://ocw.mit.edu/courses/6-829-computer-networks-fall-2002/pages/lecture-notes/` | The 6.829 lecture index covers packet switching, internetworking, IP/TCP split, routing/forwarding, security, IPv6, congestion control, active queue management, fair queuing, QoS, P2P/DHTs, overlay routing, DNS, wireless/mobile networking, anonymity, multicast, scalability, and robustness. | FLETCH/LATTICE can cite explicit network topics before designing network fetch, routing, or overlay behavior. | High |
| FONTES-SYS-05 | `https://pdos.csail.mit.edu/6.S081/2020/` | The current MIT page identifies the split between 6.S081 Introduction to Operating Systems and graduate 6.828, with a visible CC BY marker on the site. | Treat as a current course identity, but do not extract labs, code, readings, homework, or linked assets in this tranche. | Medium |
| FONTES-SYS-06 | `https://pages.cs.wisc.edu/~remzi/OSTEP/` | OSTEP identifies virtualization, concurrency, and persistence as its three conceptual operating-system pieces, with practical topics including CPU scheduling, memory management, and persistent file storage. | Strong textbook identity for later OS concept expansion, but keep book chapters, homework, projects, images, and linked assets metadata-only until reuse is reviewed. | High |
| FONTES-SYS-07 | `https://www.rfc-editor.org/rfc/rfc8200.html` | RFC 8200 specifies IPv6 and is an IETF Standards Track document subject to IETF Trust legal provisions. | Use as protocol identity for IP-layer references, not as extracted text. | High |
| FONTES-SYS-08 | `https://www.rfc-editor.org/rfc/rfc9293.html` | RFC 9293 specifies TCP, replacing/updating earlier TCP requirements and collecting decades of TCP changes. | Use as protocol identity for transport reliability, streams, and connection behavior. | High |
| FONTES-SYS-09 | `https://www.rfc-editor.org/rfc/rfc9000.html` | RFC 9000 defines QUIC transport with flow-controlled streams, low-latency connection establishment, path migration, and security measures. | QUIC should be separate from TCP/HTTP semantics in future protocol packs. | High |
| FONTES-SYS-10 | `https://www.rfc-editor.org/rfc/rfc9110.html` | RFC 9110 defines HTTP semantics as a stateless application-level protocol architecture and terminology. | HTTP fetch/cache semantics for FLETCH should cite protocol identity separately from transport mechanics. | High |
| FONTES-SYS-11 | `https://www.rfc-editor.org/rfc/rfc8446.html` | RFC 8446 specifies TLS 1.3 for preventing eavesdropping, tampering, and message forgery. | Secure transport should be modeled as its own protocol/security layer, not folded into generic networking. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | FLETCH / LATTICE / CROP | Keep network fetch/cache, local file access, and runtime scheduling assumptions explicit; cite OS/network source identities when behavior depends on processes, files, sockets, protocols, retries, or secure transport. | Do not make FLETCH a network stack or OS abstraction layer. |
| Prototype behind boundary | FLETCH / LATTICE | Prototype async networking, resumable transport, protocol-aware cache keys, or local runtime coordination behind adapters with timeout, retry, integrity, version, and platform diagnostics. | Do not assume TCP, QUIC, HTTP, and TLS have one shared failure model. |
| Defer | FONTES | Promote OSTEP chapters, RFC excerpts, MIT labs, xv6 assets, and OCW PDFs only after reuse review. | Do not cache course PDFs, xv6 code/book, labs, homework, projects, RFC bodies, code components, book chapters, images, diagrams, or linked assets in this tranche. |
