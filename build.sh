#!/usr/bin/env bash
# build.sh — compiles main.tex, no thinking required
set -e

cd "$(dirname "$0")"

if command -v latexmk >/dev/null 2>&1; then
  echo "using latexmk (smart, auto-reruns as needed)"
  latexmk main.tex
else
  echo "latexmk not found, falling back to manual double-compile"
  echo "(install latexmk for a better time: usually comes with your TeX distro)"
  xelatex -interaction=nonstopmode main.tex
  xelatex -interaction=nonstopmode main.tex
fi

echo "done — output is main.pdf"
read -p "press enter to close..."
