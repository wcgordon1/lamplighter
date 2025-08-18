#!/bin/bash
# Extract New Facts - The Lamplighter's Daughter
# Pulls all new_facts from completed chapter cards for reference

echo "=== ESTABLISHED CANON FROM PREVIOUS CHAPTERS ==="
echo ""

# Find all chapter files and extract new_facts from their cards
for chapter_file in manuscript/active/ch*.md manuscript/completed/ch*.md; do
    if [ -f "$chapter_file" ]; then
        # Extract chapter number from filename
        CHAPTER_NUM=$(basename "$chapter_file" | sed 's/ch\([0-9]*\)_.*/\1/' | sed 's/^0*//')
        
        # Extract the ===CARD=== section and pull out new_facts
        if grep -q "===CARD===" "$chapter_file"; then
            echo "📖 Chapter $CHAPTER_NUM:"
            
            # Extract new_facts array from the JSON card  
            sed -n '/"new_facts":/,/"callbacks":/p' "$chapter_file" | \
            sed '$d' | \
            grep -o '"[^"]*"' | \
            sed 's/^"/  - /' | \
            sed 's/"$//' | \
            grep -v "new_facts"
            
            echo ""
        fi
    fi
done

echo "🎯 Use these facts as established canon when writing new chapters."
echo "💡 Magic system details, character behaviors, and world rules from these facts cannot be contradicted."
