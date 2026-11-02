# Git and GitHub

A 20-minute introductory talk for the Tinkers Study Group, 4 November 2026.

The audience is mostly retired. Many have coded in the past, some have
downloaded projects from GitHub, but few use Git themselves. The aim is to
explain the terminology, why people use version control, and the difference
between Git and GitHub. The group is very interactive, so the deck is kept
short to leave room for discussion. The meeting organiser will introduce the
talk and gauge interest in a more detailed follow-up meeting afterwards.

## Slide outline

1. **Ever done this?**: the `report_final_REALLY.doc` problem
2. **What is Git?**: a version control program on your own machine
3. **Git vs GitHub**: program vs website ("Git is to GitHub as email is to Gmail")
4. **The core vocabulary**: repository, commit, history, diff
5. **Branches and merging**: with a mermaid gitGraph diagram
6. **Working with others**: remote, clone, push/pull (Git) vs fork, pull request, issue (GitHub)
7. **What you've seen on GitHub**: live demo, starting from a project's main page
8. **Questions?**: with links to getting-started resources

Speaker notes are in `::: notes` blocks. Press `s` during the presentation to
open the speaker view.

## Live demo

"What you've seen on GitHub" has links to a few example projects:
[Pi-hole](https://github.com/pi-hole/pi-hole) (the main demo),
[Audacity](https://github.com/audacity/audacity) and
[this presentation](https://github.com/paulstallard/presentation_git_github_tinkers).
The plan is to open one and walk around it from its main page (commits,
branches, issues, pull requests, releases) rather than jump to each page
separately. The speaker notes have a walk-through.

Before the talk:

- Check the links still work and the pages look as expected
- Pick one good issue and one merged pull request to show
- Take screenshots as a backup in case the wifi fails

## Building

Requires [Quarto](https://quarto.org) and the `check-classes` helper script
(run by `make`). PDF export also needs `decktape` and Ghostscript (`gs`).

| Command | What it does |
|---------|--------------|
| `make` | Render the slides to `_output/` and run `check-classes` |
| `make pdf` | Export a PDF (`output.pdf` and a compressed `output-small.pdf`) |
| `make pdf-builds` | As above (`output-builds.pdf` and `output-builds-small.pdf`), with one page per fragment build step |
| `make to_pi` | Publish `_output/` to the web server on `huxley.local` |
| `make clean` | Delete the rendered output |

## Files

| File | Purpose |
|------|---------|
| `index.qmd` | The slides and speaker notes |
| `_quarto.yml` | Project settings (output folder, slide size) |
| `custom.scss` | Theme customisation on top of the revealjs dark theme |
| `styles.css` | Extra styles, including the Git/GitHub labels and demo links |
| `img/` | Logos and favicon. `logo-*-dark.png` are white-text versions of the Git and GitHub logos, made from the originals for the dark theme |
| `CLAUDE.md` | Background brief for the talk |

## Ideas for the follow-up meeting

- Installing Git and setting your name and email
- The everyday cycle: edit, stage (`git add`), commit (`git commit`)
- Looking at history with `git log` and `git diff`
- Branching, merging and resolving conflicts
- Creating a GitHub account, cloning, pushing and pulling
- Forking a project and making a pull request
- GitHub Actions, using the club website's automatic deployment as the worked
  example (perhaps presented by the members who built it)
- Branching strategies (see the resources below)

## Resources

- [Patterns for Managing Source Code Branches](https://martinfowler.com/articles/branching-patterns.html)
- [Trunk-based Development](https://trunkbaseddevelopment.com/)
- [Pro Git book](https://git-scm.com/book) (free online)
- [Git downloads](https://git-scm.com/downloads)
- [GitHub Docs: Get started](https://docs.github.com/get-started)
