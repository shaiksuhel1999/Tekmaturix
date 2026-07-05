# Tekmaturix

Source for [www.tekmaturix.com](https://www.tekmaturix.com), a MkDocs Material site.

## Structure

- `docs/` — all the content: Markdown pages, images (`docs/assets/images`), and styles
  (`docs/stylesheets/extra.css`). This is the only folder you edit.
- `mkdocs.yml` — site configuration and navigation.
- `.github/workflows/deploy.yml` — builds and publishes the site on every push.

## Edit and preview locally

```
pip install -r requirements.txt
mkdocs serve
```

Then open http://127.0.0.1:8000 and edit files under `docs/`. The preview reloads as
you save.

## Publish

Just push to `main`. GitHub Actions builds the site and deploys it automatically:

```
git add -A
git commit -m "Update site"
git push
```

## One-time GitHub Pages setting

Repo → Settings → Pages → Build and deployment → **Source: GitHub Actions**.
