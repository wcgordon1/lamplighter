# Quick Start Guide - The Lamplighter's Daughter

## **First Time Setup**

### **1. Pin Your Canon Files in Cursor**
In your "Lamplighter — Drafting" chat, pin these files:
- `outline/chapter_outlines.md` ← **Your roadmap**
- `bible/magic_rules.md` ← Magic system
- `bible/props_artifacts.md` ← Who has what
- `bible/setting_catalogue.md` ← Greywater details
- `bible/plot_faq.md` ← Plot answers
- `bible/symbolism_motifs.md` ← Recurring themes
- `data/style_lexicon.json` ← Writing rules
- `data/timeline.json` ← Chronology
- `data/locations.json` ← Places
- `rules/ai_writing_rules.md` ← AI guardrails
- `state/running_summary.md` ← Current state

### **2. Start Your First Chapter**
```bash
# Chapter 1 is already in active/
ls manuscript/active/

# Fill out session template
cp manuscript/session_template.md manuscript/today_session.md
# Edit today_session.md with Chapter 1 details
```

## **Daily Writing Workflow**

### **Session Start (5 minutes)**
1. **Open your drafting chat** (keep this thread open)
2. **Check running summary**: `cat state/running_summary.md`
3. **Fill out session template** with today's context
4. **Reference chapter outline** for target beats

### **Writing Session**
1. **Generate chapter** using enhanced prompts
2. **Run critic pass** for feedback
3. **Run fixer pass** for revisions
4. **Complete CARD JSON** with final state

### **Session End (10 minutes)**
1. **Update running summary** with new facts
2. **Archive completed chapter**:
   ```bash
   mv manuscript/active/ch01_*.md manuscript/completed/
   ```
3. **Move next chapter** to active:
   ```bash
   mv manuscript/drafts/ch02_*.md manuscript/active/
   ```
4. **Git commit**:
   ```bash
   git add .
   git commit -m "Chapter 1 complete: A Door of Salt"
   ```

## **Context Management**

### **Keep in Cursor Context (Always)**
- **Last 3-4 chapters** in `manuscript/active/`
- **Running summary** (`state/running_summary.md`)
- **All canon files** (bible/*, data/*, rules/*, outline/*)

### **Archive When Complete**
- **Completed chapters** → `manuscript/completed/`
- **Old continuity cards** → `data/continuity_cards.jsonl`
- **Historical summaries** → Reference by file when needed

### **Emergency Context Recovery**
If context gets too large:
```bash
# Archive oldest active chapters
mv manuscript/active/ch01_*.md manuscript/completed/
mv manuscript/active/ch02_*.md manuscript/completed/

# Keep only last 2-3 chapters in active/
ls manuscript/active/

# Update running summary to focus on recent events
```

## **Key Commands**

### **Check Current Status**
```bash
# What's active right now
ls manuscript/active/

# Current running summary length
wc -w state/running_summary.md

# Recent continuity cards
tail -3 data/continuity_cards.jsonl
```

### **Archive Operations**
```bash
# Archive completed chapter
mv manuscript/active/ch01_*.md manuscript/completed/

# Activate next chapter
mv manuscript/drafts/ch02_*.md manuscript/active/

# Full context refresh
git add .
git commit -m "Context refresh: Chapter X archived"
```

## **Why This Works**

1. **Active context** stays manageable (3-4 chapters max)
2. **Running summary** provides living memory
3. **Archived chapters** available when needed
4. **Canon files** always pinned for consistency
5. **Single chat thread** maintains AI personality

## **Need Help?**

- **Context too large?** Archive oldest chapters
- **Missing details?** Check archived chapters or continuity cards
- **Canon questions?** Reference pinned bible files
- **Structure issues?** Check chapter outlines

**Remember: Keep your "Lamplighter — Drafting" chat open for the entire project!**
