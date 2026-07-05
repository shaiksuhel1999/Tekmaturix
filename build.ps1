# Rebuild the website in docs/ from the Markdown in src/  (Windows / PowerShell).
# Run after editing anything in src/, then commit and push.
$root = $PSScriptRoot
Push-Location $root
mkdocs build
Pop-Location
New-Item -ItemType File -Force "$root\docs\.nojekyll" | Out-Null
Write-Host ""
Write-Host "Rebuilt docs/ from src/. To publish:" -ForegroundColor Green
Write-Host "  git add -A"
Write-Host "  git commit -m 'Update site'"
Write-Host "  git push"
