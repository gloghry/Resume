# Garett Loghry Resume Repository

Hi, thanks for checking out my resume repo. This is intended to be a source for my website, which will use the latest generated pdf, but it also shows some CI/CD work with GitHub actions.

## Automated Builds

This repo uses GitHub Actions to produce a pdf from the source tex file. To see this workflow, go [here](https://github.com/gloghry/Resume/blob/main/.github/workflows/build_latest.yml).

Pull requests targeting `main` build the PDF for review without publishing a release. Changes to `resume.tex`, `resume.cls`, `makefile`, or the workflow trigger a build. Each successful build saves a `resume-pdf` artifact on the workflow run for 30 days.

Publishing is serialized. Before changing the release, the job checks that its commit is still the current `main` revision and is equal to or newer than the `latest` tag by commit ancestry. Stale or divergent candidates are skipped, including old reruns.

Eligible successful builds on `main` update the [latest release](https://github.com/gloghry/Resume/releases/tag/latest). The [PDF download](https://github.com/gloghry/Resume/releases/download/latest/resume.pdf) keeps the same URL. The workflow uploads the new PDF before replacing the existing asset, keeps the previous PDF during the swap, and attempts to restore its download name if the swap fails. Existing dated releases are left in place.

You can also select **Run workflow** in GitHub Actions. Manual runs on other branches build a review artifact; only `main` publishes.

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
