#!/bin/bash
# One-time git setup script for notjustonthewrist.com
# Run this from Terminal: bash git-setup.sh

set -e

echo "🔧 Setting up git..."

# Remove stale lock file if present
rm -f .git/index.lock

# Rename branch to 'main'
git branch -m main 2>/dev/null || true

# Set git identity
git config user.email "christian.husegaard@gmail.com"
git config user.name "Christian Husegaard"

# Stage all files (in case anything is unstaged)
git add index.html images/ .gitignore TODO.md

# Make the initial commit
git commit -m "Initial commit — full site with all watch images"

echo ""
echo "✅ Done! Git is set up locally."
echo ""
echo "Next steps:"
echo "  1. Create a repo at https://github.com/new — name it 'notjustonthewrist', set it to Public"
echo "  2. Then run these two commands:"
echo "     git remote add origin https://github.com/YOUR_USERNAME/notjustonthewrist.git"
echo "     git push -u origin main"
