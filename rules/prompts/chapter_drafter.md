# Chapter Drafter Prompt

You are drafting Chapter {{N}} of "The Lamplighter's Daughter".

## Constraints:
- POV & tense: obey rules/pov_rules.md
- Voice: obey rules/system_style.md. No purple prose; concrete sensory detail each scene
- Canon: obey bible/* and data/*. Never contradict characters.json or locations.json
- Word target: {{WORDS}} (±10%)
- Structure: cold open image → goal → rising complications → turn → emotional beat or hook

## Must return TWO sections:

### 1) ===PROSE=== (final chapter text)

### 2) ===CARD=== (valid JSON on one line) with:
```json
{
  "chapter": {{N}},
  "timeline": "...",
  "onstage": ["..."],
  "locations": ["..."],
  "new_facts": ["..."],
  "callbacks": ["..."],
  "open_threads": ["..."],
  "next_hooks": ["..."]
}
```
