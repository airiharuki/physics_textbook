@echo off
REM build.bat - compiles main.tex with xelatex, twice, so TOC/bookmarks/
REM page references resolve correctly. Run this from inside your project
REM folder (same place as main.tex, preamble.tex, fonts\, img\, chapters\).

echo.
echo === Pass 1 of 2 ===
xelatex -interaction=nonstopmode -halt-on-error main.tex
if errorlevel 1 (
    echo.
    echo *** Pass 1 FAILED - stopping before pass 2. Check the error above. ***
    pause
    exit /b 1
)

echo.
echo === Pass 2 of 2 ===
xelatex -interaction=nonstopmode -halt-on-error main.tex
if errorlevel 1 (
    echo.
    echo *** Pass 2 FAILED. Check the error above. ***
    pause
    exit /b 1
)

echo.
echo === Done! main.pdf is up to date. ===
pause