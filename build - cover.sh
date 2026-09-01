#!/bin/bash
# build.sh - compiles main.tex with xelatex, twice, so TOC/bookmarks/
# page references resolve correctly. Run this from inside your project
# folder (same place as main.tex, preamble.tex, fonts/, img/, chapters/).
#
# Usage:
#   bash build.sh
# or, after making it executable once (chmod +x build.sh):
#   ./build.sh

set -e  # stop immediately if any command fails

echo
echo "=== Pass 1 of 2 ==="
xelatex -interaction=nonstopmode -halt-on-error book_cover_template.tex

echo
echo "=== Pass 2 of 2 ==="
xelatex -interaction=nonstopmode -halt-on-error book_cover_template.tex

echo
echo "=== Done! main.pdf is up to date. ==="