# Changelog

All notable changes, compiled honestly from the git history of this repo. Versions follow **[SemVer 2.0.0](https://semver.org/spec/v2.0.0.html)**; commits follow **[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)**; the prose follows the vibes. Dates are the day each commit swore. From lesson 2 onward, every commit is also a release: annotated tags run `v1.0.0-alpha.N` in commit order and each one gets its own section below.

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

## [v1.0.0-alpha.8] — 2026-10-04

The minus sign explained itself, the eddy currents swirled in, and the book grew a video box.

### Added

- **Chapter 3 · Lesson 2 continued:**
  - ច្បាប់ឡិនទី២ (២.២) — all four magnet-motion cases, with the pull-the-magnet-away diagram as រូបទី២៦
  - ចរន្តភូកូល / ចរន្តអេឌី (៣) — eddy currents in a conductor, heating the metal and opposing the change, beside រូបទី២៧
  - ជនិតានិងម៉ូទ័រអគ្គិសនី (៤) heading opened, with `electricgenerator.png` and `electricmotor.png` staged for it
- **`\khmervideobox{VIDEO}{TITLE}{CAPTION}`** in `preamble.tex` — a clickable YouTube link plus an auto-generated QR code (2.6 cm) in a box that reuses the Faraday box's exact palette (`boxbg`/`boxframe` fill, `primary` title bar, 1pt rule, 3mm radius). Takes a bare video ID or a full URL; breakable, so long captions split instead of overflowing
- `qrcode` package added to the build (verified working under XeLaTeX)
- New images: `lenzlaw1.png`, `lenzlawdiagram2.png`, `eddycurrentdiagram.png`

### Changed

- Figure ២៦ printed at `0.95\linewidth` (3.18:1 strip — full width costs only ~5.1cm of height); figure ២៧ at `0.75\linewidth` (1.42:1 diagram — the largest size that still leaves a usable amount of text on the page). Both sources are 6250px wide, so quality was never the constraint
- `main.pdf` rebuilt: **63 pages** — lesson 2 still in progress

### Fixed

- Raw `&` in the new `Electric Generators & Electric Motors` topic title blew up as a misplaced alignment tab (and poisoned `main.toc` on the next pass) — now escaped

## [v1.0.0-alpha.9] — 2026-10-04

Lesson 2 closes out. Generators, motors, and the whole book now knows what a minus sign is for. 🌸

### Added

- **Chapter 3 · Lesson 2 finished:**
  - ជនិតាអគ្គិសនី (៤.១) — spinning magnet induces a sinusoidal EMF, `e(t) = -N dφ/dt = NBAω sin(ωt)` (សញ្ញាត្រាម៦) beside រូបទី២៨, with the full symbol glossary and `E_max = E_m = NBAω`
  - ម៉ូទ័រអគ្គិសនី (៤.២) — the motor as an electric motor: same coil, same field, force instead of induction, with រូបទី២៩
  - Lesson 2 figure run now complete at ២០–២៩; equations at (១)–(៦)
- Release artifact published as a GitHub release asset: `PHY - G12 - Physics Handbook (2026 Version - 1.0.0-alpha.9).pdf`

### Changed

- Generator derivation follows the house pattern for multi-step work: `flalign*` for the steps, result and its Khmer number in a plain `center` — keeps ៦ out of math mode
- Generator figure printed beside its derivation at 0.55/0.40 minipage widths; motor figure stacked below its paragraph at `0.75\linewidth`, matching figure ២ៗ (same 1.42:1 aspect)
- `main.pdf` rebuilt: **63 pages** — **chapter 3 lesson 2 complete**, 2 of 5 lessons done

### Fixed

- `ម៉ាញេទិច` → `ម៉ាញេទិក` in the new generator prose and symbol list
- Stale figure pointer `រូបទី៨` / `រូបទី៩` retargeted to រូបទី២៨ / រូបទី២៩ so the prose and the continuous numbering agree

## [Unreleased]

Next up: **chapter 3 · lesson 3** — whatever waits in the wings.

## [v1.0.0-alpha.1] — 2026-09-25

Lesson 2 lands in full — and for the first time every single picture in the book knows its own number.

### Added

- **Chapter 3 · Lesson 2 (Faraday's law & induction) — complete:**
  - Faraday portrait + intro (រូបទី២០) and both experiments with photos (រូបទី២១, រូបទី២២)
  - ភ្លុចម៉ាញេទិក: `Φ_B = B⃗ · A⃗ = BA cos α = B_⊥A` (សញ្ញាត្រាម១), symbol glossary, flux figure + the three cases (ក/ខ/គ)
  - ច្បាប់ផារ៉ាដេ: `E = −N ΔΦ_B/Δt` (សញ្ញាត្រាម២), Δt → 0 note, `e(t) = −N dΦ_B/dt` (សញ្ញាត្រាម៣)
  - Flux-change cases table (magnet & coil, expanding coil, rotating loop) as a native-width figure
  - កម្លាំងអគ្គិសនីចលករអាំងឌ្វីក្នុងខ្សែចម្លង (១.៥): moving rod in a field, `|E| = |ΔΦ_B|/Δt = BΔA/Δt = B·LΔx/Δt` → `|E| = Blv` (សញ្ញាត្រាម៤) beside the rod figure (រូបទី២៤)
  - Ohm's law tie-in `V = |E| = RI` and the circuit-current box `I = |E|/R` (សញ្ញាត្រាម៥) in a titled `formulabox`
- **Every chapter 3 figure now has a caption number** — ១ through ២៤, photos *and* hand-built TikZ panels, with ក./ខ./គ. where panels genuinely belong together
- New images: `faradayexperiment1.jpg`, `faradayexperiment2.jpg`, `magflux.jpg`, `magneticfluxcases.png`, `magneticrod.jpg`

### Changed

- Equation numbering continues the book-wide (១)→(១២) sequence into lesson 2, now running through (៥)
- `main.pdf` rebuilt: **60 pages** — chapter 3 lesson 2 closed out, 2 of 5 lessons done
- Repo remote migrated from token-in-URL HTTPS to SSH (`core.sshCommand` pinned to `~/.ssh/githubkey`)
- `.rider/` added to `.gitignore` (JetBrains config, like `.idea/` before it)

### Fixed

- Equation labels were sitting *inside* math mode, so Khmer numerals fell back to `cmr12` — "Missing character: There is no ២ in font cmr12!" gone
- Corrupted `magfield.jpg` figure block repaired
- Terminology guardrail: `កម្មន្ត` stays `កម្មន្ត` (no more quiet swaps with `កម្លាំង`)
- Khmer terms normalized chapter-wide: `ម៉ាញេទិក` (not `ម៉ាញេទិច`), `ផ្ទៃ` (not `ផ្ទឃ`), `ទម្រ` (not `ទ្រមេ`) — the OCR and the AI finally agree
- Stale figure cross-reference `រូបទី៤` retargeted to `រូបទី២៤` so continuous numbering and the prose match
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

*Currently in the pipeline: 63 pages, chapter 3 at 2 of 5 lessons — and lesson 2 is done, Faraday to Lenz to eddy currents to generators to motors, every figure numbered, every equation labeled. Next up: lesson 3.* 🌸