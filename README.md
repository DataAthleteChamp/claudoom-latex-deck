# claudoom-latex-deck

LaTeX Beamer source for the **ClauDOom** presentation — 02285
Artificial Intelligence and Multi-Agent Systems, DTU, F26.
Team ClauDOom finished **1st of 64** overall in the course
competition (also #3 in Actions and #3 in Time).

This repo holds the deck itself; the solver code lives in a
separate Python repo (`PythonMazeRunner`).

## Build

```bash
make            # builds main.pdf with latexmk + xelatex + biber
make watch      # live rebuild on save
make clean      # drop intermediates
```

Requirements:
- A modern TeX distribution (TeX Live 2022+ or MacTeX).
- `xelatex`, `biber`, `latexmk` on the `$PATH`.
- The `metropolis` Beamer theme (ships with TeX Live).

## Layout

```
main.tex                # entry point, includes everything below
preamble/               # packages, theme, custom commands, deck metadata
slides/01..14_*.tex     # one file per slide
bibliography/           # references.bib (12 code-anchored citations)
assets/{images,videos,diagrams}/   # add screenshots, mp4 demos, tikz svg
```

## Slide map

| # | File                       | Topic                                       | Status |
|---|----------------------------|---------------------------------------------|--------|
| 1 | `01_title.tex`             | Title + group declaration + competition badge | 🟢 |
| 2 | `02_strategy.tex`          | Cascade of strategies                       | 🟢 |
| 3 | `03_architecture.tex`      | TikZ architecture diagram                   | 🟢 |
| 4 | `04_decomposition.tex`     | BFS subgoal decomposition                   | 🔴 needs screenshot |
| 5 | `05_joint_astar.tex`       | Joint A* (≤50 cells)                        | 🔴 needs video |
| 6 | `06_ecbs_rounds.tex`       | ECBS rounds + FOCAL                         | 🔴 needs video |
| 7 | `07_ecbs_fallbacks.tex`    | Prioritised → serialised                    | 🟢 |
| 8 | `08_windowed.tex`          | Windowed joint A* (evict & restore)         | 🔴 needs video |
| 9 | `09_terraform.tex`         | Multi-mover terraform                       | 🔴 needs video |
| 10| `10_claudoom_level.tex`    | Our level: design + solve                   | 🔴 needs screenshot + video |
| 11| `11_experiments.tex`       | Ablations + tuning                          | 🟡 fill numbers |
| 12| `12_limitations.tex`       | Limitations                                 | 🟡 fill bullets |
| 13| `13_future_work.tex`       | Future work                                 | 🟡 fill bullets |
| 14| `14_results.tex`           | Competition standings                       | 🔴 needs screenshot |

## Adding assets

- Screenshots → `assets/images/*.png` and call `\screenshot{path}{caption}`.
- Videos → `assets/videos/*.mp4` and call `\demovideo{path}{caption}`.
- Both commands render a visible placeholder if the file is missing,
  so the deck always compiles.

## Adding a citation

1. Append a BibTeX entry to `bibliography/references.bib`.
2. Use `\citebadge{key}` inline. It renders a small superscripted `[#]`.

The current 12 citations are all anchored to specific modules in
`PythonMazeRunner/solver/*.py`; see the `note = {…}` field of each
BibTeX entry for the link.

## Conventions

- Each slide is one `.tex` file under `slides/` — easy to edit in parallel.
- Custom commands live in `preamble/commands.tex`:
  `\demovideo`, `\screenshot`, `\citebadge`, `\todoslide`, `\diagrambox`,
  `\resultcard`.
- Slide titles are the source of truth for what each slide is about;
  body text is intentionally minimal — narration carries the deck.

## License

MIT — see `LICENSE`.
