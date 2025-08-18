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

manuscript/     # Working manuscript files
├─ active/      # Current 3-4 chapters (keep in Cursor context)
├─ completed/   # Archived chapters (reference on demand)
├─ drafts/      # Work in progress
├─ session_template.md
└─ context_refresh_protocol.md

rules/          # Writing rules and prompts
├─ prompts/     # AI generation prompts
├─ pov_rules.md
├─ system_style.md
└─ ai_writing_rules.md

data/           # Canon and continuity
├─ characters.json
├─ locations.json
├─ continuity_cards.jsonl
├─ style_lexicon.json
└─ timeline.json

bible/          # Story bible and worldbuilding
├─ magic_rules.md
├─ props_artifacts.md
├─ setting_catalogue.md
├─ plot_faq.md
└─ symbolism_motifs.md

scripts/        # Build and utility scripts
state/          # Current story state
outline/        # Plot outlines and beat sheets
```

## Workflow

### **Daily Writing Session**
1. **Session Start**: Run `./scripts/whats_next.sh` to see today's target
2. **Generate Chapter**: Run `./scripts/generate_chapter.sh [number]` to create chapter file
3. **Write Chapter**: Tell AI: "Write Chapter [X] using pinned canon and timeline.json"
4. **Critic Pass**: Use `rules/prompts/critic_pass.md`
5. **Fixer Pass**: Use `rules/prompts/fixer_pass.md`
6. **Session End**: Run `./scripts/archive_chapter.sh [number]` to archive

### **Context Management**
- **Keep 3-4 chapters** in `manuscript/active/` (Cursor context)
- **Archive completed chapters** to `manuscript/completed/`
- **Update running summary** after each chapter
- **Reference outlines** from `outline/chapter_outlines.md`
- **Follow context refresh protocol** in `manuscript/context_refresh_protocol.md`

## Word Count Plan

- **Target**: 85,000 words (±10%)
- **Chapters**: 24 chapters × ~3,500 words
- **Pages**: ~300 pages

## Key Rules

- **POV**: Third person limited (Ivy's perspective)
- **Tense**: Past tense
- **Style**: Grade 6-7 reading level, concrete sensory details
- **No**: Purple prose, em dashes, emojis, head-jumping

## **Context Management**

### **Why This System Works**
- **Active context** stays manageable (3-4 chapters max)
- **Running summary** provides living memory
- **Archived chapters** available when needed
- **Canon files** always pinned for consistency

### **Daily Session Flow**
1. **Open "Lamplighter — Drafting" chat** (keep this thread open)
2. **Run `./scripts/whats_next.sh`** to see today's target
3. **Run `./scripts/generate_chapter.sh [X]`** to create chapter file
4. **Tell AI** to write the chapter using pinned canon
5. **Run `./scripts/archive_chapter.sh [X]`** when complete
6. **AI automatically** references timeline.json and all canon files

### **Context Refresh Commands**
```bash
# See what to write today
./scripts/whats_next.sh

# Generate chapter file
./scripts/generate_chapter.sh [number]

# Archive when done
./scripts/archive_chapter.sh [number]

# Check what's active
ls manuscript/active/
```

## **Export**

Final manuscript will be exported to EPUB3 format for e-book distribution.
