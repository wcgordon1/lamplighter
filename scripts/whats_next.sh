#!/bin/bash

# What's Next Script - The Lamplighter's Daughter
# Shows you exactly what to write today

echo "=== TODAY'S WRITING TARGET ==="
echo ""

# Get the next chapter to write
NEXT_CHAPTER=$(jq '.timeline[0].chapter' data/timeline.json 2>/dev/null)
TITLE=$(jq -r '.timeline[0].title' data/timeline.json 2>/dev/null)
TARGET_WORDS=$(jq '.timeline[0].target_words' data/timeline.json 2>/dev/null)
DAY=$(jq '.timeline[0].day' data/timeline.json 2>/dev/null)
TIME=$(jq -r '.timeline[0].timeOfDay' data/timeline.json 2>/dev/null)
LOCATIONS=$(jq -r '.timeline[0].locations | join(", ")' data/timeline.json 2>/dev/null)
SEAM_LEVEL=$(jq '.timeline[0].seam_level' data/timeline.json 2>/dev/null)
CADENCE=$(jq -r '.timeline[0].cadence_used // "none"' data/timeline.json 2>/dev/null)

if [ "$NEXT_CHAPTER" = "null" ] || [ -z "$NEXT_CHAPTER" ]; then
    echo "❌ No timeline data found. Check data/timeline.json"
    exit 1
fi

echo "📖 Chapter: $NEXT_CHAPTER"
echo "📝 Title: $TITLE"
echo "🎯 Target: $TARGET_WORDS words"
echo "📅 Timeline: Day $DAY, $TIME"
echo "📍 Locations: $LOCATIONS"
echo "⚡ Seam Level: $SEAM_LEVEL"
echo "🎵 Cadence: $CADENCE"
echo ""

echo "=== YOUR WORKFLOW ==="
echo "1. Copy chapter outline to active/"
echo "2. Tell AI: 'Write Chapter $NEXT_CHAPTER using pinned canon and timeline.json'"
echo "3. Archive when done"
echo ""

echo "=== QUICK COMMANDS ==="
echo "# Copy outline to active"
echo "cp outline/chapter_outlines.md manuscript/active/ch${NEXT_CHAPTER}_outline.md"
echo ""
echo "# Check what's currently active"
echo "ls manuscript/active/"
echo ""
echo "# Archive when done"
echo "mv manuscript/active/ch${NEXT_CHAPTER}_*.md manuscript/completed/"
echo ""

echo "🎯 Just write. The AI knows everything from your pinned files."
