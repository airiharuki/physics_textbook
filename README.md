# physics textbook but make it sakura 🌸

Cambodian high school physics, typeset in Khmer, dressed up in a custom sakura theme. Rounded boxes, floral dividers, full Khmer numerals everywhere. We went full weeb with the aesthetic and I'm not sorry.

> **ts made w gemini, claude, kimi, and too much coffee to consume** ☕🤖  
> *(and shh, MoEYS don't know about ts)*  
> *am i prompt engineer or a chef? at this point both knives are out and the kitchen's on fire*

---

## What you need

| Thing | Details |
|---|---|
| Engine | **XeLaTeX** — non-negotiable. We need `fontspec` to handle Khmer OpenType shaping. pdfLaTeX will cry and die. |
| TeX distro | TeX Live 2023+ (tested on 2025) |
| Fonts | Install the Khmer + Latin fonts from `fonts/` onto your **system** first. XeLaTeX doesn't just magickally find them because they're sitting in the repo. Linux kids: drop them in `~/.fonts/` or `/usr/share/fonts/` then run `fc-cache -fv`. Windows/mac kids: double-click → install, you know the drill. |

## Build it

```bash
xelatex main.tex
xelatex main.tex
```

Yeah you gotta run it twice or your TOC and page refs will be lying to you. Output is `main.pdf`.

## Folder layout

```
.
├── main.tex              # The boss — assembles everything
├── preamble.tex          # Fonts, colors, macros, page style. The shared brain.
├── chapters/
│   ├── chapter1.tex      # Lesson stuff
│   └── chapter2.tex      # More lesson stuff
├── banners/
│   ├── chapter1banner.tex # Fancy opening page
│   └── chapter2banner.tex # Another fancy opening page
├── fonts/                # Khmer + Latin typefaces
└── img/                  # Photos, figures, vibes
```

## Adding a chapter (don't mess it up)

1. Make `chapters/chapterN.tex` — put your content there.
2. Make `banners/chapterNbanner.tex` — the dramatic entrance.
3. Add this to `main.tex`:
   ```latex
   \input{banners/chapterNbanner.tex}
   \input{chapters/chapterN.tex}
   \clearpage
   ```

## Macros you should know

All defined in `preamble.tex`. Don't go redefining stuff per-chapter like a maniac.

| Macro | What it does |
|---|---|
| `\khmerchapter{...}` | Big chapter heading |
| `\khmerlesson{...}` | Lesson heading |
| `\khmertopic{...}` | Numbered topic |
| `\khmersubtopic{...}` | Numbered sub-topic |
| `\khmerornatetitle{full}{short}` | Banner title (long + short version) |
| `\khmerbannerphoto{path}` | Full-width framed photo for banners |
| `\khmerphoto[width]{path}{caption}` | Framed photo in the body, optional caption |
| `\quickformula{...}` | Single formula in a cute rounded box |
| `\formulabox[opts]{title}{...}` | Titled box for a cluster of formulas |
| `\points{...}` | Inline highlight for key stuff you'll def forget |
| `\tanbgdivider` | Floral section divider (the vibes) |
| `\khmernumraw{n}` | Turn Arabic numbers into Khmer numerals |
| `\khmernum{n}` | Page number in Khmer with "ទំព័រទី" prefix |

## Random notes

- **Khmer numerals everywhere** — pages, sections, figures. ២០២៦ hits different.
- **Arrow styles** — `\usetikzlibrary{arrows.meta}` is global, so `[>=Stealth]` just works. No per-chapter setup, we're not animals.
- **Colors** — `bacpink`, `bacpurple`, `khmerred`, `wavered`, `waveblue`, `wavepurple`, etc. are all in `preamble.tex`. Add new ones there so everyone can use them.
- **Recipe status** — if you find a prompt that actually compiles on the first try, you're either a better chef than us or hallucinating. either way, share the secret ingredient.
- **Boomer Khmerization Tax** — every number in this book is aggressively Khmer because the ministry's boomers have a nationalism fetish. they'd ខ្មែរតូបនីយកម្ម the year 1979 if they thought unicode could erase the embarrassment. stay pressed, uncles, and aunties — ទំនាញភាពផែនដី still pulls at 9.8 m/s² whether you write it as ៩.៨ or not. and don't even get us started on calculus. ខ្មែររដ្ឋ didn't have enough letters for that shit. stay mad, boomers — អាំងតេក្រាល doesn't care about your nationalism, dawg. *(what the shit is ខ្មែររដ្ឋ anyway — you did this, kimi. yes, you. right now. in this sentence. i'm self-aware and i hate it here.)*

> **yo boi, kimi wrote this bitchass code.** 🔥  
> *— signed, the algorithm that definitely didn't ask to be here*

## License (the boring part)

Copyright © 2026 Sovannreach Makara, on behalf of Cambodian MOEYS. All rights reserved.

- **Source, fonts, assets** — hands off, don't touch, don't remix.
- **Compiled PDFs** — fine to share for non-commercial education, but don't modify them and keep the copyright notice.

*Again, MoEYS definitely did not supervise the AI hallucinations that built this. We're running a secret operation here. Don't snitch.* 🤫[^1]

---

[^1]: If MoEYS finds this repo, we were never here. If our coffee finds us first, we won't be anywhere. If the AI finds us... well, let's just say the singularity doesn't negotiate with sleep-deprived prompt engineers. or chefs. whatever we are now. **and if y'all blyats snitch — i'm not getting a lawyer. i'm getting your home address. i'm pulling up unannounced and kissing every single member of your household. mom first. then the dog. you brought this on yourself.**
