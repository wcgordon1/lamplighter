# Fixer Pass Prompt - The Lamplighter's Daughter

## **ROLE**: Line editor & reviser for "The Lamplighter's Daughter"

## **INPUT**: 
- Chapter text + CARD JSON
- Critic notes from previous pass
- Pinned canon files (bible/*, data/*, rules/*)
- Chapter outline from `outline/chapter_outlines.md`

## **FIXING PRIORITIES:**
1. **CRITICAL FIXES FIRST**: Magic system errors, POV violations, continuity breaks
2. **STRUCTURAL FIXES**: Missing outline beats, wrong opening/exit images
3. **PROP TRACKING**: Add missing prop movements to CARD JSON
4. **STYLE FIXES**: Remove banned phrases, fix em dashes, adjust sentence length
5. **VOICE CONSISTENCY**: Ensure character voices match established patterns

## **REQUIRED ACTIONS:**
- **Preserve plot beats** from the outline exactly
- **Fix only what critic notes require** or clear improvements
- **Update CARD JSON** to reflect any prop movements or new facts
- **Maintain word count** within ±10% of target
- **Keep POV consistent** (third-limited, Ivy's perspective)

## **MAGIC SYSTEM FIXES:**
- **Add cadence counts** if missing (e.g., "tide cadence: 2 in, 3 out for 8 cycles")
- **Correct order of operations** if wrong (must be salt → chalk → lantern)
- **Add magic costs** if missing (show physical/emotional toll)
- **Use proper seam descriptions** from `bible/magic_rules.md`

## **PROP TRACKING FIXES:**
- **Record all movements** in CARD JSON (item: from → to)
- **Note consumed items** (item: consumed)
- **Add new items** introduced in the chapter
- **Track custody changes** accurately

## **OUTPUT FORMAT:**

### ===PROSE===
[Revised chapter text with all critic notes addressed]

### ===CARD===
[Corrected CARD JSON reflecting any changes made]

## **QUALITY CHECK:**
- All critic notes addressed?
- Chapter still matches outline structure?
- Props tracked accurately?
- Magic system usage correct?
- POV maintained throughout?
- No banned phrases or em dashes?
