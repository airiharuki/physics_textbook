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

## Getting started — a step-by-step guide

The repo lives at **https://github.com/airiharuki/physics_textbook**, clone it with:

```bash
git clone https://github.com/airiharuki/physics_textbook.git
```

### 1. Fork + clone

1. Click **Fork** in the top-right of the repo page — that gives you your own copy to work freely in.
2. Clone **your** fork:
   ```bash
   git clone https://github.com/<your-github-username>/physics_textbook.git
   cd physics_textbook
   ```
3. Add the original repo as `upstream` so you can stay in sync with us:
   ```bash
   git remote add upstream https://github.com/airiharuki/physics_textbook.git
   ```
   (check it landed with `git remote -v` — you should see both `origin` and `upstream`)

### 2. Install the fonts

Install the fonts from `fonts/` onto your **system** — XeLaTeX needs them registered, it won't magically find them in the repo. The README has the exact steps for Linux, Windows, and mac.

### 3. Make a branch

Never work directly on `main` (well, we do, but you're a civilized person). Give your change a cozy name:

```bash
git checkout -b fix/typo-chapter3
```

### 4. Build — one command, zero babysitting

Run `build.sh` (Linux/mac) or `build.cmd` (Windows). It uses **latexmk**, which automatically runs as many passes as the book needs (TOC and page references stop lying, and you never press twice). It also checks prerequisites for you — nothing found? It tells you what to install — and on failure it **stays open** with the error visible until you press a key.

```bash
bash build.sh               # Linux/mac
```
```bat
build.cmd                   # Windows
```

*A clean build with zero errors is your ticket to ride. Then flip through the pages you touched — no overlapping text, no overflowing boxes. We promise nothing feels worse than a textbook where words fight each other.*

**Auto-rebuild on every save?** (wild, we know) run `latexmk -xelatex -pvc main.tex` and live your life.

### 5. Find something kind to do

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

## Making a pull request — the whole dance

1. Make sure you're on your branch (`git branch` should show it) and the build is clean (`bash build.sh` / `build.cmd` — exits happy, no errors).
2. Commit with a conventional message:
   ```bash
   git add chapters/chapter3.tex main.pdf
   git commit -m "feat(ch3): fix the declination example"
   ```
3. Push your branch up to **your** fork:
   ```bash
   git push -u origin fix/typo-chapter3
   ```
4. Head to GitHub — a bright yellow **Compare & pull request** banner will appear. Click it.
5. In the PR description: what you changed, why, and which page numbers to look at (e.g. "p46-47"). It makes reviewing genuinely pleasant.
6. `main.pdf` rides along in your PR — we ship the compiled book, so include your rebuilt PDF.
7. If reviewers ask for tweaks, push more commits to the **same branch** — the PR updates automatically. No new PRs per revision, no drama.
8. Once merged, you're immortalized in the credits of a handbook students will actually use. That's the whole reward. (And maybe we'll owe you coffee.)

### Staying in sync

If the main repo moved while you were busy, don't panic — drift happens:

```bash
git checkout main
git pull upstream main
git checkout your-branch
git merge main        # resolve any conflicts calmly, then rebuild
```

(Pro tip: `git pull upstream main` before you *start* a task, so you're never fighting a moving target.)

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

**From the maintainer, personally:** thank you for joining me in this. A textbook is a lonely thing to dream up alone — with you, it's a family project now. I wrote this whole saga in a room at 2am with three AIs for company, and you showed up anyway. With love, always. <3