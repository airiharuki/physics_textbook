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

- **The electric-motor subsection briefly shipped as a heading with a corpse attached** — the ៤.២ heading slipped into an early alpha.9 commit with no body (an editor buffer overwrite lost the paragraph). This alpha.9 tag includes the restored paragraph and the correctly balanced heading
- Stale figure pointers `រូបទី៨` / `រូបទី៩` retargeted to រូបទី២៨ / រូបទី២៩ so the prose and the continuous numbering agree
- `ម៉ាញេទិច` → `ម៉ាញេទិក` in the new generator prose and symbol list

### Changed

- Generator derivation follows the house pattern for multi-step work: `flalign*` for the steps, result and its Khmer number in a plain `center` — keeps ៦ out of math mode
- Generator figure printed beside its derivation at 0.55/0.40 minipage widths; motor figure stacked below its paragraph at `0.75\linewidth`, matching figure ២ៗ (same 1.42:1 aspect)
- `main.pdf` rebuilt: **64 pages** — **chapter 3 lesson 2 complete**, 2 of 5 lessons done

*Tag note: the first v1.0.0-alpha.9 cut shipped the motor heading with no body; the tag was re-cut after restoring it. v1.0.0-alpha.10 was folded back into alpha.9 and its tag dropped.*

## [v1.0.0-alpha.10] — 2026-10-05

Lesson 3 cracks open, and its derivations look like lesson 2's: steps in `flalign*`, results boxed, Khmer numbers outside math.

### Added

- **Chapter 3 · Lesson 3 — មេរៀនទី៣៖ អូតូអាំងឌុចស្យុង, opened:**
  - Lesson intro paragraph and the `\khmerlesson` + `\tanbgdivider` banner, plus topic ១ heading (mutual induction / linking inductance)
  - ១. mutual-induction block: the two-coils figure `mutualinductance.png` placed left of its caption (រូបទី៣០) beside the bullet list and `e_2 = -N_2 dΦ_{B2}/dt` (៧)
  - Derivation chain (`N_2Φ_2 = M_{21}i_1` (៨)) → នាំឱ្យ substitution → boxed `e_2`, `E_2`, `N_1Φ_1 = M_{12}i_2`, boxed `e_1`, `E_1`, and the boxed `M` (៩–១៤)
  - Full symbol glossary for `M`, `M_{12}`, `M_{21}`, fluxes, turns, currents, ΔI, Δt, rates, and the EMFs

### Changed

- Generator result `e(t) = NBAω sin(ωt)` (៦) is now boxed like the rest of the key results
- `main.pdf` rebuilt: **67 pages** — chapter 3 at 2 of 5 lessons plus the lesson-3 opener

## [v1.0.0-alpha.11] — 2026-10-06

Boxes find a new face, and the first lesson-3 circuit diagram turns up.

### Added

- **Chapter 3 · Lesson 3 · ២.១ experiment shown:** the closing-switch paragraph now sits beside `img/autoinductionexperiment.png` (រូបទី៣១), replacing the temporary raw `circuitikz` sketch; caption follows the book pattern

### Changed

- `\formulabox` and `\khmervideobox` re-skinned: soft wash panel stays, the old framed-chip title bar is replaced by a 3pt `primary` accent bar, sharp corners, and an inline coloured title with a hairline rule
- `.latexmkrc` repair: the live variable for XeLaTeX is `$xelatex`, not `$pdflatex`, so `latexmk main.tex` now just works (nonstopmode + file-line-error + synctex)

### Fixed

- `\usepackage{qrcode}` had been silently removed while adding `circuitikz`; restored and then dropped `circuitikz` again once the photo covered the figure
- `main.pdf` rebuilt: **68 pages**, clean

## [v1.0.0-alpha.12] — 2026-10-08

Self-inductance, magnetic energy, non-inductive coils, and the RL current rise derivation land in lesson 3. 🌸

### Added

- **Chapter 3 · Lesson 3 continued:**
  - អាំងឌុចតង់ផ្ទាល់ (១.២) — coil self-inductance derivation from $N\Phi = Li$ (១៥) to $L = \mu_0 N^2 A / l$ (១៦), instantaneous & average self-induced EMFs $e = -L di/dt$ (១៧) and $E = -L \Delta I/\Delta t$ (១៨) beside រូបទី៣៣ (`magneticfluxviasolenoid.png`)
  - Styled definition box for inductance in a dedicated `\formulabox`
  - សៀគ្វីគ្មានអាំងឌុចតង់ (២.៤) — non-inductive bifilar winding beside figure រូបទី៣៤ (`mortysolenoid.png`)
  - ថាមពលម៉ាញេទិច (២.៥ / ៣) — magnetic energy stored in an inductor derived via calculus from power $p = Li di/dt$ to boxed $E_L = \frac{1}{2}LI^2$ (២០) with symbol glossary and field storage note
  - សៀគ្វី $RL$ (៤ / ៤.១) — closing-switch current growth derived from Kirchhoff's loop rule $-\mathcal{E} + V_L + V_R = 0$, variable separation, integration helper formula box, to boxed $i(t) = I_m(1 - e^{-t/\tau_{RL}})$ (២១) with time constant $\tau_{RL} = L/R$
- **Project Infrastructure & Tooling:**
  - `AGENTS.md` operator notes for build workflow, font stack, design system, and Khmer typesetting gotchas
  - GitHub issue templates under `.github/ISSUE_TEMPLATE/` (`content_or_typo.md`, `build_or_rendering.md`, `feature_or_diagram.md`, and `config.yml`)

### Changed

- **Modernized `\defbox`:** aligned with `formulabox` aesthetic using soft `boxbg` fill, sharp corners, and a 3pt `bacpink` left accent bar
- `main.pdf` rebuilt: **74 pages**, clean under XeLaTeX

## [v1.0.0-alpha.13] — 2026-10-08

RL circuit current growth and decay curves complete with vector plots and full derivations. 🌸

### Added

- **Chapter 3 · Lesson 3 continued:**
  - ក្រាបបកស្រាយពេលបិទកុងតាក់ (៤.១) — numerical data table ($t = \tau \dots 5\tau$) and vector TikZ exponential charging curve beside រូបទី៣៦ (`ក្រាបនៃសៀគ្វី RL ពេលផ្ទុក`)
  - ករណីបើកកុងតាក់ $S_1$ / បិទកុងតាក់ $S_2$ (៤.២) — full Kirchhoff loop derivation $Ri + L di/dt = 0$, separation of variables, integration helper box, and boxed solution $i(t) = I_m e^{-t/\tau_{RL}}$ (២២) with symbol glossary
  - ក្រាបបកស្រាយពេលផ្ទេរចរន្ត (៤.២) — numerical data table and vector TikZ exponential decay curve beside រូបទី៣៧ (`ក្រាបនៃសៀគ្វី RL ពេលផ្ទេរចរន្តចេញពីប៊ូប៊ីន`)

## [v1.0.0-alpha.14] — 2026-10-09

The LC circuit breathes to life: capacitor charging, Kirchhoff discharge derivation, second-order ODE, stacked vector oscillation curves in TikZ, and total electromagnetic energy conservation. 🌸

### Added

- **Chapter 3 · Lesson 3 continued (LC circuit & electromagnetic oscillations):**
  - **សៀគ្វី $LC$ ពេលផ្ទុកថាមពល (៥.១):** SPDT switch connection to terminal $a$ shown in vector CircuitikZ (រូបទី៣៩), charging capacitor to $Q_0 = C\mathcal{E}$ (២៣), electrostatic energy storage $E_E = \frac{1}{2}C\mathcal{E}^2$ (២៤), and initial conditions box for $t = 0$.
  - **សៀគ្វី $LC$ ពេលផ្ទេរថាមពល (៥.២):** SPDT switch connection to terminal $b$ isolating the closed $LC$ loop (រូបទី៤០), Kirchhoff loop derivation $-v_C + v_L = 0$ with discharging condition $i = -dq/dt$, second-order ODE $\frac{d^2q}{dt^2} + \frac{1}{LC}q = 0$ (២៥), harmonic oscillator analogy, general charge solution $q(t) = q_{\max}\cos(\omega t + \varphi)$ (២៦), and instantaneous current expression $i(t) = -\omega q_{\max}\sin(\omega t + \varphi) = -I_{\max}\sin(\omega t + \varphi)$ (២៧).
  - **Stacked Vector Oscillation Graph (រូបទី៤១):** Custom dual-subplot TikZ figure plotting charge $q(t)$ in `brownheader` and current $i(t)$ in `primary`, complete with quarter-period vertical alignment dashed lines ($T/2, T, 3T/2, 2T$) illustrating phase quadrature.
  - **Natural Period / Time Constant:** boxed $\tau_{LC} = T = 2\pi\sqrt{LC}$ (២៨) with parameter glossary.
  - **ថាមពលនៃសៀគ្វី $LC$ (Energy of an LC circuit):** total electromagnetic energy formula $E = E_L + E_C = \frac{1}{2}Li^2 + \frac{1}{2}Cv^2$ (២៩), dedicated `\formulabox` for quantities and SI units, and `\defbox` on total energy conservation in an ideal $LC$ oscillator ($E = \frac{1}{2}LI_{\max}^2 = \frac{Q_0^2}{2C} = \text{ថេរ}$).

### Changed

- `main.pdf` rebuilt: **82 pages**, clean under XeLaTeX.

## [Unreleased]

Next up: RLC damped oscillations and resonance.


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

*Currently in the pipeline: 67 pages, chapter 3 at 2 of 5 lessons finished plus lesson 3 started — mutual inductance, the full `M` glossary and all. Next up: self-inductance, magnetic energy, the `RL` and `LC` circuits.* 🌸