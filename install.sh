#!/bin/bash
# amnesia installer - memory structure for AI agents

set -e

WORKSPACE="${1:-.}"
AMNESIA_URL="https://raw.githubusercontent.com/mulletmcnasty/amnesia/main"

echo "🦞 amnesia - memory management for AI agents"
echo "============================================="
echo ""
echo "Installing to: $WORKSPACE"
echo ""

# Create directories
mkdir -p "$WORKSPACE/memory"

# Download templates if they don't exist
download_if_missing() {
    local file="$1"
    if [ ! -f "$WORKSPACE/$file" ]; then
        echo "Creating $file..."
        curl -sL "$AMNESIA_URL/templates/$file" > "$WORKSPACE/$file"
    else
        echo "Skipping $file (already exists)"
    fi
}

download_if_missing "IDENTITY.md"
download_if_missing "USER.md"
download_if_missing "SOUL.md"
download_if_missing "MEMORY.md"
download_if_missing "TOOLS.md"
download_if_missing "HEARTBEAT.md"

# Create today's daily log
TODAY=$(date +%Y-%m-%d)
if [ ! -f "$WORKSPACE/memory/$TODAY.md" ]; then
    echo "Creating memory/$TODAY.md..."
    curl -sL "$AMNESIA_URL/templates/daily-log.md" | sed "s/{{DATE}}/$TODAY/" > "$WORKSPACE/memory/$TODAY.md"
fi

echo ""
echo "✅ amnesia installed!"
echo ""
echo "Next steps:"
echo "  1. Edit IDENTITY.md - define who you are"
echo "  2. Edit USER.md - add info about your human"
echo "  3. Customize SOUL.md - shape your personality"
echo ""
echo "Remember: Files > Memory > Forgetting 🦞"
