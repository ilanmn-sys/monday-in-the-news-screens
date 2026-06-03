#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
git add -A
if git diff --cached --quiet; then
  echo "No changes to publish."
  exit 0
fi
MSG="${1:-update $(date +%Y-%m-%d\ %H:%M)}"
git commit -m "$MSG"
git push origin main
echo "Pushed. Live within ~1 min: https://ilanmn-sys.github.io/monday-in-the-news-screens/"
