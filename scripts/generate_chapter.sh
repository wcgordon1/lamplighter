#!/bin/bash

# Auto-Chapter Generator - The Lamplighter's Daughter
# Creates chapter files automatically from timeline.json

CHAPTER_NUM=$1

if [ -z "$CHAPTER_NUM" ]; then
    echo "Usage: ./scripts/generate_chapter.sh [chapter_number]"
    echo "Example: ./scripts/generate_chapter.sh 1"
    exit 1
fi

# Check if jq is installed
if ! command -v jq &> /dev/null; then
    echo "❌ jq is required. Install with: brew install jq"
    exit 1
fi

# Get chapter data from timeline
CHAPTER_DATA=$(jq ".timeline[] | select(.chapter == $CHAPTER_NUM)" data/timeline.json)

if [ "$CHAPTER_DATA" = "null" ] || [ -z "$CHAPTER_DATA" ]; then
    echo "❌ Chapter $CHAPTER_NUM not found in timeline.json"
    exit 1
fi

# Extract chapter details
TITLE=$(echo "$CHAPTER_DATA" | jq -r '.title')
DAY=$(echo "$CHAPTER_DATA" | jq -r '.day')
TIME=$(echo "$CHAPTER_DATA" | jq -r '.timeOfDay')
LOCATIONS=$(echo "$CHAPTER_DATA" | jq -r '.locations | join(", ")')
MOTIFS=$(echo "$CHAPTER_DATA" | jq -r '.motifs | join(", ")' 2>/dev/null || echo "none")
SEAM_LEVEL=$(echo "$CHAPTER_DATA" | jq -r '.seam_level')
CADENCE=$(echo "$CHAPTER_DATA" | jq -r '.cadence_used // "null"')
TARGET_WORDS=$(echo "$CHAPTER_DATA" | jq -r '.target_words')

# Create chapter file
CHAPTER_FILE="manuscript/active/ch${CHAPTER_NUM}_${TITLE// /_}.md"

cat > "$CHAPTER_FILE" << EOF
---
chapter: $CHAPTER_NUM
title: "$TITLE"
pov: ivy
day: $DAY
time: "$TIME"
locations: [$LOCATIONS]
motifs: [$MOTIFS]
seam_level: $SEAM_LEVEL
cadence_used: $CADENCE
props_in_play: []
goals:
  - [Primary goal from outline]
risks:
  - [Main risk or conflict]
change:
  - [What changes by chapter end]
---

## Chapter $CHAPTER_NUM: $TITLE

[CHAPTER CONTENT WILL BE GENERATED HERE]

**Target Words**: $TARGET_WORDS
**Seam Level**: $SEAM_LEVEL
**Cadence**: $CADENCE
EOF

echo "✅ Generated $CHAPTER_FILE"
echo ""
echo "📝 Next steps:"
echo "1. Tell AI: 'Write Chapter $CHAPTER_NUM using pinned canon and timeline.json'"
echo "2. AI will automatically use the outline and requirements"
echo "3. Archive when done: mv manuscript/active/ch${CHAPTER_NUM}_*.md manuscript/completed/"
