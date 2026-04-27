#!/bin/bash
set -e

# # Step 3.1 — Create the v1-resume branch (preserves legacy state)
# git branch v1-resume
# git branch -v

# # Step 3.2 — Stay on main and remove legacy files
# git rm main.tex relavant.tex hkmekala_cv_5.pdf hkmekala_cv_6_full.pdf hkmekala_cv_6_min.pdf

# Step 3.3 — Unzip the new state on top
unzip -o resume-update.zip
ls -la
ls -la data/

# Step 3.4 — Install LaTeX
sudo apt-get update
sudo apt-get install -y --no-install-recommends \
  texlive-latex-recommended \
  texlive-latex-extra \
  texlive-fonts-recommended \
  texlive-fonts-extra

# Step 3.5 — Compile both PDFs
pdflatex -interaction=nonstopmode main_full.tex
pdflatex -interaction=nonstopmode main_full.tex
pdflatex -interaction=nonstopmode main_min.tex
pdflatex -interaction=nonstopmode main_min.tex

# Step 3.6 — Rename PDFs to a stable, recruiter-friendly name
mv main_full.pdf hkmekala_cv_full.pdf
mv main_min.pdf hkmekala_cv_min.pdf

# Step 3.7 — Clean up build artifacts and the zip/prompt files
rm -f *.aux *.log *.out
rm -f resume-update.zip CODESPACE_PROMPT.md

# Step 3.8 — Commit everything on main
git add -A
git status
git commit -m "feat: variant-driven resume system (full + min)

Single source of truth in data/*.tex with \bb / \fb / \mb tag macros.
Two thin entry points (main_full.tex, main_min.tex) compile the same
content into a 2-page detailed CV and a 1-page distilled CV.

Font switched from Raleway to Source Sans Pro for stronger ATS
compatibility. Section headers bolded for clearer parsing anchors.

Legacy state (main.tex, relavant.tex, old PDFs) preserved on the
v1-resume branch."

# Step 3.9 — Push both branches
git push origin main
git push origin v1-resume

# Step 3.10 — Final verification
git log --oneline --all -5
git branch -av
ls -la *.pdf