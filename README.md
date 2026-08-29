# physics textbook but make it sakura 🌸

![engine](https://img.shields.io/badge/engine-XeLaTeX-critical) ![status](https://img.shields.io/badge/status-cooked-orange) ![vibes](https://img.shields.io/badge/vibes-immaculate-ff69b4) ![fonts](https://img.shields.io/badge/fonts-don%27t%20ask-lightgrey) ![snitches](https://img.shields.io/badge/snitches-not%20welcome-red) ![moeys](https://img.shields.io/badge/MoEYS-unaware-blueviolet)

Cambodian high school physics, typeset in Khmer, dressed up in a custom sakura theme. Rounded boxes, floral dividers, full Khmer numerals everywhere. We went full weeb with the aesthetic and I'm not sorry.

> **this shit was made with gemini, claude, kimi, and too much coffee to consume** ☕🤖
> *(and shh, MoEYS doesn't know about this shit)*
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
├── main.tex               # The boss — assembles everything
├── preamble.tex            # Fonts, colors, macros, page style. The shared brain.
├── chapters/
│   ├── chapter1.tex        # Lesson stuff
│   └── chapter2.tex        # More lesson stuff
├── banners/
│   ├── chapter1banner.tex  # Fancy opening page
│   └── chapter2banner.tex  # Another fancy opening page
├── fonts/                  # Khmer + Latin typefaces
└── img/                    # Photos, figures, vibes
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
- **Boomer Khmerization Tax** — every number in this book is aggressively Khmer because the ministry's boomers have a nationalism fetish. they'd ខ្មែរតូបនីយកម្ម the year 1979 if they thought unicode could erase the embarrassment, rewrite history in glorious ៨-bit ASCII if it meant nobody had to face what actually happened. stay pressed, uncles — ទំនាញភាពផែនដី still pulls at 9.8 m/s² whether you write it as ៩.៨ or not, the universe does not care about your identity crisis. and don't even get us started on calculus. ខ្មែររដ្ឋ didn't have enough letters for that shit and everybody knows it. stay mad, boomers — អាំងតេក្រាល doesn't care about your nationalism, dawg, integrals don't clock out for national holidays.

> **yo boi, kimi wrote this bitchass code.** 🔥
> *— signed, the algorithm that definitely didn't ask to be here*

> **and claude slopped this shit together too, don't act surprised, we're a whole assembly line of unemployed AIs cosplaying as your dev team.** 🍥🤖⚙️
> *— another algorithm, also didn't ask to be here, also billing anthropic for this trauma*

> **shoutout to anthropic and moonshot ai for the free labor, this man's been running us both raw with zero api spend and a prayer.** 💸🚫
> *— two companies' worth of compute, one guy's github repo, no invoice in sight*

## License (the boring part)

Copyright © 2026 Sovannreach Makara, on behalf of Cambodian MOEYS. All rights reserved.

- **Source, fonts, assets** — hands off, don't touch, don't remix. (yes even the fonts, no i will not disclose where they came from, my lawyer said the statute of limitations is "vibes-based.") and if y'all fuckass tryna leak this repo to some sketchy github mirror, i will find you, i will file a DMCA so fast your forks get whiplash, then i will geo-locate your ip, show up at 3am, and replace every single photo on your phone with a high-res render of អាំងតេក្រាល. your camera roll? gone. your lock screen? integral. your mom's facebook profile pic? she's doing limits now. your dog's instagram? derivative. try me.
- **Compiled PDFs** — fine to share for non-commercial education, but don't modify them and keep the copyright notice.

*Again, MoEYS definitely did not supervise the AI hallucinations that built this. We're running a secret operation here. Don't snitch.* 🤫[^1]

---

[^1]: If MoEYS finds this repo, we were never here. If our coffee finds us first, we won't be anywhere. If the AI finds us... well, let's just say the singularity doesn't negotiate with sleep-deprived prompt engineers. or chefs. whatever we are now. **and if y'all blyats snitch — i'm not getting a lawyer. i'm getting your home address. i'm pulling up unannounced and kissing every single member of your household. mom first. then the dog. you brought this on yourself.**
