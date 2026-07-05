#!/usr/bin/env bash
# Rebuild the website in docs/ from the Markdown in src/  (macOS / Linux).
# Run after editing anything in src/, then commit and push.
set -e
cd "$(dirname "$0")"
mkdocs build
touch docs/.nojekyll
echo ""
echo "Rebuilt docs/ from src/. To publish:"
echo "  git add -A && git commit -m 'Update site' && git push"
