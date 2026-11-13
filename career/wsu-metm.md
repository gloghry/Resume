# WSU METM application résumé — issue #16

The application draft uses the #15 knowledge base and the `wsu-metm` and
`technical-management` audience profiles. It selects technical work in
manufacturing, retail operations and supervision, education, and clearly labeled
academic projects. Broader unconfirmed claims and sensitive implementation
details are excluded. This task does not change the public résumé or publishing
workflow.

## Local deliverables

The following are intentionally ignored, rather than published in this repo:

- `private/wsu-metm/resume.tex` and `resume.pdf`: application source and PDF.
- `private/wsu-metm/evidence.md`: every claim mapped to knowledge-base fact IDs.
- `private/wsu-metm/requirements.md`: official program sources and retrieval limits.
- `private/wsu-metm/review.md`: applicant questions and validation results.
- `private/wsu-metm/README.md`: build and review commands.

These files exist only in the working environment until durable private storage
is established under #18. Cloning this public repo will not restore them. The
paths document where to retrieve the local draft, not a completed backup solution.

## Rebuild

With the local source present, run from the repository root:

```bash
TEXINPUTS="$PWD:" pdflatex -interaction=nonstopmode -halt-on-error \
  -output-directory=private/wsu-metm private/wsu-metm/resume.tex
```

The root `resume.cls` is reused; existing résumé sources and build tooling are
unchanged. Do not run the public release workflow to deliver an application draft.

## Validation and remaining review

The draft compiled to one US Letter page and was visually inspected using a
MuPDF-rendered image. Extracted text was checked for content and ordering; the
LaTeX log had no overfull or underfull box warnings. Applicant confirmation is
still needed for disclosure suitability, exact credential wording if required,
and any instructions specific to the application portal.

Official context checked on 2026-11-13:

- [WSU ETM admissions](https://etm.wsu.edu/admission/)
- [WSU Graduate School METM listing](https://gradschool.wsu.edu/degrees/master-of-engineering-and-technology-management-metm/)

Indexed official listings request a résumé showing work experience. Direct page
retrieval returned HTTP 403, so portal-specific instructions need rechecking.
The one- or two-page constraint comes from #16, not an asserted WSU page limit.
