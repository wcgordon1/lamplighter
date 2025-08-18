#!/bin/bash
# Context Refresh Script - The Lamplighter's Daughter
# Run this at the start of any new chat to verify full context

echo "🔄 CONTEXT REFRESH CHECK - The Lamplighter's Daughter"
echo "======================================================="
echo ""

# Check if we're in the right directory
if [ ! -f "data/timeline.json" ]; then
    echo "❌ Not in lamplighters-daughter directory. Navigate to project root first."
    exit 1
fi

echo "📁 PROJECT STATUS:"
echo "  - Current directory: $(pwd)"
echo "  - Git status: $(git log --oneline -1 2>/dev/null || echo 'No git repo')"
echo ""

echo "📋 ESSENTIAL FILES CHECK:"
essential_files=(
    "outline/chapter_outlines.md"
    "bible/magic_rules.md"
    "bible/props_artifacts.md" 
    "bible/setting_catalog.md"
    "bible/plot_faq.md"
    "bible/symbolism_motifs.md"
    "data/style_lexicon.json"
    "data/timeline.json"
    "data/locations.json"
    "data/characters.json"
    "rules/ai_writing_rules.md"
    "state/running_summary.md"
)

for file in "${essential_files[@]}"; do
    if [ -f "$file" ]; then
        echo "  ✅ $file"
    else
        echo "  ❌ MISSING: $file"
    fi
done
echo ""

echo "🔧 SCRIPT FUNCTIONALITY CHECK:"
if [ -x "scripts/extract_new_facts.sh" ]; then
    echo "  ✅ extract_new_facts.sh executable"
else
    echo "  ❌ extract_new_facts.sh not executable - run: chmod +x scripts/extract_new_facts.sh"
fi

if [ -x "scripts/word_count_target.sh" ]; then
    echo "  ✅ word_count_target.sh executable"
else
    echo "  ❌ word_count_target.sh not executable - run: chmod +x scripts/word_count_target.sh"
fi

if [ -x "scripts/whats_next.sh" ]; then
    echo "  ✅ whats_next.sh executable"
else
    echo "  ❌ whats_next.sh not executable - run: chmod +x scripts/whats_next.sh"
fi
echo ""

echo "📖 CURRENT CHAPTER STATUS:"
if ls manuscript/active/ch*.md 1> /dev/null 2>&1; then
    echo "  Active chapters:"
    for chapter in manuscript/active/ch*.md; do
        if [ -f "$chapter" ]; then
            words=$(wc -w < "$chapter")
            echo "    - $(basename "$chapter"): $words words"
        fi
    done
else
    echo "  ❌ No active chapters found"
fi
echo ""

echo "🎯 NEXT CHAPTER TARGET:"
if [ -x "scripts/whats_next.sh" ]; then
    ./scripts/whats_next.sh
else
    echo "  ❌ whats_next.sh not available"
fi
echo ""

echo "📚 CURSOR RULES STATUS:"
if [ -d ".cursor/rules" ]; then
    echo "  ✅ New .cursor/rules/ directory found"
    echo "  Rules files:"
    for rule in .cursor/rules/*.mdc; do
        if [ -f "$rule" ]; then
            echo "    - $(basename "$rule")"
        fi
    done
else
    echo "  ❌ .cursor/rules/ directory missing"
fi
echo ""

echo "🚀 READY FOR NEW CHAT!"
echo ""
echo "📝 FIRST COMMANDS TO RUN IN NEW CHAT:"
echo "  1. Test context: Ask AI to confirm access to pinned files"
echo "  2. ./scripts/extract_new_facts.sh  # Show established canon"
echo "  3. ./scripts/whats_next.sh         # Next chapter target"
echo "  4. Continue writing from current chapter"
echo ""
echo "💡 If AI seems confused, show it this script output and the extract_new_facts.sh results."
