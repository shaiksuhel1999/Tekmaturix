# Rebuild the Tekmaturix site into /docs for GitHub Pages (Windows / PowerShell).
# Usage:  .\deploy.ps1   then commit and push.
$root = $PSScriptRoot
Push-Location "$root\tekmaturix_website"
mkdocs build
Pop-Location
New-Item -ItemType File -Force "$root\docs\.nojekyll" | Out-Null
Write-Host ""
Write-Host "Site rebuilt into /docs. To publish it:" -ForegroundColor Green
Write-Host "  git add -A"
Write-Host "  git commit -m 'Update site'"
Write-Host "  git push"
