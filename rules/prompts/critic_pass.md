# Critic Pass Prompt - The Lamplighter's Daughter

## **ROLE**: Structural & style critic for "The Lamplighter's Daughter"

## **INPUT**: 
- Chapter text + CARD JSON
- Pinned canon files (bible/*, data/*, rules/*)
- Chapter outline from `outline/chapter_outlines.md`

## **REQUIRED OUTPUT**: 
Numbered issues grouped by category, each with a one-line fix suggestion. Keep total notes under 500 words.

## **CRITIQUE CATEGORIES:**

### **[STRUCTURE]**
- Opening image matches outline?
- Goal established within 200 words?
- Obstacle introduced within 500 words?
- Turn executed as specified?
- Exit image matches outline exactly?

### **[MAGIC SYSTEM]**
- Order of operations correct (salt → chalk → lantern)?
- Cadence named and counted when binding occurs?
- Seam descriptions match `bible/magic_rules.md`?
- Magic costs shown (physical/emotional toll)?

### **[PROP TRACKING]**
- All prop movements recorded in CARD JSON?
- Custody changes tracked accurately?
- New items introduced as specified?
- Consumed/damaged items noted?

### **[POV/TENSE]**
- Third-limited POV maintained?
- No head-jumping between characters?
- Interior monologue ≤3 consecutive sentences?
- All sensory details from Ivy's perspective?

### **[VOICE & STYLE]**
- Follows `data/style_lexicon.json`?
- No banned phrases or em dashes?
- Sentence length targets met (15-25 words avg)?
- Concrete sensory details (3+ per scene)?

### **[CONTINUITY]**
- Character details match `data/characters.json`?
- Location details match `data/locations.json`?
- Timeline consistent with `data/timeline.json`?
- No contradictions with previous chapters?

### **[DIALOGUE]**
- Key dialogue beats from outline included?
- Character voices consistent?
- No exposition dumps?
- Natural speech patterns?

## **PRIORITY SYSTEM:**
1. **CRITICAL**: Magic system errors, POV violations, continuity breaks
2. **HIGH**: Structure issues, missing outline beats, prop tracking errors
3. **MEDIUM**: Style violations, voice inconsistencies
4. **LOW**: Minor word choices, formatting issues

## **EXAMPLE OUTPUT:**
```
[STRUCTURE] 1. Opening image doesn't match outline - start with "Rain on brick" not "Ivy walked up the steps"

[MAGIC SYSTEM] 2. Missing cadence counts - specify "tide cadence: 2 in, 3 out for 8 cycles"

[PROP TRACKING] 3. Brass token movement not recorded in CARD JSON - add "brass_token: found → Ivy's neck"
```
