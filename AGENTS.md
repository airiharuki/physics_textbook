# AGENTS.md — repo operator notes

## What this is

Grade 12 physics handbook for Cambodian students. Single XeLaTeX document → `main.pdf`. No tests, no package manager; the deliverable is the compiled PDF.

## Commands

- Build (Windows): `build.cmd` — wraps `latexmk main.tex`, pauses on error
- Build (Linux/mac): `./build.sh`
- Direct: `latexmk main.tex` — `.latexmkrc` fixes engine mode 5 (XeLaTeX); do NOT need `-xelatex` flag
- Watch: `latexmk -pvc main.tex`
- Clean: `latexmk -C main.tex`
- Prereqs: TeX Live with `latexmk`, fonts in `fonts/` installed *on the system* (XeLaTeX won't find repo-local fonts), Git LFS (`git lfs install`, then `git lfs pull` if image blobs are ~130 bytes of pointer text)

## Structural facts

- `main.tex` assembles: `preamble.tex` → `banners/chapterNbanner.tex` → `chapters/chapterN.tex` → clearpage. All shared macros live in `preamble.tex` — never define new box/figure macros per-chapter, add them there.
- Fonts: Khmer fonts in `fonts/` loaded via `fontspec` with HarfBuzz renderer; `khmerpagenum` = Romnea, `khmerheader` = Ang TaPich, `khmermoul` = Moul. Latin fallback `\englishfont` = Nunito.
- Colors: `primary`, `boxbg`, `boxframe`, `brownheader`, `bacpurple`, `khmerred` — all in preamble. Reuse these for any new box/figure style.
- Macros to use (defined in preamble): `\khmerphoto[opts]{img}{caption}` (framed body photo), `\khmervideobox` / `\khmerphoto` for images, `\formulabox[opts]{title}{...}` for titled boxes, `\defbox{...}` for plain panels, `\khmertopic`, `\khmersubtopic`, `\khmerlesson`, `\khmerchapter`.
- circuitikz is NOT in preamble (it was removed once in favor of the photo). If a circuit-diagram TikZ is required, re-add `\usepackage[american]{circuitikz}`.

## Conventions (enforced here, not typical defaults)

- **XeLaTeX only.** pdfLaTeX will break Khmer shaping.
- Equation/figure numbers are continuous through the book, run ១…១៤+ as of lesson 3. Continue that sequence, do not restart per lesson.
- Khmer numerals `(៥)` in equations **must live outside math mode** — inside `$...$` they fall back to `cmr12` and produce "Missing character" output. Follow `\end{flalign*} ... \begin{center} $\boxed{...}$ \quad (N)` pattern from lesson 2.
- Validaccent bar boxes: `\formulabox[breakable=false]{title}{...}` — sharp corners, 3pt primary left bar, inline primary title with hairline rule. Don't re-add frame/colframe overrides.
- Side-by-side text/figure: `\noindent \begin{minipage}[t]{0.58\textwidth}...\end{minipage}\hfill\begin{minipage}[t]{0.40\textwidth}...\end{minipage}` — same column widths everywhere.
- Photos in the body always go through `\khmerphoto[...]{...}{...}` — never bare `\includegraphics`.
- Terminology: `ម៉ាញេទិក` (never ម៉ាញេទិច), `សូលេណូអុីត` (never សូឡេណូអ៊ីត), `វ៉ិចទ័រ`. Figure captions prefixed with `រូបទីNN៖`.
- Commit convention: Conventional Commits (`feat/fix/chore/...(chapter3): ...`), enforced by `.githooks/commit-msg` via `core.hooksPath = .githooks`. Every commit gets an annotated tag `v1.0.0-alpha.N` (N hand-picked, don't renumber existing ones without force). Every alpha tag needs a `CHANGELOG.md` entry.
- Git LFS rules: `.gitattributes` pins `img/*` and common image extensions to `filter=lfs`. Adding a new image under `img/` auto-applies. Hooks: `pre-push` ships an LFS hook; keep `.githooks/*` LF via `.gitattributes` `eol=lf` or Windows turns it into CRLF and git silently ignores them.
- `.gitignore` already covers `*.xdv`, `*.fls`, `*.fdb_latexmk`, `*.synctex.gz`, `.rider/`, `.idea/`. `main.pdf` is checked in by design (NOT LFS).

## Gotchas

- Stale `main.out`/`main.toc` from an interrupted run breaks the next build with `Runaway argument` at hyperref bookmarks — `latexmk -C main.tex` then rebuild clears it.
- Font slots use `Script=Khmer, Renderer=HarfBuzz`; switching the Renderer (e.g. to `Default`) can reintroduce missing-character glitches.
- The theme from `sakuranotes.sty` was not adopted directly; its box aesthetic was ported into `\formulabox` instead. Do not add it as-is to the document.
- All OCR-pasted lesson text needs a cleanup pass before insertion: strip `[cite: N]`, normalize `ម៉ាញេទិក`, and continue the figure/equation numbering.
