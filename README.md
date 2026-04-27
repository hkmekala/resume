# Harikrishna Mekala — Resume

Email: [me@hkmekala.me](mailto:me@hkmekala.me) · Site: [hkmekala.me](https://hkmekala.me) · LinkedIn: [in/hkmekala](https://www.linkedin.com/in/hkmekala)

This repo is a **single-source LaTeX resume** that compiles into two variants from one set of bullet files:

| Variant | Entry point | Output | Used for |
| --- | --- | --- | --- |
| **Full** | `main_full.tex` | 2-page detailed CV | Long-form applications, referrals, recruiter follow-ups |
| **Min**  | `main_min.tex`  | 1-page distilled CV | ATS submissions, job-board applications, fast scans |

Edit any bullet **once** in `data/experience.tex`; both variants update on the next compile.

---

## Repo layout

```
resume/
├── style.tex              # layout, fonts, and the variant macros
├── data/
│   ├── header.tex         # name, headline (variant-aware), contact
│   ├── experience.tex     # every bullet, tagged with \bb / \fb / \mb
│   ├── education.tex
│   └── skills.tex
├── main_full.tex          # \def\resumevariant{full} + inputs
├── main_min.tex           # \def\resumevariant{min} + inputs
├── RESUME_BULLETS.md      # working doc for content review (not compiled)
└── README.md              # this file
```

---

## How variants work

`main_full.tex` and `main_min.tex` each set a single flag:

```latex
\def\resumevariant{full}    % or {min}
```

Then `style.tex` exposes three bullet macros that emit an `\item` only when the active variant matches:

| Macro       | Renders in                |
| ----------- | ------------------------- |
| `\bb{...}`  | both variants             |
| `\fb{...}`  | full variant only         |
| `\mb{...}`  | min variant only          |

Plus two block-level conditionals for whole subsections / inline phrases:

| Macro          | Renders in       |
| -------------- | ---------------- |
| `\fonly{...}`  | full only        |
| `\monly{...}`  | min only         |

### Example

```latex
\begin{itemize}
    \bb{Architected the Trade Order Management System over 23 global exchanges...}
    \fb{Authored Temporal workflows for FCN lifecycle events...}        % full only
    \mb{Earlier roles: ... condensed line ...}                          % min only
\end{itemize}
```

---

## Editing bullets

1. Open `data/experience.tex` (or any other `data/*.tex`).
2. Find the bullet — IDs in `RESUME_BULLETS.md` map directly to the order here.
3. Change the text, or change the prefix:
    - `\bb{...}` → `\fb{...}` to drop from min
    - `\fb{...}` → `\bb{...}` to promote into min
4. Recompile both `main_full.tex` and `main_min.tex`.

That's the entire workflow.

---

## Compiling

### On Overleaf (recommended)

1. Push this repo to GitHub.
2. On Overleaf, **create two projects**, both linked to the same GitHub repo (Project Settings → Sync from GitHub).
3. In each project, set the **main document**:
    - Project A → `main_full.tex`
    - Project B → `main_min.tex`
4. Edit any `data/*.tex` locally → push → both projects auto-rebuild on Overleaf.

> Why two projects? Overleaf builds one main document per project. This gives you both PDFs without juggling toggles.

### Locally (if you have a TeX distribution)

```bash
pdflatex main_full.tex && pdflatex main_min.tex
```

(Two passes recommended for both, especially if hyperlinks need resolving.)

---

## Confidentiality rule

**No internal repo or package names** ever appear in the compiled PDFs (e.g. nothing like `wealth-core`, `@org/internal-package`, etc.). Product names, feature names, public-facing service names, and broker-dealer names (Pershing, NetX360) are fine — they're either marketed externally or industry-standard.

When in doubt, generic-ize: *"the wealth-management platform"*, *"internal microservices"*, *"the file-storage system"*.

---

## Files retained for reference

- `main.tex` — original monolithic LaTeX (pre-variant system). Safe to delete once the new system is verified.
- `relavant.tex` — older 1-page draft (also pre-variant). Same.
- `hkmekala_cv_5.pdf`, `hkmekala_cv_6_full.pdf`, `hkmekala_cv_6_min.pdf` — historical PDFs. Keep for diffing or delete.

---

## Credits

Template forked from [subidit/rover-resume](https://github.com/subidit/rover-resume), then heavily modified for the variant-driven build.
