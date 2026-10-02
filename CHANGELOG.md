# Changelog

All notable changes, compiled honestly from the git history of this repo. Format follows the vibes, not semver. Dates are the day each commit swore.

## [0.1-alpha-1] — 2026-09-25

The first tagged drop. A beta PDF went out into the world. 🌸

### Added

- **Chapter 3 · Lesson 1 (magnetism) — content, in full:**
  - Fields from a straight wire, circular loop & solenoid (`μ₀ = 4π×10⁻⁷ T·m/A`)
  - Lorentz force & charged-particle trajectories (`F_B = |q|vB`, `R = mv/|q|B`)
  - Force on a current-carrying wire (`F_B = BIL`)
  - Force between parallel wires (`F = μ₀I_aI_bL / 2πd`)
  - Rotating-frame motor application (៣.៤) with figure
  - Magnetic deflection of charged particles (`α = |q|Bl/mv`) — ៤.១–៤.៣ with figures
  - Mass spectrograph (`m = q(RB)²/2V`) — ៤.៤ with the aligned energy derivation
- Equation numbering standardized (១)→(១២) across the book; key results boxed
- New figures: orbit radius, helix trajectory, wire forces, parallel-wire demos, motor, deflection, mass spectrograph
- Project docs: CONTRIBUTING (incl. the secret club 🤫 + Git LFS guide), CODE_OF_CONDUCT, refreshed README, `.latexmkrc`

### Changed

- Build: XeLaTeX under **latexmk** (`build.sh` / `build.cmd`), prerequisite checks + keypress-safe error handling
- Font stack: **Open Khmer School** with automatic Latin/Greek/punctuation fallback
- Images migrated to Git LFS; solenoid render replaced with a JPG
- Repo hygiene: evicted IDE config & MCP cruft, weekly backup commits

### Fixed

- Missing `}` / stray undefined symbol breaking the build
- `mv_^2` typo that broke the flalign derivation (twice — it's cursed, we know)
- Minipage side-by-side layouts (we won the war)
- OCR garble normalization (ម៉ាញេទិក, សូលេណូអុីត, វ៉ិចទ័រ — standardized, non-negotiable)

## [Unreleased] — 2026-10-02

Lesson 2 lands, and for the first time every single picture in the book knows its own number.

### Added

- **Chapter 3 · Lesson 2 (Faraday's law & induction) — complete:**
  - Faraday portrait + intro (រូបទី២០) and both experiments with photos (រូបទី២១, រូបទី២២)
  - ភ្លុចម៉ាញេទិក: `Φ_B = B⃗ · A⃗ = BA cos α = B_⊥A` (សញ្ញាត្រាម១), symbol glossary, flux figure + the three cases (ក/ខ/គ)
  - ច្បាប់ផារ៉ាដេ: `E = −N ΔΦ_B/Δt` (សញ្ញាត្រាម២), Δt → 0 note, `e(t) = −N dΦ_B/dt` (សញ្ញាត្រាម៣)
  - Flux-change cases table (magnet & coil, expanding coil, rotating loop) as a native-width figure
- **Every chapter 3 figure now has a caption number** — ១ through ២៣, photos *and* hand-built TikZ panels, with ក./ខ./គ. where panels genuinely belong together
- New images: `faradayexperiment1.jpg`, `faradayexperiment2.jpg`, `magflux.jpg`, `magneticfluxcases.png`, `magnetincoil.jpg`, `handsincoil.jpg`, `magnetic-generator.jpg`

### Changed

- Equation numbering continues the book-wide (១)→(១២) sequence into lesson 2
- `main.pdf` rebuilt: **59 pages** (chapter 3 now at 2 of 5 lessons)
- Repo remote migrated from token-in-URL HTTPS to SSH (`core.sshCommand` pinned to `~/.ssh/githubkey`)

### Fixed

- Equation labels were sitting *inside* math mode, so Khmer numerals fell back to `cmr12` — "Missing character: There is no ២ in font cmr12!" gone
- Corrupted `magfield.jpg` figure block repaired
- Terminology guardrail: `កម្មន្ត` stays `កម្មន្ត` (no more quiet swaps with `កម្លាំង`)
- OCR caption garble normalized for the new flux/EMF figures

## Earlier history (pre-release, straight from the depths)

- **2026-09-19** — Chapter 3 begins: circular-loop field, solenoid render, build unblocked
- **2026-09-07** — Chapter 3 scaffolding; weekly upload backups become a habit
- **2026-09-05** — Chapter 2 finished; placeholder header finally past G11
- **2026-09-03** — Sound interferences; the `defbox` macro enters the chat
- **2026-09-01** — Side-by-side minipages ACTUALLY work; compiled PDFs shipped
- **2026-08-30** — Chapter 2 wave diagrams; chapter 3 banner; build scripts born
- **2026-08-28** — The ice-cold beginnings: repo, LICENSE (PDFs shareable for education), README with badges, Khmer numerals everywhere

---

*The book that launches: 54 pages, chapters 1 & 2 complete, chapter 3 at 1 of 5 lessons. Built by one human, three AIs, and a level of sleep deprivation that should probably be studied by a university.* ☠️🌸

*Currently in the pipeline: 59 pages, chapter 3 at 2 of 5 lessons — lesson 2 is in, and no image is anonymous anymore.* 🌸