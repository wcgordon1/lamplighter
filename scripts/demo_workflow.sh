#!/bin/bash

# Demo Workflow Script - The Lamplighter's Daughter
# Shows the complete automated writing workflow

echo "🚀 AUTOMATED WRITING WORKFLOW DEMO"
echo "=================================="
echo ""

echo "📋 STEP 1: See what to write today"
echo "   Run: ./scripts/whats_next.sh"
echo ""

echo "📋 STEP 2: Generate chapter file"
echo "   Run: ./scripts/generate_chapter.sh [chapter_number]"
echo ""

echo "📋 STEP 3: Write the chapter"
echo "   Tell AI: 'Write Chapter [X] using pinned canon and timeline.json'"
echo "   AI automatically uses:"
echo "   - Chapter outline from timeline.json"
echo "   - Magic rules from bible/magic_rules.md"
echo "   - Character details from data/characters.json"
echo "   - Style rules from data/style_lexicon.json"
echo ""

echo "📋 STEP 4: Archive when done"
echo "   Run: ./scripts/archive_chapter.sh [chapter_number]"
echo ""

echo "🎯 THAT'S IT! No manual template filling needed."
echo "The AI reads everything from your pinned canon files."
echo ""

echo "💡 PRO TIP: Keep your 'Lamplighter — Drafting' chat open"
echo "and pin all the canon files once. Then just run the scripts!"
