# Context Refresh Protocol

## **OVERVIEW**
This protocol keeps your Cursor context manageable while maintaining full story continuity.

## **CONTEXT MANAGEMENT RULES**

### **Active Context (Keep in Cursor)**
- **Last 3-4 chapters** in `manuscript/active/`
- **Running summary** (`state/running_summary.md`)
- **All canon files** (bible/*, data/*, rules/*, outline/*)
- **Current chapter outline** and target

### **Archive Context (Available on Demand)**
- **Completed chapters** in `manuscript/completed/`
- **Previous continuity cards** in `data/continuity_cards.jsonl`
- **Historical running summaries** (if needed)

## **DAILY WORKFLOW**

### **Session Start**
1. **Open your "Lamplighter — Drafting" chat**
2. **Check running summary** for current state
3. **Review active chapters** (last 3-4)
4. **Reference chapter outline** for today's target
5. **Fill out session template** with current context

### **During Writing**
1. **Generate chapter** using enhanced prompts
2. **Run critic pass** for feedback
3. **Run fixer pass** for revisions
4. **Complete CARD JSON** with final state

### **Session End**
1. **Update running summary** with new facts
2. **Archive completed chapter** to `manuscript/completed/`
3. **Move next chapter** to `manuscript/active/`
4. **Commit to git** with descriptive message

## **ARCHIVE OPERATIONS**

### **Archive a Completed Chapter**
```bash
# Move completed chapter to archive
mv manuscript/active/ch01_a_door_of_salt.md manuscript/completed/

# Update running summary
# Update continuity cards
# Git commit
```

### **Activate Next Chapter**
```bash
# Move next chapter to active
mv manuscript/drafts/ch02_stacks_and_strays.md manuscript/active/

# Update session template
# Refresh context in Cursor
```

## **CONTEXT REFRESH COMMANDS**

### **Quick Context Check**
```bash
# See what's currently active
ls manuscript/active/

# Check running summary word count
wc -w state/running_summary.md

# View recent continuity cards
tail -5 data/continuity_cards.jsonl
```

### **Full Context Refresh**
```bash
# Archive all but last 3 chapters
# Update running summary
# Move next chapter to active
# Git commit with "Context refresh: Chapter X archived"
```

## **EMERGENCY CONTEXT RECOVERY**

### **If Context Gets Too Large**
1. **Archive oldest active chapters** to completed/
2. **Trim running summary** to last 5-6 chapters
3. **Keep only essential continuity** in running summary
4. **Reference archived chapters** by file when needed

### **If You Need Historical Context**
1. **Reference specific chapter** from completed/
2. **Check continuity cards** for specific details
3. **Update running summary** with relevant historical facts
4. **Return to active context** when done

## **BEST PRACTICES**

- **Never have more than 4 chapters** in active context
- **Update running summary** after every chapter
- **Archive immediately** when chapter is complete
- **Use git commits** to track context changes
- **Reference outlines** for chapter structure
- **Keep canon files** always pinned in Cursor
