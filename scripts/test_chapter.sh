#!/bin/bash
# Chapter Testing Script - The Lamplighter's Daughter
# Tests a chapter through critic and fixer passes

CHAPTER_FILE=$1

if [ -z "$CHAPTER_FILE" ]; then
    echo "Usage: ./scripts/test_chapter.sh [path_to_chapter.md]"
    echo "Example: ./scripts/test_chapter.sh manuscript/active/ch1_A_Door_of_Salt.md"
    exit 1
fi

if [ ! -f "$CHAPTER_FILE" ]; then
    echo "❌ Chapter file not found: $CHAPTER_FILE"
    exit 1
fi

echo "🔍 Testing chapter: $CHAPTER_FILE"
echo ""

echo "=== CRITIC PASS ==="
echo "Manual step: Ask AI to run critic_pass.md on this chapter"
echo "Command: 'Run critique on this chapter using rules/prompts/critic_pass.md'"
echo ""

echo "=== FIXER PASS ==="
echo "Manual step: Ask AI to apply fixer_pass.md after reviewing critique"
echo "Command: 'Apply fixes using rules/prompts/fixer_pass.md based on critique'"
echo ""

echo "=== LINTER CHECK ==="
echo "Checking for style violations..."

# Basic checks you can add
echo "📝 Word count:"
wc -w "$CHAPTER_FILE"

echo ""
echo "✅ Chapter ready for manual critic/fixer testing in Cursor"
