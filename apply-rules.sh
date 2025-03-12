#!/bin/bash

# Check if target directory is provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide the target project directory"
    echo "Usage: ./apply-rules.sh <target-project-directory>"
    exit 1
fi

TARGET_DIR="$1"

# Create target directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    echo "📁 Creating new project directory: $TARGET_DIR"
    mkdir -p "$TARGET_DIR"
    
    # Initialize readme for new project
    cat > "$TARGET_DIR/README.md" << 'EOL'
# Cursor Rules Project

This project has been configured with Cursor rules for enhanced AI assistance.
EOL
fi

# Create .cursor/rules directory if it doesn't exist
mkdir -p "$TARGET_DIR/.cursor/rules"

# Copy core rule files
echo "📦 Copying cursor rules files..."
cp -n .cursor/rules/*.mdc "$TARGET_DIR/.cursor/rules/"

# Copy docs directory if it exists
if [ -d "docs" ]; then
    echo "📚 Copying documentation..."
    mkdir -p "$TARGET_DIR/docs"
    cp -R docs/* "$TARGET_DIR/docs/"
fi

# Update .gitignore if needed
if [ -f "$TARGET_DIR/.gitignore" ]; then
    if ! grep -q "\.cursor/rules/_\*\.mdc" "$TARGET_DIR/.gitignore"; then
        echo -e "\n# Private individual user cursor rules\n.cursor/rules/_*.mdc" >> "$TARGET_DIR/.gitignore"
    fi
else
    echo -e "# Private individual user cursor rules\n.cursor/rules/_*.mdc" > "$TARGET_DIR/.gitignore"
fi

echo "✨ Deployment Complete!"
echo "📁 Core rules: $TARGET_DIR/.cursor/rules/"
if [ -d "docs" ]; then
    echo "📚 Documentation: $TARGET_DIR/docs/"
fi
echo "🔒 Updated .gitignore" 