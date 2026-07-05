# Tekmaturix

Source and published site for [www.tekmaturix.com](https://www.tekmaturix.com),
a MkDocs Material site.

## The two folders

- **`src/`** — where you edit. All the content: Markdown pages, images
  (`src/assets/images`), and styles (`src/stylesheets/extra.css`).
- **`docs/`** — the built website that GitHub Pages serves. It is generated from `src/`
  by the build. Don't edit it by hand.

## Preview locally

```
pip install -r requirements.txt
mkdocs serve
```

Open http://127.0.0.1:8000 and edit files in `src/`; the preview reloads as you save.

## Publish an update

1. Edit files in `src/`.
2. Rebuild the site:
   - Windows: `.\build.ps1`
   - macOS / Linux: `./build.sh`
3. Commit and push:
   ```
   git add -A
   git commit -m "Update site"
   git push
   ```

## GitHub Pages setting (one time)

Repo → Settings → Pages → Build and deployment:
- Source: **Deploy from a branch**
- Branch: **main**   ·   Folder: **/docs**
