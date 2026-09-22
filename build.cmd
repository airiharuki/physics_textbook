@echo off
REM build.cmd - compiles main.tex with XeLaTeX using latexmk.
REM latexmk figures out how many passes are needed (TOC/page refs),
REM so you run this ONE command and it does the rest.
REM On failure this script does NOT just close - it waits for a key
REM press so you can see what went wrong.
REM
REM Want it to rebuild automatically on every save? Run:
REM     latexmk -xelatex -pvc main.tex

echo.
echo === Checking prerequisites ===

if not exist main.tex (
    echo.
    echo *** main.tex not found here. ***
    echo     Run this from the project folder (the one containing main.tex,
    echo     preamble.tex, chapters\, img\ and fonts\).
    echo.
    pause
    exit /b 1
)

where latexmk >nul 2>nul
if errorlevel 1 (
    echo.
    echo *** latexmk not found. ***
    echo     Install TeX Live 2023+ ^(latexmk is included^).
    echo     Grab it from https://tug.org/texlive/ and reopen your terminal.
    echo.
    pause
    exit /b 1
)

where xelatex >nul 2>nul
if errorlevel 1 (
    echo.
    echo *** xelatex not found ^(latexmk needs it^). ***
    echo     Make sure XeLaTeX is in your PATH with your TeX Live install.
    echo.
    pause
    exit /b 1
)

echo Prerequisites OK.

echo.
echo === Building ^(latexmk runs as many passes as needed^) ===
echo.

latexmk -xelatex -interaction=nonstopmode -file-line-error main.tex
if errorlevel 1 (
    echo.
    echo *** Build FAILED. Check the errors above. Press any key to close. ***
    pause
    exit /b 1
)

echo.
echo === Done! main.pdf is up to date. ===
pause