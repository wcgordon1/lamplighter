# EPUB Generation for "The Lamplighter's Daughter"

## Quick Start

Generate the EPUB with:
```bash
./scripts/build_epub.sh
```

This command automatically:
1. Cleans chapters (removes ===CARD=== sections from manuscript/active/)
2. Creates publish-ready files in manuscript/publish/
3. Builds EPUB from cleaned files

## Files Generated

- `The_Lamplighters_Daughter.epub` - The complete EPUB file
- `ebook.css` - EPUB3-optimized stylesheet

## Cover Image

To add a cover image:
1. Place a 1600x2400px JPG image at `book/epub/cover.jpg`
2. Uncomment the `cover-image` line in `metadata.yaml`
3. Rebuild with `./scripts/build_epub.sh`

## Testing the EPUB

Recommended readers for testing:
- **Apple Books** (macOS/iOS) - Best overall compatibility
- **Adobe Digital Editions** (Cross-platform) - Industry standard
- **Calibre** (Cross-platform) - Open source with validation
- **Kindle Previewer** (Amazon) - For Kindle compatibility

## Validation

For professional validation, install epubcheck:
```bash
brew install epubcheck
epubcheck book/epub/The_Lamplighters_Daughter.epub
```

## Current Status

✅ **Completed:**
- Extended metadata.yaml with EPUB-specific fields
- EPUB3-optimized CSS stylesheet
- Automated build script with dependency checking
- All 24 chapters included in correct order
- Front matter and back matter integrated
- Table of contents generation

⏳ **Pending:**
- Cover image (placeholder ready at `book/epub/cover.jpg`)
- Professional validation with epubcheck

## Book Details

- **Author:** Casey Keene
- **Genre:** Middle Grade Fantasy
- **Word Count:** ~69,096 words (published content)
- **Chapters:** 24
- **Format:** EPUB3 with responsive design

## Updating the EPUB

When you modify chapters:
1. Save your changes
2. Run `./scripts/build_epub.sh`
3. The EPUB will be regenerated with all current content

The build script automatically:
- Checks for pandoc installation
- Validates required files
- Processes chapters in numerical order
- Includes front/back matter
- Generates table of contents
- Applies professional styling
