#!/bin/bash

# Archive Chapter Script - The Lamplighter's Daughter
# Archives completed chapters to completed/ directory

CHAPTER_NUM=$1

if [ -z "$CHAPTER_NUM" ]; then
    echo "Usage: ./scripts/archive_chapter.sh [chapter_number]"
    echo "Example: ./scripts/archive_chapter.sh 1"
    exit 1
fi

# Find chapter files in active/
CHAPTER_FILES=$(find manuscript/active/ -name "ch${CHAPTER_NUM}_*" -type f)

if [ -z "$CHAPTER_FILES" ]; then
    echo "❌ No chapter $CHAPTER_NUM files found in manuscript/active/"
    exit 1
fi

echo "📚 Archiving Chapter $CHAPTER_NUM..."

# Move files to completed/
for file in $CHAPTER_FILES; do
    filename=$(basename "$file")
    mv "$file" "manuscript/completed/"
    echo "✅ Moved $filename to completed/"
done

echo ""
echo "🎯 Next steps:"
echo "1. Update running summary with new facts"
echo "2. Generate next chapter: ./scripts/generate_chapter.sh $((CHAPTER_NUM + 1))"
echo "3. Git commit: git add . && git commit -m 'Chapter $CHAPTER_NUM complete'"
echo ""
echo "📁 Active chapters:"
ls manuscript/active/ 2>/dev/null || echo "No active chapters"
