#!/bin/bash
# build.sh - compiles main.tex with XeLaTeX using latexmk.
# latexmk figures out how many passes are needed (TOC/page refs),
# so you run ONE command and it does the rest.
#
# On failure this script does NOT just close - it waits for a key press
# so you can see what went wrong.
#
# Usage:
#   bash build.sh
# or, after making it executable once (chmod +x build.sh):
#   ./build.sh
#
# Want it to rebuild automatically on every save? Use:
#   latexmk -xelatex -pvc main.tex

echo
echo "=== Checking prerequisites ==="

# 1. Running from the project folder?
if [ ! -f main.tex ]; then
    echo "*** main.tex not found here. ***"
    echo "    Run this from the project folder (the one containing main.tex,"
    echo "    preamble.tex, chapters/, img/ and fonts/)."
    read -p "    Press Enter to close..."
    exit 1
fi

# 2. latexmk available? (ships with TeX Live 2023+)
if ! command -v latexmk >/dev/null 2>&1; then
    echo "*** latexmk not found. ***"
    echo "    Install TeX Live 2023+ (latexmk is included)."
    echo "    Windows: install from https://tug.org/texlive/ and reopen your terminal."
    read -p "    Press Enter to close..."
    exit 1
fi

# 3. XeLaTeX engine available?
if ! command -v xelatex >/dev/null 2>&1; then
    echo "*** xelatex not found (latexmk needs it). ***"
    echo "    Make sure XeLaTeX is in your PATH with your TeX Live install."
    read -p "    Press Enter to close..."
    exit 1
fi

echo "Prerequisites OK."

echo
echo "=== Building (latexmk runs as many passes as needed) ==="
echo

if latexmk -xelatex -interaction=nonstopmode -file-line-error main.tex; then
    echo
    echo "=== Done! main.pdf is up to date. ==="
    exit 0
fi

echo
echo "*** Build FAILED. Check the errors above. ***"
read -p "    Press Enter to close..."
exit 1