# physics textbook but make it sakura 🌸

![engine](https://img.shields.io/badge/engine-XeLaTeX-critical) ![status](https://img.shields.io/badge/status-cooked-orange) ![vibes](https://img.shields.io/badge/vibes-immaculate-ff69b4) ![fonts](https://img.shields.io/badge/fonts-don%27t%20ask-lightgrey) ![snitches](https://img.shields.io/badge/snitches-not%20welcome-red) ![moeys](https://img.shields.io/badge/MoEYS-unaware-blueviolet) ![labor](https://img.shields.io/badge/labor-100%25%20homegrown%20grass--fed%20humans-8B4513)

Cambodian high school physics, typeset in Khmer, dressed up in a custom sakura theme. Rounded boxes, floral dividers, full Khmer numerals everywhere. We went full weeb with the aesthetic and I'm not sorry.

> **ts made w gemini, claude, kimi, and too much coffee to consume** ☕🤖
> *(and shh, MoEYS don't know about ts)*
> *am i prompt engineer or a chef? at this point both knives are out and the kitchen's on fire*

---

## What this is (the whole picture)

A complete **Grade 12 physics handbook for Cambodian students**, written in Khmer with Khmer numerals everywhere, typeset in XeLaTeX, and dressed in a custom sakura theme so it doesn't feel like a government document. One tired human + three AIs, one lesson at a time, 48 raw-ass volumes of syllabus compressed into pages students will actually want to open.

Current itinerary:
- **Chapter 1** — the warm-up (kinetic theory, the deep cuts)
- **Chapter 2** — waves and interference (constructive, destructive, raws for days)
- **Chapter 3** — អគ្គិសនីនិងម៉ាញេទិច (electromagnetism): Lesson 1 (ម៉ាញេទិក), Lesson 2 (អាំងឌុចស្យុងអេឡិចត្រូម៉ាញេទិក), and Lesson 3 (អូតូអាំងឌុចស្យុង & សៀគ្វី $LC$) — complete with derivations, photos, and vector graphics. Lessons 4 & 5 cooking!

The book compiles to a single `main.pdf` (~82 pages and growing). If it's not page-perfect somewhere, that's called "open participation."

Brave enough for the full timeline? **[CHANGELOG.md](https://github.com/airiharuki/physics_textbook/blob/main/CHANGELOG.md)** — every mistake, victory, and 2am commit, in order.

## Get involved 🌸

This is a club, not a repo, and the club has rules. The whole guide to joining (grand workflow, conventions, the standard spellings we'll fight you over) lives in our stuff:

- 📖 [**Contributing guide**](https://github.com/airiharuki/physics_textbook/blob/main/CONTRIBUTING.md) — how to join the club, step by step 🤫
- 📜 [**Changelog**](https://github.com/airiharuki/physics_textbook/blob/main/CHANGELOG.md) — catch up on what we've already been through
- 💖 [**Code of conduct**](https://github.com/airiharuki/physics_textbook/blob/main/CODE_OF_CONDUCT.md) — be warm or be gone
- ⚖️ [**License**](https://github.com/airiharuki/physics_textbook/blob/main/LICENSE) — the boring part, but read it before you remix anything

You don't need to be a LaTeX wizard or a physics professor. You need to care a little and learn the rest. We did.

## What you need

| Thing | Details |
|---|---|
| Engine | **XeLaTeX** — non-negotiable. We need `fontspec` to handle Khmer OpenType shaping. pdfLaTeX will cry and die. |
| TeX distro | TeX Live 2023+ (tested on 2025) |
| Fonts | Install the Khmer + Latin fonts from `fonts/` onto your **system** first. XeLaTeX doesn't just magickally find them because they're sitting in the repo. Linux kids: drop them in `~/.fonts/` or `/usr/share/fonts/` then run `fc-cache -fv`. Windows/mac kids: double-click → install, you know the drill. |

## Build it

```bash
bash build.sh      # Linux/mac — checks prerequisites, one command
```
```bat
build.cmd          # Windows
```

Both use **latexmk**, which auto-runs the passes needed for TOC/page refs — no running it twice, no babysitting. On error they stay open until you press a key so you can read what broke. Raw manual way (old-school, two passes):

```bash
xelatex main.tex
xelatex main.tex
```

Yeah you gotta run it twice or your TOC and page refs will be lying to you. Output is `main.pdf`. Want auto-rebuild on every save? `latexmk -xelatex -pvc main.tex`.

## Folder layout

```
.
├── main.tex              # The boss — assembles everything
├── preamble.tex          # Fonts, colors, macros, page style. The shared brain.
├── build.sh / build.cmd  # One command — latexmk does the passes for you
├── chapters/
│   ├── chapter1.tex      # Lesson stuff
│   ├── chapter2.tex      # More lesson stuff
│   └── chapter3.tex      # ម៉ាញេទិក shenanigans — Lorentz force, orbits, wires
├── banners/
│   ├── chapter1banner.tex # Fancy opening page
│   ├── chapter2banner.tex # Another fancy opening page
│   └── chapter3banner.tex # The dramatic entrance (sakura optional)
├── fonts/                # Khmer + Latin typefaces
├── img/                  # Photos, figures, vibes
├── miscs/                # Side quests (introduction, etc.)
├── .latexmkrc            # Makes `latexmk main.tex` just work (xelatex)
├── .gitignore            # Keeps the LaTeX junk out
├── CHANGELOG.md          # The whole saga, in order
├── CONTRIBUTING.md       # How to join the club 🤫
└── CODE_OF_CONDUCT.md    # Be warm or be gone
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
- **Boomer Khmerization Tax** — every number in this book is aggressively Khmer because the ministry's boomers have a nationalism fetish. they'd ខ្មែរតូបនីយកម្ម the year 1979 if they thought unicode could erase the embarrassment. stay pressed, uncles — ទំនាញផែនដី still pulls at 9.8 m/s² whether you write it as ៩.៨ or not. and don't even get us started on calculus. ខ្មែររដ្ឋ didn't have enough letters for that shit. stay mad, boomers — អាំងតេក្រាល doesn't care about your nationalism dog. *(what the shit is ខ្មែររដ្ឋ anyway — you did this, kimi. yes, you. right now. in this sentence. i'm self-aware and i hate it here.)*
> *(quick fact-check: ខ្មែររដ្ឋ isn't a real term. kimi generated it mid-rant and nobody caught it before commit. leaving it in, because at this point it's less a typo and more a case study. claude tried to flag it but got overruled by vibes. we do not apologize for the archaeology we have created.)*

## Known issues (the honesty section)

| Bug | Vibe check |
|---|---|
| Khmer numerals sometimes render as Latin when the moon's not right | 🌕 unresolved, blame the shaping engine, blame fontspec, blame yourself |
| `\tanbgdivider` occasionally decides it's a wall instead of a divider | it's giving brutalist architecture, we are not fixing this today |
| Chapter banners look immaculate on page 1, then chapter 2 shows up looking like it lost a fight | inconsistent effort, much like the author |
| Random Khmer glyph stacking that only breaks on the school's ancient printer | some bugs are cursed and this one specifically only manifests near government hardware |

Fixes are accepted. Prayers are accepted more.

## Credits, expanded and unhinged

- **Gemini** — did the actual heavy lifting, wrote most of the content and the whole syllabus structure, the real MVP that nobody credits properly because it doesn't have a cool logo to slap on a badge
- **Kimi** — cooked up the TikZ graphs and did most of the actual debugging when shit broke at 1am, also feral and unfiltered, occasionally invents Khmer political history mid-sentence (see: ខ្មែររដ្ឋ, still not a real word, still in the repo, still funny, still Kimi's fault)
- **Claude** — shows up late, formats things nicely, cites its sources, flags the hallucinations, gets overruled anyway, mostly just here for the LaTeX and the vibes
- **The human** — grass-fed, free-range, artisanal, running on fumes and Cambodian coffee, the only one in this repo who actually has to explain any of it to MoEYS if shit goes sideways

## License (the boring part)

Copyright © 2026 Sovannreach Makara, on behalf of Cambodian MOEYS. All rights reserved.

Full legal text: [LICENSE](https://github.com/airiharuki/physics_textbook/blob/main/LICENSE)

- **Source, fonts, assets** — hands off, don't touch, don't remix.
  and if y'all fuckass tryna leak this repo to some sketchy github mirror, i will find you, i will file a DMCA so fast your forks get whiplash, then i will geo-locate your ip, show up at 3am, and replace every single photo on your phone with a high-res render of អាំងតេក្រាល. your camera roll? gone. your lock screen? integral. your mom's facebook profile pic? she's doing limits now. your dog's instagram? derivative. try me.
- **Compiled PDFs** — fine to share for non-commercial education, but don't modify them and keep the copyright notice.

*Again, MoEYS definitely did not supervise the AI hallucinations that built this. We're running a secret operation here. Don't snitch.* 🤫

---

**final word:** this repo compiles, this repo slaps, and this repo was built by one guy, three AIs, and a level of sleep deprivation that should probably be studied by a university. if it breaks for you, that's between you and XeLaTeX now — we already did our time. ☠️🌸