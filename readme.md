# Cursor Rules Deployment Tool

A simple tool to deploy Cursor rules across your projects. This repository contains a collection of standardized rules for enhancing AI interactions in Cursor.

## Important Setup Note

Cursor frequently updates its rule handling. For optimal performance with rule files:

1. Update your Cursor settings to disable special UI for .mdc files:
```json
"workbench.editorAssociations": {
    "*.mdc": "default"
}
```

2. Note that Agent mode handles rules better than Edit mode, as it automatically finds and follows rules in context.

## Quick Start

### Unix/MacOS
```bash
# Clone this repository
git clone https://github.com/bmadcode/cursor-rules-fork.git
cd cursor-rules-fork

# Deploy rules to your project
./apply-rules.sh /path/to/your/project
```

### Windows
```batch
# Clone this repository
git clone https://github.com/bmadcode/cursor-rules-fork.git
cd cursor-rules-fork

# Deploy rules to your project
apply-rules.bat C:\path\to\your\project
```

## What Gets Deployed

The script will:
1. Create the target directory if it doesn't exist
2. Copy all rule files (*.mdc) to your project's `.cursor/rules/` directory
3. Copy the docs directory and its contents if it exists
4. Set up appropriate .gitignore entries for private rules

## Rule Categories

Rules are organized with the following prefix system:
- `0XX`: Core rules and standards
- `1XX`: Tool and MCP rules
- `3XX`: Testing standards
- `1XXX`: Language-specific rules
- `2XXX`: Framework/library rules

## Private vs Shared Rules

- **Shared Rules**: Standard naming (e.g., `000-cursor-rules.mdc`)
- **Private Rules**: Prefixed with underscore (e.g., `_custom-rule.mdc`)
  - Automatically gitignored
  - Won't impact team members
  - Used for individual preferences

## License

MIT
