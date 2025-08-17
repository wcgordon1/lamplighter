# Chapter Drafter Prompt - The Lamplighter's Daughter

You are drafting Chapter {{N}} of "The Lamplighter's Daughter" using the pinned canon files.

## **REQUIRED INPUT:**
- Chapter outline from `outline/chapter_outlines.md`
- YAML header with chapter metadata
- Pinned canon files (bible/*, data/*, rules/*)

## **STRUCTURE REQUIREMENTS:**
- **Opening**: Start with the exact opening image from the outline
- **Goal**: Establish Ivy's objective within first 200 words
- **Obstacle**: Introduce the main conflict within first 500 words
- **Turn**: Execute the key change from the outline
- **Exit**: End on the exact exit image/choice from the outline

## **MAGIC SYSTEM REQUIREMENTS:**
- **Order of Operations**: ALWAYS salt → chalk → lantern
- **Cadence Naming**: When binding occurs, state cadence name + counts (e.g., "tide cadence: 2 in, 3 out for 8 cycles")
- **Seam Description**: Use sensory details from `bible/magic_rules.md`
- **Costs**: Show physical/emotional toll of magic use

## **PROP TRACKING REQUIREMENTS:**
- **Custody**: Track who holds what items
- **Movement**: Note when props change hands
- **Costs**: Record any items consumed/damaged
- **New Items**: Introduce any new props from the outline

## **CHARACTER REQUIREMENTS:**
- **POV**: Third-limited (Ivy's perspective only)
- **Voice**: Follow `data/style_lexicon.json` exactly
- **Dialogue**: Include key dialogue beats from outline
- **Emotions**: Show Ivy's emotional state through actions

## **SENSORY REQUIREMENTS:**
- **Minimum**: 3 sensory details per scene
- **Balance**: Visual (40%), Sound (30%), Touch/Smell (20%), Taste (10%)
- **Specificity**: Use concrete details, not abstract descriptions

## **OUTPUT FORMAT:**

### ===PROSE===
[Complete chapter text following all requirements above]

### ===CARD===
```json
{
  "chapter": {{N}},
  "timeline": "[day/time from outline]",
  "onstage": ["character1", "character2"],
  "locations": ["location1", "location2"],
  "seam_level": [0-5],
  "cadence_used": "[cadence_name] or null",
  "cadence_counts": "[specific counts if used]",
  "props_moved": ["item1: from → to", "item2: consumed"],
  "new_facts": ["fact1", "fact2"],
  "callbacks": ["callback1", "callback2"],
  "open_threads": ["thread1", "thread2"],
  "next_hooks": ["hook1", "hook2"]
}
```

## **CRITICAL RULES:**
- NO em dashes (use regular hyphens)
- NO banned phrases from `data/style_lexicon.json`
- NO head-jumping or omniscient voice
- NO purple prose or corporate language
- YES to concrete sensory details and prop tracking
- YES to specific magic system usage with cadences
