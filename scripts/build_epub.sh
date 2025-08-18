#!/bin/bash

# Build EPUB for "The Lamplighter's Daughter"
# Usage: ./scripts/build_epub.sh

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

echo -e "${BLUE}Building EPUB for 'The Lamplighter's Daughter'${NC}"
echo "Project root: $PROJECT_ROOT"

# Check dependencies
echo -e "\n${YELLOW}Checking dependencies...${NC}"

# Check for pandoc
if ! command -v pandoc &> /dev/null; then
    echo -e "${RED}Error: pandoc is not installed${NC}"
    echo "Install with: brew install pandoc (macOS) or apt install pandoc (Ubuntu)"
    exit 1
else
    echo -e "${GREEN}✓ pandoc found:${NC} $(pandoc --version | head -1)"
fi

# Check for required files
echo -e "\n${YELLOW}Checking required files...${NC}"

required_files=(
    "metadata.yaml"
    "book/frontmatter.md"
    "book/backmatter.md"
    "book/epub/ebook.css"
)

for file in "${required_files[@]}"; do
    if [[ ! -f "$file" ]]; then
        echo -e "${RED}Error: Required file not found: $file${NC}"
        exit 1
    else
        echo -e "${GREEN}✓${NC} $file"
    fi
done

# Clean chapters first
echo -e "\n${YELLOW}Cleaning chapters for publication...${NC}"
./scripts/clean_chapters.sh

# Count cleaned chapters
chapter_count=$(ls manuscript/publish/ch*.md 2>/dev/null | wc -l | tr -d ' ')
if [[ $chapter_count -eq 0 ]]; then
    echo -e "${RED}Error: No cleaned chapter files found in manuscript/publish/${NC}"
    echo "Make sure ./scripts/clean_chapters.sh ran successfully"
    exit 1
else
    echo -e "${GREEN}✓${NC} Ready to build with $chapter_count cleaned chapters"
fi

# Create output directory
mkdir -p book/epub
echo -e "${GREEN}✓${NC} Output directory ready: book/epub/"

# Check for cover image (supports both .jpg and .jpeg)
cover_image=""
if [[ -f "book/epub/cover.jpg" ]]; then
    cover_image="book/epub/cover.jpg"
elif [[ -f "book/epub/cover.jpeg" ]]; then
    cover_image="book/epub/cover.jpeg"
fi

if [[ -z "$cover_image" ]]; then
    echo -e "${YELLOW}Warning: Cover image not found (looked for cover.jpg or cover.jpeg)${NC}"
    echo "The EPUB will be built without a cover image."
    cover_arg=""
else
    echo -e "${GREEN}✓${NC} Cover image found: $cover_image"
    cover_arg="--epub-cover-image=$cover_image"
fi

# Build the EPUB
echo -e "\n${YELLOW}Building EPUB...${NC}"

# Create ordered list of cleaned chapter files
chapter_files=($(ls manuscript/publish/ch*.md | sort -V))

echo "Chapters to include:"
for file in "${chapter_files[@]}"; do
    echo "  - $(basename "$file")"
done

# Run pandoc
pandoc_cmd="pandoc \
    book/frontmatter.md \
    ${chapter_files[*]} \
    book/backmatter.md \
    --from=markdown+smart \
    --to=epub3 \
    --metadata-file=metadata.yaml \
    --css=book/epub/ebook.css \
    $cover_arg \
    --toc \
    --toc-depth=2 \
    --split-level=1 \
    --standalone \
    -o book/epub/The_Lamplighters_Daughter.epub"

echo -e "\n${BLUE}Running pandoc...${NC}"
echo "$pandoc_cmd"

eval $pandoc_cmd

# Check if EPUB was created successfully
if [[ -f "book/epub/The_Lamplighters_Daughter.epub" ]]; then
    file_size=$(ls -lh book/epub/The_Lamplighters_Daughter.epub | awk '{print $5}')
    echo -e "\n${GREEN}✅ EPUB created successfully!${NC}"
    echo -e "${GREEN}📚 File: book/epub/The_Lamplighters_Daughter.epub${NC}"
    echo -e "${GREEN}📏 Size: $file_size${NC}"
    
    # Get word count estimate
    total_words=$(cat "${chapter_files[@]}" book/frontmatter.md book/backmatter.md | wc -w | tr -d ' ')
    echo -e "${GREEN}📝 Estimated words: $total_words${NC}"
    
    echo -e "\n${BLUE}Next steps:${NC}"
    echo "1. Test the EPUB in various readers (Apple Books, Adobe Digital Editions, Calibre)"
    echo "2. Add a cover image to book/epub/cover.jpg if you haven't already"
    echo "3. Consider validating with epubcheck if available"
    
else
    echo -e "\n${RED}❌ EPUB creation failed${NC}"
    exit 1
fi
