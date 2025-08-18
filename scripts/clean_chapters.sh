#!/bin/bash

# Clean chapters for publication by removing ===CARD=== sections
# Usage: ./scripts/clean_chapters.sh

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Project root directory
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_ROOT"

echo -e "${BLUE}Cleaning chapters for publication${NC}"

# Create publish directory
mkdir -p manuscript/publish

# Count source chapters
source_count=$(ls manuscript/active/ch*.md 2>/dev/null | wc -l | tr -d ' ')
if [[ $source_count -eq 0 ]]; then
    echo -e "${RED}Error: No chapter files found in manuscript/active/${NC}"
    exit 1
fi

echo -e "${YELLOW}Processing $source_count chapters...${NC}"

# Clean each chapter file
cleaned_count=0
for source_file in manuscript/active/ch*.md; do
    if [[ ! -f "$source_file" ]]; then
        continue
    fi
    
    # Get just the filename
    filename=$(basename "$source_file")
    target_file="manuscript/publish/$filename"
    
    echo -e "  Cleaning ${filename}..."
    
    # Use awk to copy everything before ===CARD=== section and remove word counts
    # This handles both "===CARD===" and "### **===CARD===**" formats
    # This preserves YAML frontmatter and chapter content, removes development metadata
    awk '
        /^===CARD===$/ { exit }
        /^### \*\*===CARD===\*\*$/ { exit }
        /^\*\*Word count:.*\*\*$/ { next }
        { print }
    ' "$source_file" > "$target_file"
    
    # Verify the cleaned file isn't empty
    if [[ ! -s "$target_file" ]]; then
        echo -e "${RED}Warning: $filename resulted in empty file${NC}"
        rm -f "$target_file"
    else
        cleaned_count=$((cleaned_count + 1))
    fi
done

echo -e "\n${GREEN}✅ Cleaned $cleaned_count chapters${NC}"
echo -e "${GREEN}📁 Published files: manuscript/publish/${NC}"

# Show what was cleaned
echo -e "\n${YELLOW}Cleaned files:${NC}"
ls -1 manuscript/publish/ch*.md 2>/dev/null | while read file; do
    lines=$(wc -l < "$file" | tr -d ' ')
    echo -e "  ${GREEN}✓${NC} $(basename "$file") ($lines lines)"
done

# Quick verification - check that no CARD sections remain in chapter files
echo -e "\n${YELLOW}Verifying no CARD sections remain in chapters...${NC}"
if grep -r "===CARD===" manuscript/publish/ch*.md 2>/dev/null; then
    echo -e "${RED}Warning: Found remaining CARD sections in chapter files!${NC}"
    exit 1
else
    echo -e "${GREEN}✓ All CARD sections successfully removed from chapters${NC}"
fi

echo -e "\n${BLUE}Clean chapters ready for EPUB generation${NC}"
