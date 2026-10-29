#!/bin/sh
# Copies the current sample demos from ../demos into this site. Run from this folder.
# Only our own sample demos belong here. Never add client work.
set -e
for d in tokyo-5day-en tokyo-5day tainan-2day-en tainan-2day shop-faq-en shop-faq; do
  mkdir -p "demos/$d"
  cp "../demos/$d/index.html" "demos/$d/index.html"
done
echo "demos synced. Review with: git status && git diff --stat"
