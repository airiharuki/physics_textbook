# Changelog

All notable changes, compiled honestly from the git history of this repo. Versions follow **[SemVer 2.0.0](https://semver.org/spec/v2.0.0.html)**; commits follow **[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)**; the prose follows the vibes. Dates are the day each commit swore. From lesson 2 onward, every commit is also a release: annotated tags run `v1.0.0-alpha.N` in reverse chronological order (newest release on top) and each one gets its own section below.

## [Unreleased]

Next up: Chapter 4 (Atomic and Nuclear Physics / រូបវិទ្យាអាតូម និងនុយក្លេអ៊ែរ) and final handbook polish.

---

## [v1.0.0-alpha.20] - 2026-10-24

**Chapter 3 Complete Milestone (135 pages, +34 since alpha.19):** Grand alpha finale! Complete series & parallel $RLC$ circuit families, duality comparison, AC power dynamics, transformer theory, and Lesson 5 (Electromagnetic Waves) authored from scratch to finish, completing all 5 lessons of Chapter 3 (Electricity and Magnetism). ⚡📡🌸

### Added

- **Chapter 3 - Lesson 4 (ចរន្តឆ្លាស់ / Alternating Current) — Finale:**
  - **§4 Series $RLC$ circuit:** KVL with all three components, Fresnel phasor construction, impedance $Z = \sqrt{R^2 + (L\omega - \frac{1}{C\omega})^2}$, phase-angle analysis, and resonance condition $\omega_0 = \frac{1}{\sqrt{LC}}$.
  - **§5 Parallel AC circuits:**
    - **§5.1 Parallel $RL$**, **§5.2 Parallel $RC$**, **§5.3 Parallel $LC$:** KCL branch currents, current-phasor triangles, admittance-style impedance derivations, phase relations, and idealised $LC$ tank ($I \to 0$ at resonance).
    - **§5.4 Parallel $RLC$:** KCL node equation and `circuitikz` schematic (**រូបទី៦០.ក**), branch currents $i_R, i_L, i_C$, Fresnel current diagram (**រូបទី៦០.ខ**), boxed impedance (៥២), boxed phase relations $\tan\varphi$, $\cos\varphi$, $\sin\varphi$ (៥៣), three-case frequency analysis (capacitive / inductive / antiresonance), and boxed resonance and quality factor $Q = R\sqrt{C/L}$ (៥៤), plus tank-current note box.
  - **Duality box (series vs parallel $RLC$):** nine-row comparison table covering shared variable, Kirchhoff law, phasor triangle, impedance/admittance, phase functions, resonance condition, $Q$ and amplification, and practical role (acceptor vs rejector).
  - **§6 Power in AC Circuits (អានុភាពក្នុងសៀគ្វីចរន្តឆ្លាស់):** Instantaneous power $p(t)$, active/average power $P = V I \cos\varphi$ (៤៤), power factor $\cos\varphi$ dynamics (៤៥), apparent power $S = VI$, reactive power $Q = VI\sin\varphi$, and power at resonance ($P_{\max} = \frac{V^2}{R}$).
  - **§7 Transformers (ត្រង់ស្វូម៉ាទ័រ):**
    - **§7.1 Principles & Structure:** Mutual electromagnetic induction, soft laminated iron core, primary/secondary windings, native Circuitikz transformer schematic (**រូបទី៥៨**).
    - **§7.2 Transformation Ratio:** Boxed transformation equation $\frac{V_2}{V_1} = \frac{N_2}{N_1} = k$ (៦២), classification of step-up ($k > 1$) and step-down ($k < 1$) transformers.
    - **§7.3 Energy Losses & Efficiency:** Joule heating in windings ($P_J = R I^2$), eddy currents in solid core, hysteresis loss; mitigation via high-purity thick copper wire and laminated insulated silicon-steel sheets; efficiency formula $\eta = \frac{P_2}{P_1} = \frac{P_2}{P_2 + P_{\text{loss}}}$; ideal transformer relation $\frac{V_2}{V_1} = \frac{I_1}{I_2} = \frac{N_2}{N_1} = k$ (៦៣); Circuitikz power loss diagram (**រូបទី៥៩**).
  - **`\mathbox` macro (`preamble.tex`):** soft panel with a 3pt `bacpurple` accent bar for derivative and integral context notes.
- **Chapter 3 - Lesson 5 (រលកអេឡិចត្រូម៉ាញេទិក / Electromagnetic Waves) — Complete:**
  - **§1 Nature of Electromagnetic Waves (ធម្មជាតិនៃរលកអេឡិចត្រូម៉ាញេទិក):**
    - **§1.1 Maxwell's Principle:** Mutually regenerating time-varying $\vec{E}$ and $\vec{B}$ fields propagating through space.
    - **§1.2 Transverse Wave Nature:** Perpendicular oscillation $\vec{E} \perp \vec{B} \perp \vec{c}$, in-phase vibration, right-handed triad $\vec{E} \times \vec{B} \parallel \vec{c}$.
    - **3D TikZ Vector Diagram (រូបទី៦០):** Full-width 3D vector plot displaying orthogonal electric ($\vec{E}$, bacpurple) and magnetic ($\vec{B}$, teal) wave crests, vector arrows, and spatial wavelength span $\lambda$.
    - **§1.3 Speed and Wavelength:** Vacuum speed $c = \frac{1}{\sqrt{\varepsilon_0\mu_0}} \approx 3 \times 10^8\,\text{m/s}$ and $c = \lambda f = \lambda/T$ (៦៤); speed in refractive media $v = c/n = \lambda_m f$ (៦៥); `\defbox` on invariant frequency $f$ vs. reduced speed and wavelength.
  - **§2 Electromagnetic Spectrum (ស្បិចនៃរលកអេឡិចត្រូម៉ាញេទិក):**
    - Comprehensive 7-band comparison table (**តារាងទី១**): Radio waves, Microwaves, Infrared, Visible light, Ultraviolet, X-rays, and Gamma rays with frequency ranges, wavelength ranges, sources, and technological applications.
    - Summary panel on visible spectrum color sequence (Violet $\approx 400\,\text{nm} \to$ Red $\approx 700\,\text{nm}$) and prism dispersion.
  - **§3 Radio Transmission & Reception (ការបញ្ជូន និងការទទួលរលកវិទ្យុ):**
    - **§3.1 Principles:** Open dipole transmitting antenna (accelerating charges radiate EM waves) and receiving antenna (induced oscillating EMF).
    - **§3.2 Modulation:** Modulating AF audio signal vs. RF carrier wave; Amplitude Modulation (AM) vs. Frequency Modulation (FM); custom TikZ waveform comparison plot (**រូបទី៦១**).
    - **§3.3 Demodulation and Tuning:** Resonant $LC$ tank tuning circuit $f_0 = \frac{1}{2\pi\sqrt{LC}}$ (៦៦); diode detector (rectification) and parallel $RC$ low-pass filter; Circuitikz radio receiver schematic (**រូបទី៦២**).
  - **Lesson 5 Summary Box:** Consolidated formula panel (`\begin{formulabox}`) compiling vacuum relations, medium relations, $LC$ resonance frequency, and reception wavelength $\lambda = 2\pi c \sqrt{LC}$.

### Changed

- **Duality box table layout:** wider label column, thin row separators, two-line cells for the $Q$ row, merged resonance condition cell spanning box content width exactly.
- **`.gitignore` overhaul:** added `scratch/`, covered VS Code/Visual Studio files, `.claude/`, SyncTeX busy-lock files, build temporaries, TikZ/PGF outputs, and preview images.
- Rebuilt `main.pdf`: **135 pages** (milestone expansion), 0 errors, 0 missing characters, 0 new overfull hboxes under XeLaTeX with HarfBuzz renderer.
- Continuous numbering throughout Chapter 3 reached **Figure រូបទី៦២** and **Equation (៦៦)**.

---

## [v1.0.0-alpha.19] — 2026-10-20

Triple-digit milestone reached (101 pages!): Series two-component AC circuits debut — series $RL$, series $RC$, and series $LC$ circuits with systematic KVL derivations, impedance formulas, Fresnel phasor constructions in native TikZ, phase angle dynamics, power factor expressions, and an Editor's Note on the historical War of the Currents. 🌸

### Added

- **Chapter 3 · Lesson 4 (ចរន្តឆ្លាស់ / Alternating Current) — continued:**
  - **Editor's Note (The War of the Currents):** Historical context on the Edison vs. Westinghouse AC/DC rivalry with an outbound reference link to energy.gov.
  - **២.៤. សៀគ្វី $RL$ តជាស៊េរី (Series $RL$ AC Circuit):**
    - KVL instantaneous voltage equation $v(t) = v_R(t) + v_L(t)$ and Fresnel vector triangle $\vec{V} = \vec{V}_R + \vec{V}_L$.
    - Impedance derivation: boxed $Z_{RL} = \sqrt{R^2 + (L\omega)^2}$ (៣៨) with unit definitions $(\Omega)$.
    - Phase angle $\varphi$ and power factor: boxed $\tan\varphi = \frac{L\omega}{R} > 0$ with $0 < \varphi < \frac{\pi}{2}$ (៣៩) and $\cos\varphi = \frac{R}{Z}$.
    - Vector graphics (**រូបទី៥២**): Native CircuitikZ series $RL$ schematic (រូបទី៥២.ក) and right-triangle Fresnel phasor diagram (រូបទី៥២.ខ).
    - Note panel on inductive phase lead ($v$ leads $i$).
  - **២.៥. សៀគ្វី $RC$ តជាស៊េរី (Series $RC$ AC Circuit):**
    - KVL relation $v(t) = v_R(t) + v_C(t)$ and Fresnel vector triangle $\vec{V} = \vec{V}_R + \vec{V}_C$.
    - Impedance derivation: boxed $Z_{RC} = \sqrt{R^2 + \left(\frac{1}{C\omega}\right)^2}$ (៤០) with unit definitions $(\Omega)$.
    - Phase angle $\varphi$ and power factor: boxed $\tan\varphi = -\frac{1}{RC\omega} < 0$ with $-\frac{\pi}{2} < \varphi < 0$ (៤១) and $\cos\varphi = \frac{R}{Z}$.
    - Vector graphics (**រូបទី៥៣**): Native CircuitikZ series $RC$ schematic (រូបទី៥៣.ក) and downward Fresnel phasor triangle (រូបទី៥៣.ខ).
    - Note panel on capacitive phase lag ($v$ lags $i$).
  - **២.៦. សៀគ្វី $LC$ តជាស៊េរី (Series $LC$ AC Circuit):**
    - Antiphase KVL dynamics: $\vec{V}_L$ and $\vec{V}_C$ aligned along the vertical axis with opposite directions (phase difference $\pi$).
    - Impedance derivation: boxed $Z_{LC} = |Z_L - Z_C| = \left|L\omega - \frac{1}{C\omega}\right|$ (៤២).
    - Phase angle analysis: $\varphi = +\frac{\pi}{2}$ when $Z_L > Z_C$ (inductive); $\varphi = -\frac{\pi}{2}$ when $Z_L < Z_C$ (capacitive); boxed trigonometric identities $\cos\varphi = 0$, $|\sin\varphi| = 1$, $|\tan\varphi| \to \infty$ (៤៣).
    - Vector graphics (**រូបទី៥៤**): Native CircuitikZ series $LC$ schematic (រូបទី៥៤.ក) and collinear Fresnel cancellation diagram (រូបទី៥៤.ខ).
    - Note panel on electrical resonance in $LC$ circuit: $Z_{LC} = 0\,\Omega$, $V = 0\,\text{V}$, and natural resonant angular frequency $\omega_0 = \frac{1}{\sqrt{LC}}$.

### Changed

- Rebuilt `main.pdf`: **101 pages** (crossing the 100-page milestone!), 0 errors, 0 missing characters under XeLaTeX with HarfBuzz renderer.
- Continuous numbering progressed to **រូបទី៥៤** (Figure 54) and **សមីការ (៤៣)** (Equation 43).

---

## [v1.0.0-alpha.18] — 2026-10-20

Single-component AC circuits debut: systematic KVL derivations, impedance definitions, and vector TikZ diagrams (schematics, waveforms, and Fresnel phasor diagrams) for purely resistive ($R$), purely inductive ($L$), and purely capacitive ($C$) alternating current circuits. 🌸

### Added

- **Chapter 3 · Lesson 4 (ចរន្តឆ្លាស់ / Alternating Current) — continued:**
  - **២. អនុវត្ត​ច្បាប់​អូម សំណង់​ប្រេណែល និង​គម្លាត​ផាស (Ohm's Law, Fresnel Construction & Phase Difference in AC Circuits):**
    - **២.១. សៀគ្វីរេស៊ីស្តង់សុទ្ធ $R$ (Purely Resistive AC Circuit):**
      - KVL derivation: $v(t) - v_R(t) = 0 \implies i_R(t) = \frac{V_{\max}}{R}\sin(\omega t)$.
      - Boxed formula: $i_R = I_{\max(R)}\sin(\omega t)$ (៣៥) with full parameter glossaries ($Z_R = R$, $\omega = 2\pi f$).
      - Vector diagrams (រូបទី៤៨, រូបទី៤៩): Circuit schematic in CircuitikZ, in-phase waveforms $v(t)$ and $i_R(t)$, and parallel Fresnel phasor representation $\vec{V} \parallel \vec{I}$.
      - Exact note on energy non-storage and phase conclusion ($\Delta\varphi = 0$, $I_R = V/R$).
    - **២.២. សៀគ្វីប៊ូប៊ីនឬអាំងឌុចទ័រសុទ្ធ $L$ (Purely Inductive AC Circuit):**
      - Step-by-step KVL & self-inductance derivation: $v(t) - v_L(t) = 0 \implies L\frac{di_L}{dt} = V_{\max}\sin(\omega t) \implies i_L(t) = I_{\max(L)}\sin(\omega t - \pi/2)$.
      - Boxed formula: $i_L = I_{\max(L)}\sin(\omega t - \pi/2)$ (៣៦) with amplitude $I_{\max(L)} = V_{\max}/Z_L$, inductive reactance $X_L = Z_L = L\omega$, and angular frequency $\omega$.
      - Vector diagrams (រូបទី៥០): Inductor AC loop circuit schematic (រូបទី៥០.ក), wave dynamics showing voltage leading current by $\pi/2$ (រូបទី៥០.ខ), and Fresnel phasor diagram $\vec{V}_{\max} \perp \vec{I}_{\max(L)}$ with rotation sense $\omega$ (រូបទី៥០.គ).
      - Phase conclusion box ($\Delta\varphi = +\pi/2$, voltage leads current by $90^\circ$, $I_L = V/(L\omega)$).
    - **២.៣. សៀគ្វីកុងដង់សាទ័រសុទ្ធ $C$ (Purely Capacitive AC Circuit):**
      - Step-by-step KVL & capacitive charge derivative derivation: $v(t) - v_C(t) = 0 \implies q(t) = C v_C(t) \implies i_C(t) = \frac{dq}{dt} = \omega C V_{\max}\cos(\omega t) = I_{\max(C)}\sin(\omega t + \pi/2)$.
      - Boxed formula: $i_C = I_{\max(C)}\sin(\omega t + \pi/2)$ (៣៧) with capacitive impedance $Z_C = \frac{1}{C\omega}$ ($X_C$) and capacitance $C$.
      - Vector diagrams (រូបទី៥១): Capacitor AC loop circuit schematic with plates, charges $q$ and $-q$, and terminals $a, b$ (រូបទី៥១.ក); waveforms showing current leading voltage by $T/4$ (រូបទី៥១.ខ); and Fresnel phasor diagram with $\vec{I}_{\max}$ leading $\vec{V}_{\max}$ by $90^\circ$ and clean vertical projections $v_C, i_C$ (រូបទី៥១.គ).
      - Phase conclusion box ($\Delta\varphi = -\pi/2$, current leads voltage by $90^\circ$ / voltage lags current by $\pi/2$, $I_C = C\omega V$).

### Changed

- Corrected textbook source typos: component confusion (bobbin/coil $\to$ capacitor), subscript error ($i_{\mathrm{L}\max} \to I_{\max(C)}$), and OCR phrasing.
- Rebuilt `main.pdf`: **95 pages**, 0 errors, 0 missing characters under XeLaTeX with HarfBuzz renderer.
- Continuous numbering progressed to **រូបទី៥១** (Figure 51) and **សមីការ (៣៧)** (Equation 37).

---

## [v1.0.0-alpha.17] — 2026-10-19

Root-Mean-Square (RMS) effective values arrive: systematic derivation for RMS current $I_{\mathrm{rms}}$, RMS voltage $V_{\mathrm{rms}}$, pure vector TikZ curves for sinusoidal AC and squared current waveforms with shaded integral lobes and descriptive callouts. 🌸

### Added

- **Chapter 3 · Lesson 4 (ចរន្តឆ្លាស់ / Alternating Current) — continued:**
  - **តម្លៃប្រសិទ្ធ (\englishfont Root-Mean-Square Value):** Definition and systematic 4-step derivation:
    1. Instantaneous current graph $i(t) = I_{\max}\sin(\omega t)$ (រូបទី៤៧.ក).
    2. Current square $i^2 = I_{\max}^2\sin^2(\omega t)$.
    3. Average of squared current $(i^2)_{\mathrm{avg}} = [I_{\max}^2\sin^2(\omega t)]_{\mathrm{avg}} = \frac{1}{2}I_{\max}^2$ (រូបទី៤៧.ខ).
    4. Square root of mean square: boxed $I_{\mathrm{rms}} = \sqrt{(i^2)_{\mathrm{avg}}} = \frac{I_{\max}}{\sqrt{2}}$ (៣៣) with unit definitions $(\mathrm{A})$.
  - **តម្លៃប្រសិទ្ធនៃតង់ស្យុង (RMS Voltage):** Boxed $V_{\mathrm{rms}} = \sqrt{(v^2)_{\mathrm{avg}}} = \frac{V_{\max}}{\sqrt{2}}$ (៣៤) with unit definitions $(\mathrm{V})$.
  - **Vector Waveform Graphics (រូបទី៤៧):**
    - **រូបទី៤៧.ក:** Continuous sinusoidal alternating current curve $i(t)$ with $I_{\max}$ tick.
    - **រូបទី៤៧.ខ:** Current squared waveform $i^2(t)$, horizontal dashed guide $I_{\max}^2$, red dashed average line $(i^2)_{\mathrm{avg}} = \frac{1}{2}I_{\max}^2$, shaded positive upper crests and lower valleys, with matching callout arrows and explanatory labels in `wavered`.

### Changed

- Rebuilt `main.pdf`: **88 pages**, clean under XeLaTeX with HarfBuzz renderer (0 errors, 0 missing characters).
- Continuous numbering progressed to **រូបទី៤៧** (Figure 47) and **សមីការ (៣៤)** (Equation 34).

---

## [v1.0.0-alpha.16] — 2026-10-17

Diode rectifiers take the stage: alternator motor principle with slip rings, AC sinusoidal current definition, half-wave diode rectifier circuit with oscilloscope wave comparison, and full Graetz bridge rectifier with galvanometer pulsating DC graphs in pure vector TikZ. 🌸

### Added

- **Chapter 3 · Lesson 4 (ចរន្តឆ្លាស់ / Alternating Current) — continued:**
  - **គោលការណ៍នៃជនិតាចរន្តឆ្លាស់ (Alternator Principle):** Rotating rectangular coil in uniform magnetic field, slip rings and carbon brushes (កងរអិល និងសរសៃជក់), sinusoidal AC generation, framed figure រូបទី៤២ (`img/motor2.0.png`).
  - **និយមន័យនៃចរន្តឆ្លាស់ (Definition of AC):** Periodic direction-reversing current, period $T$, frequency $f = 1/T$, and sinusoidal current equation $i = I_{\max}\cos(\omega t)$ (៣០) with parameter definitions.
  - **តម្រង់ចរន្តដោយឌីយ៉ូត (Diode Rectification):** Semi-conductor PN junction diode principle, forward bias vs. reverse bias, and circuit symbol with anode/cathode definitions.
  - **សំទួយចរន្តកន្លះខួប (Half-wave Rectification):** Single-diode rectifier circuit and dual-channel oscilloscope waveform comparison (channels $Y_A$ and $Y_B$) beside រូបទី៤៣ and រូបទី៤៤, average current formula $I_{\mathrm{rav}} = \frac{I_{\max}}{\pi} = 0.318\,I_{\max}$ (៣១) in a titled `formulabox`.
  - **សំទួយចរន្តពេញមួយខួប (Full-wave Bridge Rectification):** Graetz 4-diode diamond bridge rectifier circuit (រូបទី៤៦.ក) and galvanometer full-wave pulsating DC waveform graph (រូបទី៤៦.ខ) crafted in native vector TikZ, featuring alternating AC rail indicators, center Galvanometer unidirectional flow, average DC dashed line $I_{\mathrm{rav}}$, and electric charge shaded integral callouts.
  - **សំទួយចរន្តមធ្យមពេញមួយខួប:** Boxed formula $I_{\mathrm{rav}} = \frac{2}{\pi}I_{\max}$ (៣២) with full parameter and unit glossary, plus a `\defbox` note on galvanometer readings.
  - New image: `img/motor2.0.png` tracked via Git LFS.

### Changed

- Rebuilt `main.pdf`: **87 pages**, 0 errors, 0 missing characters under XeLaTeX with HarfBuzz renderer.
- Continuous numbering progressed to **រូបទី៤៦** (Figure 46) and **សមីការ (៣២)** (Equation 32).

---

## [v1.0.0-alpha.15] — 2026-10-12

Lesson 4 opens its doors: the War of Currents (Edison vs. Westinghouse), AC vs. DC, and long-distance power transmission via transformers. Plus Moul font polishing for LC energy box titles. 🌸

### Added

- **Chapter 3 · Lesson 4 (ចរន្តឆ្លាស់ / Alternating Current) — opened:**
  - `\khmerlesson` heading + `\tanbgdivider` floral divider.
  - Historical introduction on DC vs. AC: Thomas Edison and George Westinghouse debate (១៨៨០), sinusoidal waveform advantages, and transformers (`ត្រង់ស្វូ`) for high-voltage long-distance transmission.
  - Image `img/alternator.png` staged via Git LFS.

### Changed

- **Typesetting fix:** switched `\formulabox` title for the LC circuit energy summary to `\khmermoul` (`fonttitle=\normalfont`) to bypass the Ang TaPich shaping bug on `កន្សោម`.
- **Docs:** updated `AGENTS.md` and `README.md` with TeX Live 2026 notes, circuitikz guidelines, and cache cleaning instructions.
- `main.pdf` rebuilt: **83 pages**, clean under XeLaTeX.

---

## [v1.0.0-alpha.14] — 2026-10-09

The LC circuit breathes to life: capacitor charging, Kirchhoff discharge derivation, second-order ODE, stacked vector oscillation curves in TikZ, and total electromagnetic energy conservation. 🌸

### Added

- **Chapter 3 · Lesson 3 continued (LC circuit & electromagnetic oscillations):**
  - **សៀគ្វី $LC$ ពេលផ្ទុកថាមពល (៥.១):** SPDT switch connection to terminal $a$ shown in vector CircuitikZ (រូបទី៣៩), charging capacitor to $Q_0 = C\mathcal{E}$ (២៣), electrostatic energy storage $E_E = \frac{1}{2}C\mathcal{E}^2$ (២៤), and initial conditions box for $t = 0$.
  - **សៀគ្វី $LC$ ពេលផ្ទេរថាមពល (៥.២):** SPDT switch connection to terminal $b$ isolating the closed $LC$ loop (រូបទី៤០), Kirchhoff loop derivation $-v_C + v_L = 0$ with discharging condition $i = -dq/dt$, second-order ODE $\frac{d^2q}{dt^2} + \frac{1}{LC}q = 0$ (២៥), harmonic oscillator analogy, general charge solution $q(t) = q_{\max}\cos(\omega t + \varphi)$ (២៦), and instantaneous current expression $i(t) = -\omega q_{\max}\sin(\omega t + \varphi) = -I_{\max}\sin(\omega t + \varphi)$ (២៧).
  - **Stacked Vector Oscillation Graph (រូបទី៤១):** Custom dual-subplot TikZ figure plotting charge $q(t)$ in `brownheader` and current $i(t)$ in `primary`, complete with quarter-period vertical alignment dashed lines ($T/2, T, 3T/2, 2T$) illustrating phase quadrature.
  - **Natural Period / Time Constant:** boxed $\tau_{LC} = T = 2\pi\sqrt{LC}$ (២៨) with parameter glossary.
  - **ថាមពលនៃសៀគ្វី $LC$ (Energy of an LC circuit):** total electromagnetic energy formula $E = E_L + E_C = \frac{1}{2}Li^2 + \frac{1}{2}Cv^2$ (២៩), dedicated `\formulabox` for quantities and SI units, and `\defbox` on total energy conservation in an ideal $LC$ oscillator ($E = \frac{1}{2}LI_{\max}^2 = \frac{Q_0^2}{2C} = \text{ថេរ}$).

---

## [v1.0.0-alpha.13] — 2026-10-08

RL circuit current growth and decay curves complete with vector plots and full derivations. 🌸

### Added

- **Chapter 3 · Lesson 3 continued:**
  - ក្រាបបកស្រាយពេលបិទកុងតាក់ (៤.១) — numerical data table ($t = \tau \dots 5\tau$) and vector TikZ exponential charging curve beside រូបទី៣៦ (`ក្រាបនៃសៀគ្វី RL ពេលផ្ទុក`)
  - ករណីបើកកុងតាក់ $S_1$ / បិទកុងតាក់ $S_2$ (៤.២) — full Kirchhoff loop derivation $Ri + L di/dt = 0$, separation of variables, integration helper box, and boxed solution $i(t) = I_m e^{-t/\tau_{RL}}$ (២២) with symbol glossary
  - ក្រាបបកស្រាយពេលផ្ទេរចរន្ត (៤.២) — numerical data table and vector TikZ exponential decay curve beside រូបទី៣៧ (`ក្រាបនៃសៀគ្វី RL ពេលផ្ទេរចរន្តចេញពីប៊ូប៊ីន`)

---

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

---

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

---

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

---

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
- `main.pdf` rebuilt: **64 pages** — **chapter 3 lesson 2 complete**, 2 of 5 lessons done

### Fixed

- **The electric-motor subsection briefly shipped as a heading with a corpse attached** — the ៤.២ heading slipped into an early alpha.9 commit with no body (an editor buffer overwrite lost the paragraph). This alpha.9 tag includes the restored paragraph and the correctly balanced heading
- Stale figure pointers `រូបទី៨` / `រូបទី៩` retargeted to រូបទី២៨ / រូបទី២៩ so the prose and the continuous numbering agree
- `ម៉ាញេទិច` → `ម៉ាញេទិក` in the new generator prose and symbol list

*Tag note: the first v1.0.0-alpha.9 cut shipped the motor heading with no body; the tag was re-cut after restoring it. v1.0.0-alpha.10 was folded back into alpha.9 and its tag dropped.*

---

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

---

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

---

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

---

## Earlier history (pre-release, straight from the depths)

- **2026-09-19** — Chapter 3 begins: circular-loop field, solenoid render, build unblocked
- **2026-09-07** — Chapter 3 scaffolding; weekly upload backups become a habit
- **2026-09-05** — Chapter 2 finished; placeholder header finally past G11
- **2026-09-03** — Sound interferences; the `defbox` macro enters the chat
- **2026-09-01** — Side-by-side minipages ACTUALLY work; compiled PDFs shipped
- **2026-08-30** — Chapter 2 wave diagrams; chapter 3 banner; build scripts born
- **2026-08-28** — The ice-cold beginnings: repo, LICENSE (PDFs shareable for education), README with badges, Khmer numerals everywhere

---

*The handbook as of v1.0.0-alpha.20: 118 pages, chapters 1 & 2 complete, chapter 3 at 3 of 5 lessons finished and lesson 4 nearly done (alternator principle, AC definition, rectifiers, RMS values, single-component, series, and parallel RLC circuits). Built by one human, three AIs, and a level of sleep deprivation that should probably be studied by a university.* ☠️🌸

*Currently in the pipeline: chapter 3 lesson 4 (ចរន្តឆ្លាស់ / alternating currents & RLC series circuits). Next up: power in AC circuits, transformers, and the closing review.* 🌸