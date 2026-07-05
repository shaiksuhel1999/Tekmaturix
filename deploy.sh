#!/usr/bin/env bash
# Rebuild the Tekmaturix site into /docs for GitHub Pages (macOS / Linux / Git Bash).
# Usage:  ./deploy.sh   then commit and push.
set -e
cd "$(dirname "$0")/tekmaturix_website"
mkdocs build
cd ..
touch docs/.nojekyll
echo ""
echo "Site rebuilt into /docs. To publish it:"
echo "  git add -A && git commit -m 'Update site' && git push"
