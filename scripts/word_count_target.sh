#!/bin/bash
# Word Count Target Calculator - The Lamplighter's Daughter
# Gets target word count from timeline.json and tracks progress

CHAPTER_NUM=$1

if [ -z "$CHAPTER_NUM" ]; then
    echo "Usage: ./scripts/word_count_target.sh [chapter_number]"
    exit 1
fi

if ! command -v jq &> /dev/null; then
    echo "❌ jq is required. Install with: brew install jq"
    exit 1
fi

# Get target from timeline
TARGET_WORDS=$(jq -r ".timeline[] | select(.chapter == $CHAPTER_NUM) | .target_words" data/timeline.json)

if [ "$TARGET_WORDS" = "null" ] || [ -z "$TARGET_WORDS" ]; then
    echo "❌ Chapter $CHAPTER_NUM not found in timeline.json"
    exit 1
fi

echo "🎯 Chapter $CHAPTER_NUM Target: $TARGET_WORDS words"

# Check if chapter file exists
CHAPTER_FILE="manuscript/active/ch${CHAPTER_NUM}_*.md"
if ls $CHAPTER_FILE 1> /dev/null 2>&1; then
    ACTUAL_WORDS=$(wc -w $CHAPTER_FILE | awk '{print $1}')
    DIFFERENCE=$((ACTUAL_WORDS - TARGET_WORDS))
    
    echo "📝 Current: $ACTUAL_WORDS words"
    echo "📊 Difference: $DIFFERENCE words"
    
    if [ $DIFFERENCE -lt -100 ]; then
        echo "⚠️  Need to ADD ~$((0 - DIFFERENCE)) words"
    elif [ $DIFFERENCE -gt 100 ]; then
        echo "⚠️  Need to CUT ~$DIFFERENCE words"
    else
        echo "✅ Within target range!"
    fi
else
    echo "📄 Chapter file not found - will target $TARGET_WORDS words"
fi
