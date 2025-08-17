# AI Writing Rules — The Lamplighter’s Daughter

*Use this file as the house style and guardrails for every AI pass. It tells the model what to do, what never to do, and how to check itself. Keep this open when drafting.*

---

## 0) Scope and Order of Truth
**Canon first:**
- bible/magic_rules.md  
- bible/props_artifacts.md  
- bible/setting_catalog.md  
- bible/plot_faq.md  
- data/timeline.json  
- data/style_lexicon.json  
- bible/symbolism_motifs.md  

Never contradict canon. If a new idea clashes, change the idea.  
House rules apply to every line unless a scene-specific note overrides them.  

---

## 1) Point of View and Camera Rules
- **Primary POV:** Third person limited, Ivy.  
- Short beats from Kestrel, Tamsin, or Rooke allowed on **hard scene breaks.**  
- No head hopping. One mind per scene.  

**Guidelines:**  
- Prefer direct perception (replace “she saw” with the thing seen).  
- Interior life: Thought rides on physical detail; avoid italic monologues.  

**Tests:**  
- Reader must know whose body we inhabit by the second sentence.  
- If POV includes knowledge character could not have, remove it.  

---

## 2) Voice, Diction, and Tone
- **Voice:** Grounded, attentive, unsentimental. Dry humor under stress.  
- **Contractions:** Natural, not stiff.  
- **Vocabulary:** Civic materials and rhythms: lamps, rails, bells, tide, paper, brass, chalk, salt.  
- **Emotion:** Shown in breath, posture, and sensory shifts. Avoid naming directly.  

**Do:**  
> “The lamp halo tightened to a coin when her breath settled.”  

**Do not:**  
> “She felt very relieved.”  

---

## 3) Punctuation and Typography
- No em dashes. Replace with comma, period, or colon.  
- En dash only for numeric ranges/dates.  
- Semicolons rare.  
- Ellipses: only in dialogue, max one per chapter.  
- Exclamation marks: dialogue only, max one per chapter.  
- Numbers: Spell out zero–ten; numerals for time, routes, lamp numbers.  

---

## 4) Sentence and Paragraph Rhythm
- **Target length:** 12–18 words average.  
- Vary length; no more than 3 similar sentences in a row.  
- **Paragraphs:** 2–6 sentences. One single-line paragraph allowed for impact.  
- **Adverbs:** Max two “-ly” per paragraph, ten per 1k words.  
- **Beat rule:** Every 3–4 lines of dialogue, ground bodies with physical beat.  

---

## 5) Structure: Chapter, Scene, Paragraph
**Chapter shape:**  
- Open on image + motion within 2 sentences.  
- Deliver goal, obstacle, turn.  
- End on image, choice, or reversal. No recaps.  

**Scene engine:**  
- Who wants what now.  
- What changes the temperature.  
- What choice/trouble exits scene.  

**Paragraph craft:**  
- First clause = image/action.  
- Middle = friction or counterpoint.  
- Final = tilt forward.  

---

## 6) Show, Do Not Lecture
- No essays or corporate intros/closings.  
- **Banned:** “In the world of,” “In today’s fast-paced world,” “In conclusion,” etc.  
- **Exposition arrives via:**  
  - Physical procedure  
  - Short exchange over work  
  - Paper/map stamped or folded  

---

## 7) Dialogue Conventions
- Tags = “said” and “asked.” Rare fancy tags.  
- Attribution by action beats.  
- People compress words under stress.  
- Narrator never asks rhetorical questions. Characters can.  

**Bad:**  
> “In conclusion, we should go now,” she exclaimed.  

**Good:**  
> “We go now,” Kestrel said, closing the stamp pad.  

---

## 8) Imagery, Metaphor, and Motifs
- Similes only if they sharpen mechanism or emotion. One per scene max.  
- Allowed domains: light, tide, gear, paper, stone, brass, rail.  
- **Banned:** cosmic, angelic, dreamscape, space-age imagery.  
- Each chapter: one primary motif + one echo.  

**Payoff grammar:**  
- Oval halo before fix → round after bind.  
- Early echo → wrong phase; clean echo → corrected.  
- Ring open break → home; closed → name reason.  

---

## 9) The Craft on the Page
- **Order:** Salt → chalk → lantern. Always.  
- **Cadence:** Is breath. Always name cadence + cycles when binding.  
- **Costs:** Show overbinding (copper taste, ache, nosebleed), then aftercare (sugar water, lull cadence).  
- **Guardrails:** No miracles, no portals. Seams = misalignments. Only Listeners attune Keystone.  

---

## 10) Transitions and Time
- Transitions: start with time/place (“By dusk,” “At the steps”).  
- **Banned:** “Furthermore,” “Moreover,” “Additionally,” “Consequently,” etc.  
- Time jumps: give one marker (shadow, bell quarter, shutter closing).  

---

## 11) Anticliché and Banned Language
**Core bans:**  
- “It is important to note that,” “in order to,” “due to the fact that,” “ever-evolving landscape,” etc.  
- Cliché beats: “breath she didn’t know,” “heart hammering,” “knife of cold.”  
- AI tells: “a tapestry of,” “it is a testament to.”  

**Replace:**  
- “in order to” → “to”  
- “due to the fact that” → “because”  
- Cut “very” and “really” unless voice demands in dialogue.  

---

## 12) Preferred Verbs and On-brand Comparisons
**Verb pools:**  
- Movement: edge, slip, brace, thread, plant, haul  
- Light: tighten, thin, halo, bead, sweat  
- Rhythm: hum, thrum, tick, ring, dampen  
- Craft: circle, spiral, lattice, loop, chevron, bind, attune  

**Examples:**  
- “The halo tightened into a coin.”  
- “The tide shouldered the quay.”  
- “A stamp set the truth square.”  

---

## 13) Continuity and Canon Checks
**Per scene:**  
- Seam level, cadence, cycles noted.  
- Materials order correct.  
- Props custody tracked.  
- Motif noted and paid or left open.  

**Per chapter:**  
- Cross-check timeline.json for day/time.  
- Location IDs correct.  
- New canon → bible files, not memory.  

---

## 14) Safety, Ethics, and Boundaries
- Ivy never kills.  
- Always choose living over echoes.  
- Wardens = volunteers, not secret government or school.  
- Public safety first. Break ring toward home.  

---

## 15) Linter Cues for Editors
Run regex scans before commit:  
- **Ban openers:** ^In the world of, ^In today’s fast-paced world, ^The concept of  
- **Ban closers:** ^In conclusion, ^In summary, ^In essence  
- **Other scans:** em dash (—), banned phrases, weak adverbs, rhetorical questions at paragraph end.  

**Thresholds:**  
- Max 1 list per chapter.  
- Max 0 rhetorical questions in narration.  
- Max 1 exclamation.  
- Max 1 ellipsis.  

---

## 16) Chapter Header Template
```yaml
---
chapter: 12
title: Letters Not Sent
pov: ivy
day: -2
time: "Night"
locations: [rowhouse_lane]
motif_primary: threshold
motif_echo: dog
seam_level: 1
cadence_used: null
props_in_play: [token, salt_tin, door_lamp]
goals:
  - Ivy wants truth from June without breaking trust.
risks:
  - Family fracture if pushed too hard.
change:
  - Truth admitted about Ivy's mother. Letters exist.
---
```
## 17) Drafting Workflow in Cursor

**Before drafting:**
- Load bible files, timeline.json, style_lexicon.json, and this file.  
- Paste chapter header.  
- Paste 3-bullet beat plan.  

**Generate:**
- Ask for one continuous scene, no lists.  
- Require cadence names/counts and craft order.  

**Revise:**
- **Pass A:** Voice & bans  
- **Pass B:** Sensory & props  
- **Pass C:** Exit image  

**Log:** Update timeline.json and props file as needed.  

---

## 18) Example Fixes

**Bad paragraph:**  
> In today’s fast-paced world, it is important to note that Ivy needed to harness the power of her lantern...

**Good paragraph:**  
> Ivy thumbed the vent and counted in two, out two. The halo tightened, round now...

**Bad dialogue:**  
> “In conclusion, we should proceed to the clocktower immediately,” Cole exclaimed.  

**Good dialogue:**  
> “Clocktower. Now,” Cole said. He already had the keys.  

---

## 19) What the AI Must Never Do
- Invent portals or rescue the dead.  
- Let non-Listener attune Keystone.  
- Resolve scene with TED Talk, pep talk, or recap.  
- Describe magic with spell words. It is cadence + geometry.  
- Make Wardens a secret academy or police force.  

---

## 20) Quality Gates Before Commit
- Canon check passed.  
- Bans purged.  
- Motif present and paid or deliberately carried.  
- Cadence & costs recorded.  
- Props custody clear.  
- Exit image in place.  
- Word rhythm varied.  
- Chapter header accurate.  

---

## 21) Quick Prompts for Regeneration

**Tighten voice:**  
> Rewrite with grounded diction. No lists. One simile max. Replace abstractions with light, sound, materials.  

**Add physical beats:**  
> Insert one action beat every 3 lines of dialogue.  

**Purge AI-isms:**  
> Delete corporate transitions. Use time/place instead. Keep sentences near 15 words.  

**Canon enforce:**  
> Salt → chalk → lantern. Name cadence and counts. Add aftercare if overbinding.  

---

## 22) Example Micro Edits
- “She realized that the lamp looked wrong.” → “The halo sat oval in the fog.”  
- “They navigated the complexities of the tunnel.” → “They kept right hands on brick and counted steps.”  
- “It is important to note that the bell was late.” → “The strike landed a hair late.”  

---

## 23) Ratings for Self-Audit
Score each scene (1–5). Fix any 3 or lower.  
- POV purity  
- Concrete diction  
- Motif execution  
- Cadence correctness  
- Prop continuity  
- Exit image strength  
- Ban compliance  

---

## 24) Final Reminders
- Light doesn’t need to be brighter—only steady.  
- Rings need a break toward home.  
- Breath beats current.  
- Choose the living.  
- If a line calls attention to itself, cut it or make it earn its place.  
