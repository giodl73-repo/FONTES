# Natural Language Processing, Computational Linguistics, and Language Understanding Custody

## Research question

What source custody should FONTES add for natural language processing,
computational linguistics, language models, parsing, tagging, extraction,
summarization, and transformer implementation before PROOF, FLETCH, CROP, and
PEBBLE make stronger text-understanding or language-model claims?

## Current custody decision

This tranche anchors NLP and computational linguistics in MIT OCW 6.864. MIT OCW
course/listing pages are mapped as `derived_text_allowed`. Jurafsky/Martin SLP3,
Stanford CS224N, ACL Anthology, Hugging Face Transformers, and Eisenstein course
identities are mapped as `metadata_only` until exact book, slide, assignment,
paper, model, dataset, generated-doc, code, repository, and linked-asset reuse
rules are reviewed.

## Findings

| ID | Evidence | Observation | Implication | Confidence |
|---|---|---|---|---|
| FONTES-NLP-01 | `https://ocw.mit.edu/courses/6-864-advanced-natural-language-processing-fall-2005/` | MIT 6.864 is a graduate introduction to NLP as computational study of human language, covering syntactic, semantic, and discourse processing models, corpus/machine-learning methods, parsing, information extraction, statistical machine translation, dialogue systems, and summarization. | Provides the primary candidate surface for NLP source custody. | High |
| FONTES-NLP-02 | `https://ocw.mit.edu/courses/6-864-advanced-natural-language-processing-fall-2005/pages/lecture-notes/` | The lecture index covers parsing, smoothed estimation, language modeling, EM, lexical similarity, log-linear models, tagging, grammar induction, discourse, segmentation, coherence/coreference, machine translation, graph-based NLP, word sense disambiguation, global linear models, dialogue, and summarization. | Supports source-backed vocabulary for extraction, tagging, parsing, graph-NLP, and summarization claims. | High |
| FONTES-NLP-03 | `https://ocw.mit.edu/courses/6-864-advanced-natural-language-processing-fall-2005/pages/assignments/` | The assignment index includes homework plus supporting files for counts, similarity, clustering, POS tagging, Viterbi tagging, scripts, and external tools. | Assignment/data files must remain boundary-checked even when the index is citeable. | High |
| FONTES-NLP-04 | `https://web.stanford.edu/~jurafsky/slp3/` | Speech and Language Processing draft covers NLP, computational linguistics, speech recognition, language models, tokens, embeddings, neural nets, LLMs, transformers, alignment, masked LMs, IR/RAG, translation, speech, tagging, parsing, extraction, semantic roles, coreference, discourse, dialogue, HMMs, smoothing, and noisy-channel models. | This is the broad modern textbook identity for future language understanding and LLM/RAG source expansion. | High |
| FONTES-NLP-05 | `https://web.stanford.edu/class/cs224n/` | Stanford CS224N covers deep learning for NLP and LLMs, with NLP applications across web search, advertising, email, customer service, translation, agents, medical reports, politics, and related domains. | Use as a neural NLP/LLM course identity; course assets and videos remain boundary-checked. | High |
| FONTES-NLP-06 | `https://aclanthology.org/` | ACL Anthology exposes computational linguistics research and states license distinctions: pre-2016 materials under CC BY-NC-SA 3.0 and 2016+ under CC BY 4.0, with other materials under respective copyright holders. | Research-paper reuse must be paper/year/license aware rather than assumed uniform. | High |
| FONTES-NLP-07 | `https://huggingface.co/docs/transformers/index` | Transformers is described as a model-definition framework for text, vision, audio, video, and multimodal models, supporting inference/training, pipelines, Trainer, generation, pretrained models, and ecosystem integration. | Treat implementation docs/model ecosystem as source identity, not proof of model reliability or rights to checkpoints. | High |
| FONTES-NLP-08 | `https://github.com/jacobeisenstein/gt-nlp-class` | Eisenstein's course gives an overview of data-driven NLP from bag-of-words to structural representations, with linguistic phenomena, computational models, and ML techniques. | Useful course-notes identity for linguistic/data-driven NLP framing, pending repository/license review. | Medium |

## Recommendations

| Recommendation | Owner | Validation | Non-goal |
|---|---|---|---|
| Adopt now | PROOF / FLETCH / CROP / PEBBLE | Separate tokenization, tagging, parsing, entity linking, summarization, embeddings, language models, RAG, and evaluation claims; cite source identities for each. | Do not treat an LLM output as source evidence without PROOF-backed citations. |
| Prototype behind boundary | PROOF / FLETCH | Prototype NLP enrichments, chunk labeling, embedding search, RAG, summarization, and extraction behind corpus, prompt/model, evaluation, confidence, and provenance diagnostics. | Do not cache or redistribute model weights, datasets, paper bodies, or generated course materials in FONTES. |
| Defer | FONTES | Promote chapters, slides, papers, assignments, model docs, checkpoints, datasets, and code only after rights review. | Do not cache PDFs, slides, videos, assignments, datasets, scripts, model checkpoints, model cards, paper PDFs, repository content, images, diagrams, or linked assets in this tranche. |
