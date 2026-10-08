---
name: "Build or Typesetting Bug (បញ្ហា Build ឬ Font)"
about: "Report a XeLaTeX build failure, missing font glyph, Git LFS pointer issue, or layout overflow."
title: "[Bug]: "
labels: ["bug", "build"]
assignees: []
---

### 💻 Environment (បរិស្ថានម៉ាស៊ីន)
- **Operating System:** Windows / Linux / macOS
- **TeX Live / XeLaTeX version:** (e.g. `xelatex --version` or TeX Live 2024/2025)
- **Build Method:** `build.cmd` / `./build.sh` / `latexmk main.tex`

---

### 🚨 Describe the Bug (ការពិពណ៌នាអំពីបញ្ហា)
*What failed during the build or when viewing the PDF?*

---

### 📋 Steps to Reproduce
1. Clone repository (with/without `git lfs pull`):
2. Run command: `...`
3. Error observed:

---

### 🪵 Log Output / Screenshots
```text
<!-- Paste relevant snippet from build output or main.log -->
```

*(If this is a visual rendering glitch such as broken font shaping, missing character box, or minipage overflow, please attach a screenshot).*

---

### 🌸 Common Gotcha Self-Check
- [ ] Have you run `git lfs pull` so images under `img/` aren't 130-byte pointer files?
- [ ] Have you tested running `latexmk -C main.tex` to clear corrupted bookmark/TOC caches?
- [ ] Are the fonts in `fonts/` installed on the system (XeLaTeX requires system fonts)?
