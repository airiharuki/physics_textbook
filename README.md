# Physics Textbook (Khmer, Sakura Theme)

A XeLaTeX-based physics textbook/handbook for Cambodian high school students, typeset in Khmer with a custom sakura-themed visual identity — rounded color-coded boxes, floral dividers, and full Khmer-numeral support throughout.

## Structure

```
.
├── main.tex              # Entry point — assembles the full document
├── preamble.tex          # Shared setup: fonts, colors, macros, page style
├── chapters/
│   ├── chapter1.tex       # Chapter 1 lesson content
│   └── chapter2.tex       # Chapter 2 lesson content
├── banners/
│   ├── chapter1banner.tex # Chapter 1 opening page (title, objectives, intro)
│   └── chapter2banner.tex # Chapter 2 opening page
├── fonts/                 # Khmer + Latin typefaces used throughout
└── img/                   # Chapter banner photos and figures
```

## Requirements

- **XeLaTeX** (required — the document uses `fontspec` for Khmer OpenType fonts; it will not compile with pdfLaTeX)
- A standard TeX Live 2023+ distribution (tested with TeX Live 2025)

## Compiling

From the repo root:

```bash
xelatex main.tex
xelatex main.tex
```

Two passes are needed for the table of contents and page references to resolve correctly. Output is `main.pdf`.

## Adding a new chapter

1. Add `chapters/chapterN.tex` with your lesson content.
2. Add `banners/chapterNbanner.tex` for its opening page.
3. In `main.tex`, add:
   ```latex
   \input{banners/chapterNbanner.tex}
   \input{chapters/chapterN.tex}
   \clearpage
   ```

## Key macros (defined in `preamble.tex`)

| Macro | Purpose |
|---|---|
| `\khmerchapter{...}` | Top-level chapter heading |
| `\khmerlesson{...}` | Lesson heading |
| `\khmertopic{...}` | Numbered topic heading |
| `\khmersubtopic{...}` | Numbered sub-topic heading |
| `\khmerornatetitle{full}{short}` | Chapter banner title (full + short form) |
| `\khmerbannerphoto{path}` | Full-width framed photo for chapter banners |
| `\khmerphoto[width]{path}{caption}` | Framed photo for use in body text, optional caption |
| `\quickformula{...}` | Single formula highlighted in a rounded callout box |
| `\formulabox[opts]{title}{...}` | Titled box for a block of formulas |
| `\points{...}` | Inline highlighted key point |
| `\tanbgdivider` | Decorative section divider |
| `\khmernumraw{n}` | Converts an Arabic number to Khmer numerals |
| `\khmernum{n}` | Formats a page number in Khmer with "ទំព័រទី" prefix |

## Notes

- Page numbers, section numbers, and all in-text figures use Khmer numerals (e.g. ២០២៦, not 2026).
- `\usetikzlibrary{arrows.meta}` is loaded globally, so `[>=Stealth]` and similar arrow styles work in any diagram without extra setup per chapter.
- Custom colors used across chapters (`bacpink`, `bacpurple`, `khmerred`, `wavered`, `waveblue`, `wavepurple`, etc.) are all defined once in `preamble.tex` — add new ones there rather than per-chapter so they stay available everywhere.

## License

Copyright (c) 2026 Sovannreach Makara, on behalf of the Cambodian Ministry of Education, Youth and Sport (MOEYS). All rights reserved.

LaTeX source, fonts, and assets in this repository may not be reproduced or modified without permission. Compiled PDF outputs may be freely distributed for non-commercial educational purposes, provided no modifications are made and this copyright notice is retained.

