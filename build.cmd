@echo off
REM build.cmd -- compiles main.tex, no thinking required

cd /d "%~dp0"

where latexmk >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo using latexmk ^(smart, auto-reruns as needed^)
    latexmk main.tex
) else (
    echo latexmk not found, falling back to manual double-compile
    echo ^(install latexmk for a better time: usually comes with your TeX distro^)
    xelatex -interaction=nonstopmode main.tex
    xelatex -interaction=nonstopmode main.tex
)

echo done -- output is main.pdf
pause
