# Governance, Public Policy, Policy Analysis, Regulation, and Legal Source Custody

## Research question

What source custody should FONTES add for governance, public policy, policy
analysis, negotiation, regulation, legal-source identity, and civic-institution
claims before PROOF, FLETCH, CROP, and PEBBLE make stronger claims about policy
choices, rulemaking, statutory authority, regulatory obligations, legal meaning,
public finance, implementation, or institutional outcomes?

## Current custody decision

This tranche anchors governance and public-policy custody in MIT OCW 11.002J,
11.003J, 14.41, and 11.011. Official/legal sources are mapped as metadata-only
identities through GovInfo U.S. Code help, eCFR/Federal Register API docs, and
Cornell LII Wex. MIT OCW course/listing/syllabus pages are mapped as
`derived_text_allowed`. Readings, assignments, papers, case studies, lecture
videos, exams, statutory text, regulatory text, rulemaking documents, legal
reference bodies, API payloads, bulk data, and linked statutes/cases remain
boundary-checked.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-GOV-01 | `https://ocw.mit.edu/courses/11-002j-making-public-policy-fall-2014/pages/syllabus/` | MIT 11.002J frames politics as competing advocacy within institutions and cultural ideas; the course covers problem definition, persuasive arguments, policy choice, policy effectiveness, American political-system context, health care, gun control, federal budget, immigration, same-sex marriage, energy, climate change, papers, oral project, and participation. | Provides the primary public-policy and policy-framing custody. | High |
| FONTES-GOV-02 | `https://ocw.mit.edu/courses/11-003j-methods-of-policy-analysis-spring-2016/pages/syllabus/` | MIT 11.003J covers rational policy-analysis approaches: framing questions, identifying stakeholders/goals, designing options, weighing costs/benefits, evaluating outcomes, monitoring implementation, distributional impacts, unintended consequences, case analysis, teamwork, and public/non-profit sector practice. | Adds policy-analysis, implementation, and evaluation custody. | High |
| FONTES-GOV-03 | `https://ocw.mit.edu/courses/14-41-public-finance-and-public-policy-fall-2024/` | MIT 14.41 applies microeconomic tools to government roles in the economy, including global warming response, school choice, Social Security, health insurance, tax rates, reasons for government intervention, extent of intervention, and private-agent responses. | Adds public-finance and government-intervention custody. | High |
| FONTES-GOV-04 | `https://ocw.mit.edu/courses/11-011-the-art-and-science-of-negotiation-spring-2006/pages/syllabus/` | MIT 11.011 treats negotiation as a governance skill for planners, managers, lawyers, public officials, and analysts facing interdependencies, fragmented power, uncertainty, conflicting goals, stable agreements, trust, bargaining, value creation, mutual gains, expectations, roles, and relationships. | Adds negotiation and institutional-agreement custody. | High |
| FONTES-GOV-05 | `https://www.govinfo.gov/help/uscode` | GovInfo describes the U.S. Code as codification by subject matter of general/permanent U.S. laws, with Office of the Law Revision Counsel provenance, positive-law vs prima-facie evidence, editions/supplements, searching, citation retrieval, metadata, and verification cautions. | Adds official statutory-source identity without treating extracted text as cached legal evidence. | High |
| FONTES-GOV-06 | `https://www.ecfr.gov/developers/documentation/api/v1` | eCFR page notes automated scraping limits and directs programmatic access to developer APIs for the Electronic Code of Federal Regulations. | Adds regulatory-code API identity while keeping CFR text/API payloads boundary-checked. | Medium |
| FONTES-GOV-07 | `https://www.federalregister.gov/developers/documentation/api/v1` | FederalRegister.gov page notes automated scraping limits and directs programmatic access to developer APIs for Federal Register materials. | Adds rulemaking/publication API identity while keeping documents/API payloads boundary-checked. | Medium |
| FONTES-GOV-08 | `https://www.law.cornell.edu/wex` | Cornell LII Wex is a free legal dictionary and encyclopedia, drafted by law students under LII supervision, with a no-legal-advice disclaimer. | Adds legal-reference identity, not authoritative legal advice. | High |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate policy problem, institutional actor, stakeholder, legal authority, source jurisdiction, rule/statute version, policy option, cost/benefit model, implementation state, evaluation metric, and interpretation claim. | Do not present policy analysis, statutory references, regulatory records, or legal definitions as legal advice or current obligations without source/version/jurisdiction boundaries. |
| Prototype behind boundary | PROOF / FLETCH | Prototype governance provenance for jurisdiction, authority type, edition/date, agency/body, docket/document ID, policy scenario, affected stakeholders, fiscal model, distributional impacts, implementation phase, and uncertainty. | Do not cache or redistribute readings, assignments, case studies, statutory bodies, regulatory text, rulemaking documents, legal-reference entries, API payloads, or bulk data. |
| Defer | FONTES | Promote specific laws, regulations, cases, agency documents, legal definitions, or policy readings only after exact rights, jurisdiction, date/version, and authority review. | Do not collapse civic education, policy analysis, statutes, regulations, case law, and legal interpretation into one proof category. |
