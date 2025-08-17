# The Lamplighter's Daughter

A middle-grade fantasy novel about a fourteen-year-old girl who discovers she can "hear" weak seams in reality and joins the Night Wardens who protect her foggy harbor city.

## Project Structure

```
book/           # Final manuscript files
├─ chapters/    # Individual chapter markdown files
├─ frontmatter.md
├─ backmatter.md
├─ ebook.css    # E-book styling
└─ assets/      # Cover, images, etc.

rules/          # Writing rules and prompts
├─ prompts/     # AI generation prompts
├─ pov_rules.md
├─ system_style.md
└─ ai_writing_rules.md

data/           # Canon and continuity
├─ characters.json
├─ locations.json
├─ continuity_cards.jsonl
└─ banned_phrases.json

bible/          # Story bible and worldbuilding
├─ story_bible.md
├─ magic_rules.md
└─ symbolism_motifs.md

scripts/        # Build and utility scripts
state/          # Current story state
outline/        # Plot outlines and beat sheets
```

## Workflow

1. **Generate Chapter**: Use `rules/prompts/chapter_drafter.md`
2. **Critic Pass**: Use `rules/prompts/critic_pass.md`
3. **Fixer Pass**: Use `rules/prompts/fixer_pass.md`
4. **Update Continuity**: Add CARD JSON to `data/continuity_cards.jsonl`
5. **Repeat**: Every 3-4 chapters, regenerate running summary

## Word Count Plan

- **Target**: 85,000 words (±10%)
- **Chapters**: 24 chapters × ~3,500 words
- **Pages**: ~300 pages

## Key Rules

- **POV**: Third person limited (Ivy's perspective)
- **Tense**: Past tense
- **Style**: Grade 6-7 reading level, concrete sensory details
- **No**: Purple prose, em dashes, emojis, head-jumping

## Export

Final manuscript will be exported to EPUB3 format for e-book distribution.
