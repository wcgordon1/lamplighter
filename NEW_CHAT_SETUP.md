# New Chat Setup - The Lamplighter's Daughter

## 🚀 Quick Start for Fresh Chat Context

### **Step 1: Verify Environment**
```bash
# Run this first to check everything is working
./scripts/context_refresh.sh
```

### **Step 2: Load Essential Context**
Pin these files in the new chat (use @ symbol):
- `outline/chapter_outlines.md`
- `bible/magic_rules.md`  
- `bible/props_artifacts.md`
- `bible/setting_catalog.md`
- `bible/plot_faq.md`
- `bible/symbolism_motifs.md`
- `data/style_lexicon.json`
- `data/timeline.json`
- `data/locations.json`
- `data/characters.json`
- `rules/ai_writing_rules.md`
- `state/running_summary.md`

### **Step 3: Extract Established Canon**
```bash
# Show AI all established facts from previous chapters
./scripts/extract_new_facts.sh
```

### **Step 4: Get Next Chapter Target**
```bash
# Find out what chapter to write next
./scripts/whats_next.sh
./scripts/word_count_target.sh [next_chapter_number]
```

### **Step 5: Verify AI Understanding**
Ask the AI:
1. "Can you see all the pinned files?"
2. "What chapter should we write next?"
3. "List the established new_facts from previous chapters"
4. "What are the magic system order of operations?"

If AI answers correctly, proceed. If confused, show it the output from `./scripts/extract_new_facts.sh`.

## 🛡️ Canon Protection Enabled

The new `.cursor/rules/` system includes:
- **canon-protection.mdc** - Prevents story changes and hallucination
- **user-verification.mdc** - Forces AI to ask before making uncertain additions
- **magic-system.mdc** - Enforces order of operations and consistency
- **chapter-workflow.mdc** - Maintains proper frontmatter and word counts

## 📊 Current Project Status

**Completed Chapters:** 4 (Ch1-Ch4)
**Word Count:** ~12,500 words total
**Established Canon Facts:** 36 tracked facts across chapters
**Next Target:** Chapter 5 "The Night Wardens" (3,400 words)

## 🔄 When to Cycle to New Chat

Watch for these warning signs:
- AI forgetting established character details
- Tool calls failing frequently  
- Contradicting recently established facts
- Responses becoming incoherent
- Context errors increasing

If you see these, start a fresh chat with this setup guide.

## 📝 Commands Cheat Sheet

```bash
# Get established canon
./scripts/extract_new_facts.sh

# Check next chapter target  
./scripts/whats_next.sh
./scripts/word_count_target.sh 5

# Verify project health
./scripts/context_refresh.sh

# Check current work
ls manuscript/active/
wc -w manuscript/active/ch*.md

# Archive completed chapter
mv manuscript/active/ch5_*.md manuscript/completed/
```

**The goal: Maintain perfect continuity across 24 chapters and 85,000 words.**
