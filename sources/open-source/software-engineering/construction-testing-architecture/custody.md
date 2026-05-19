# Software Construction, Testing, Architecture, and Maintainability Custody

## Research question

What source custody should FONTES add for software construction, testing, code
review, architecture, maintainability, web-application engineering, and
refactoring before downstream repos standardize implementation, validation, and
quality expectations?

## Current custody decision

This tranche anchors software engineering in MIT OCW 6.005, 6.170, and 6.171.
OCW course/listing pages are mapped as `derived_text_allowed`. Current MIT
6.031, online books, Fowler practice pages, Google engineering practices, and
Google testing blog identities are mapped as `metadata_only` until exact
course-site, book, article, code, image, repository, solution, and derivative
reuse rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-SWE-01 | `https://ocw.mit.edu/courses/6-005-software-construction-spring-2016/` | MIT 6.005 teaches writing software that is safe from bugs, easy to understand, and ready for change, including specifications, invariants, testing, ADTs, OO design patterns, concurrency, and functional programming. | Provides a direct source for repo construction quality criteria. | High |
| FONTES-SWE-02 | `https://ocw.mit.edu/courses/6-005-software-construction-spring-2016/pages/readings/` | The reading index covers static checking, testing, code review, version control, specifications, avoiding debugging, immutability, recursion, ADTs, rep invariants, interfaces, equality, parser generators, concurrency, thread safety, sockets, queues, message passing, locks, and synchronization. | Supports source-backed validation, review, specification, and concurrency vocabulary for child repos. | High |
| FONTES-SWE-03 | `https://ocw.mit.edu/courses/6-005-elements-of-software-construction-fall-2008/` | The predecessor 6.005 course emphasizes abstractions, paradigms, state machines, design patterns, interfaces/specifications, invariants, testing, coverage, objects, functions, and abstract types. | Useful continuity identity for construction topics across MIT course generations. | High |
| FONTES-SWE-04 | `https://ocw.mit.edu/courses/6-170-software-studio-spring-2013/` | MIT 6.170 covers design and implementation of medium-scale software systems using web applications, with emphasis on conceptual design, clarity, simplicity, modularity, functional programming, relational databases, and security. | Anchors medium-scale architecture/modularity practices for portfolio repos. | High |
| FONTES-SWE-05 | `https://ocw.mit.edu/courses/6-170-software-studio-spring-2013/pages/lecture-notes/` | The 6.170 lecture index covers web basics, DNS, HTTP, separation of concerns, modularity, dependencies, MVC, REST, distributed web, object models, relational models, design concepts, design/code reviews, JavaScript, DOM, and project work. | Supports explicit separation of web/API architecture concerns from core domain logic. | High |
| FONTES-SWE-06 | `https://ocw.mit.edu/courses/6-171-software-engineering-for-web-applications-fall-2003/` | MIT 6.171 focuses on internet-application challenges: concurrency, unpredictable load, security risks, distributed computing, reliable stateful experience over unreliable/stateless protocols, changing requirements, user testing, and multimodal interfaces. | Good source bridge between web engineering, distributed systems, and user-facing reliability. | High |
| FONTES-SWE-07 | `https://ocw.mit.edu/courses/6-171-software-engineering-for-web-applications-fall-2003/pages/readings/` | The 6.171 reading index points to online textbooks for software engineering for internet applications and SQL for Web Nerds, plus Oracle/Tufte references. | Treat as an index/citation surface; linked books and external docs need separate rights review. | High |
| FONTES-SWE-08 | `https://web.mit.edu/6.031/www/sp21/` | Current MIT 6.031 site is an active course identity with readings, quizzes, problem sets, projects, and course logistics. | Use as a current lineage identity only; detailed extraction is deferred. | Medium |
| FONTES-SWE-09 | `https://philip.greenspun.com/seia/` | Software Engineering for Internet Applications includes planning, structure, registration, content management, modularity, scaling, search, distributed computing, metadata, user activity analysis, and writeups. | Useful book identity for internet-application architecture and delivery, but chapter extraction is deferred. | High |
| FONTES-SWE-10 | `https://martinfowler.com/testing/` | Fowler's testing guide emphasizes self-testing code, automated tests, TDD, specification by example, test pyramid, practical test pyramid, and microservice-testing strategies. | Use as a testing-practice identity; do not equate it with formal verification. | High |
| FONTES-SWE-11 | `https://refactoring.com/` | Refactoring is defined as disciplined behavior-preserving restructuring using small transformations to improve understandability and modification cost. | Supports maintainability and change-safety vocabulary. | High |
| FONTES-SWE-12 | `https://google.github.io/eng-practices/` | Google engineering-practices docs publish code-review guidelines and CL terminology and state CC BY 3.0 licensing. | Strong code-review practice identity, but extraction should review individual pages/repo. | High |
| FONTES-SWE-13 | `https://abseil.io/resources/swe-book` | Software Engineering at Google describes practices for sustainable/healthy codebases and is available in HTML under CC BY-NC-ND 4.0. | Identity only for now because no-derivatives terms constrain extracted/derived use. | High |
| FONTES-SWE-14 | `https://testing.googleblog.com/2015/04/just-say-no-to-more-end-to-end-tests.html` | Google Testing Blog discussion identifies end-to-end tests as expensive/flake-prone when overused and ties deviations from the test pyramid to runtime and flake byproducts. | Useful testing-strategy identity for balancing unit/integration/e2e validation. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | All child repos | Keep repo guidance explicit about specs, invariants, tests, code review, version-control hygiene, modularity, and maintainability. | Do not treat passing tests as proof of design quality or security. |
| Prototype behind boundary | FLETCH / PROOF / CROP / LATTICE | Prototype shared quality gates, review checklists, architecture records, and test-shape diagnostics only with repo-specific contracts and measurable failure outputs. | Do not impose one testing pyramid or architecture style on every repo. |
| Defer | FONTES | Promote book chapters, course readings, code, assignments, solutions, project assets, article bodies, and generated docs only after rights review. | Do not cache PDFs, quizzes, psets, solutions, code, books, blog bodies, images, diagrams, repositories, or linked assets in this tranche. |
