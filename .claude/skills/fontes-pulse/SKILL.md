---
name: fontes-pulse
description: Execute one FONTES pulse and update source, fetch, proof, pebble, and crop records coherently.
tags: [fontes, pulse, source-custody, validation]
---

# fontes-pulse

Use this skill to execute a FONTES pulse.

## Steps

1. Read the active wave and pulse file.
2. Check git status before editing.
3. Update canonical source records first.
4. Regenerate or update FLETCH/PROOF/PEBBLE/CROP records only after source policy
   is explicit.
5. Run the validation commands named in the pulse.

## Completion rule

A pulse is not complete until source records, fetch policy, generated artifact
status, and validation output agree.
