# Garett Loghry Resume Repository

Hi, thanks for checking out my resume repo. This is intended to be a source for my website, which will use the latest generated pdf, but it also shows some CI/CD work with GitHub actions.

## Automated Builds

This repo uses GitHub Actions to produce a pdf from the source tex file. To see this workflow, go [here](https://github.com/gloghry/Resume/blob/main/.github/workflows/makefile.yml).

The [latest](https://github.com/gloghry/Resume/releases/tag/latest) version of my resume can be found under the "Releases" tab.

## Local Builds

To build the PDF locally, you'll need a LaTeX distribution installed. The following command installs the minimal required packages for Ubuntu:

```bash
sudo apt-get update && sudo apt-get install -y texlive-latex-base texlive-latex-recommended
```

After cloning this repo, you can build the pdf by using make.

```bash
make
```

Optionally, you can `make clean` to remove all intermediary and output files.

## Local Development

There is a bash script, `start.sh`, which can be used in a Ubuntu 24.04 LTS environment to start/terminate a PDF Viewer, and gnome text editor together.

This uses the package `latexmk`, but isn't required for building.
