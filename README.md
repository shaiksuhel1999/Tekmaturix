# Tekmaturix

Source and published site for [www.tekmaturix.com](https://www.tekmaturix.com).

## How it is structured

- `tekmaturix_website/` — the MkDocs project (edit pages under `tekmaturix_website/docs/`)
- `docs/` — the built HTML site that GitHub Pages serves. Do not edit by hand; it is generated.

## Publishing an update

1. Edit or add pages under `tekmaturix_website/docs/`.
2. Rebuild the site:
   - Windows: `.\deploy.ps1`
   - macOS / Linux: `./deploy.sh`
3. Commit and push:
   ```
   git add -A
   git commit -m "Update site"
   git push
   ```

GitHub Pages is set to serve the **`main` branch, `/docs` folder**, so the push publishes
the site automatically within a minute or two.

## First-time GitHub Pages setting

Repo → Settings → Pages → Build and deployment:
- Source: Deploy from a branch
- Branch: `main`  ·  Folder: `/docs`
- Save
