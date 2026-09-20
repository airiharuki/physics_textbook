# Contributing to the Handbook 🌸

ស្វាគមន៍! *(Welcome!)*

First of all — thank you for reading this. This repo started as one very tired human, a rotating cast of over-caffeinated AIs, and a dream: giving Cambodian Grade 12 students a physics handbook written in their own language, in their own numerals, with a look that makes them actually want to open it. If you're here, you're joining that. That genuinely means a lot to us.

## Why contribute?

Every paragraph you fix, every formula you double-check, every figure you draw ends up in the hands of students studying for one of the most stressful exams of their lives — not behind a paywall, not stuck on a school server, but typeset in Khmer with quality and care. This is a free-ish, homegrown, love-made-in-the-kitchen textbook. Your help keeps it alive.

And honestly? You don't need to be a LaTeX wizard or a physics professor. You need to care a little and be willing to learn the rest. We're all still learning.

## 🤫 The secret club

Here's the thing: this whole project is an undercover operation. Officially, it's a labor of love with a license and a copyright notice — but spiritually, it's a surprise gift quietly being cooked for the Cambodian Ministry of Education (MoEYS) and the students they serve. MoEYS doesn't know this exists yet. The plan is cinematic: one day the handbook simply *appears*, fully formed, subtle as sakura.

So the one rule of the club is: **don't go out of your way to announce the repo.** No "hey ministry, check this out" memos, no press releases, no snitching. When it ships, the delight will do the talking. Being in this repo means you're in the club — sworn in by vibes, and the vibes are unbreakable. 🤫

*Shush! Don't leak our hard work. 🤐*

*(Translation for the legally-minded: contributing to an open community project is always welcome and always above board — we just prefer the surprise to stay intact.)*

## Who we're looking for

- **Writers & editors** — content already exists, but clarity can always be better. If a sentence makes you squint, fix it.
- **Proofreaders** — Khmer spelling, grammar, and our (very strict, very precious) standard spellings.
- **Math reviewers** — equations, units, values, derivations. Physics should be true before it's pretty.
- **Figure makers** — TikZ diagrams, hand-drawn scans, any image that makes a concept click.
- **OCR survivors** — we sometimes start from scanned pages. If you've wrestled a messy OCR dump into something clean, you are one of us.
- **Design souls** — treasures the sakura boxes. Make it prettier and more consistent.

## Getting started

1. **Fork** the repo, then **clone** your fork.
2. **Install the fonts** from `fonts/` on to your system. XeLaTeX needs them registered — the README has the exact steps for Linux, Windows, and mac.
3. **Build** (always twice — TOC and page references lie on the first pass):
   ```bash
   xelatex main.tex
   xelatex main.tex
   ```
   (or use `build.sh` / `build.cmd`)
4. **Find something kind to do:**
   - The "Known issues" table in the README is 100% real. Pick a bug, kill a bug.
   - Open any `chapters/` file and fix whatever makes you twitch.
   - For anything bigger than a sentence, open an issue first so we can agree on the shape of it.

## Conventions (we beg you)

- **Engine:** XeLaTeX. Only. Always. `pdfLaTeX` will cry and die — Khmer OpenType shaping needs `fontspec`.
- **Macros:** everything lives in `preamble.tex`. If a macro already exists, **use it — never redefine it per chapter**. `\khmerphoto`, `\defbox`, `\formulabox`, `\quickformula`, `\khmertopic`… they're all friends.
- **Boxes stay full-width & unbreakable:** `formulabox` (and friends with `breakable`) must sit on their **own full-width line** with `breakable=false`. Trap one inside a frozen `minipage` and it will refuse to split, overflow the page, and stack its rows on top of each other. We learned this the hard way so you don't have to.
- **Side-by-side layout:** for figure + text rows, mirror the existing blocks in `chapters/chapter3.tex` — left column text/itemize, right column image(s), `minipage` rows kept short so pages break cleanly.
- **Standard Khmer spellings (non-negotiable in this repo):**
  - សូលេណូអុីត (never សូឡេណូអ៊ីត or សូលេណូអ៊ីត)
  - ម៉ាញេទិក (never ម៉ាញ៉េទិច or ម៉ាញ៉េទិក)
  - វ៉ិចទ័រ (never វុិចទ័រ)
- **Khmer numerals everywhere.** Pages, sections, equations, tables. If a student will see the number, it's Khmer: (៤) not (4). The boomers demand it, and honestly so do the vibes.
- **Images** live in `img/`, referenced with `\khmerphoto[...]{img/name.jpg}{caption}`. Give files descriptive lowercase names.
- **New chapter:** `chapters/chapterN.tex` + `banners/chapterNbanner.tex` + two `\input{}` lines in `main.tex`. That's the whole recipe.

## Pull requests

- **Small and focused** — one idea, one PR. Easier to review, easier to say yes to.
- **Conventional commits:** `feat(ch3): add ...`, `fix(preamble): ...`, `chore(img): ...`.
- **Rebuild before pushing** — two passes, no `^!` errors, no new `tcolorbox` warnings. A PR that doesn't compile is a sad PR.
- `main.pdf` is tracked and we ship it, so including your rebuilt PDF is fine and expected.

## How we review

Warm, honest, constructive. We celebrate good formula work loudly, and we give gentle, specific notes when something needs another pass. Reviews here are a conversation, not a verdict. If we're unclear, ask back — we'd rather talk it out than reject it.

## The bar

- Physics that's correct, units that are consistent.
- Khmer that a Grade 12 student reads effortlessly.
- Layout that doesn't overflow or overlap (our favorite failure mode, sadly).
- A build that compiles clean.

That's genuinely it. You don't need to be perfect — you need to be kind and willing.

## Thank you

If your contribution lands, it lives in a textbook that students will dog-ear and high-light and maybe drop in a puddle. That's a small immortality. Welcome aboard — let's make math and physics feel like home. 🌸