# Codex résumé tailoring workflow

1. Read the knowledge-base files and the exact job description or program
   requirements supplied by the applicant. Keep private inputs in `private/`.
   If requirements are absent, prepare a provisional draft and mark the gap;
   do not invent program criteria. If asked to verify current requirements,
   consult the official employer or program source and record the retrieval date.
2. Extract requirements and distinguish mandatory requirements, preferences,
   format/length constraints, and questions. Choose an audience profile in
   audiences.md, combining profiles if helpful and adapting emphasis to the actual
   requirements. Capture deadline and intended output location when supplied.
3. Make a local evidence matrix. Match each requirement to eligible fact IDs;
   record evidence context and gaps. Review items and interests cannot fill gaps.
   Use the metadata for retrieval, then read the full fact and its limitations.
   Use knowledge.md for pinned source-line links. Rank matches by relevance,
   recency, specificity, and strength of evidence; a skills list is weaker support
   than a concrete contribution in the required context.
4. Resolve material conflicts with the applicant. If unresolved, omit the claim
   or use the narrower supported wording. Record outstanding questions locally.
   Never fabricate metrics, inflate academic work into employment, imply people
   management from technical ownership, or claim an interest as experience.
5. Select and order content for the audience. Write clear, defensible bullets
   connecting an action to its supported purpose or result. Preserve role dates,
   official titles, academic context, and the boundaries of contribution. Use
   only verified outcomes; there is no requirement to add a number to every bullet.
6. Record each proposed bullet's fact IDs and any omissions in the local evidence
   matrix. Confirm current employment dates, contact preferences, and disclosure
   suitability. Use applicant-supplied contact details locally rather than copying
   private contacts into the public knowledge base.
7. Create the source and PDF under `private/<application>/`. Preserve existing
   résumé files, branches, class, makefile, and workflow. Do not merge whole old
   résumé branches to obtain facts. Use the existing class through TEXINPUTS.
8. Compile and visually inspect every PDF page: page count, clipping, line breaks,
   spacing, legibility, headings, hyperlinks, and contact information. Read extracted
   text for missing content and searchability. Correct problems and rebuild.
   Automated compilation alone is not a visual review.
9. Deliver source/PDF locations, the exact build command, requirement coverage,
   fact references, and unresolved applicant questions. Mark a résumé with material
   unanswered questions as a draft. Review privacy.md before any public commit,
   upload, or release. Updating the public résumé is a separate explicit decision.

## Local application files

Use this layout (these files are local, ignored, and not created by #15):

```text
private/<application>/
  requirements.md
  evidence.md
  review.md
  resume.tex
  resume.pdf
```

Suggested `evidence.md` table:

| Requirement | Fact IDs | Context / limits | Draft bullet or gap |
| --- | --- | --- | --- |
| Staff development | music-world | Retail supervision, not engineering management | Trained and mentored associates |
| Professional kernel development | none | embedded-coursework is academic RTOS work | Gap; omit claim |

After creating `private/<application>/resume.tex`, build from the repository root
(replace `wsu-metm` with the actual application directory):

```bash
TEXINPUTS="$PWD:" pdflatex -interaction=nonstopmode -halt-on-error \
  -output-directory=private/wsu-metm private/wsu-metm/resume.tex
```

The trailing colon preserves the default TeX search path. Run again if LaTeX
requests it. Record the exact command used in the local application notes.
The existing public build remains `make`; `make clean` deletes the root PDF and
intermediate files, so it is unnecessary for application drafts.

For #16, use profile `wsu-metm`, select relevant technical, operational and
management evidence, target one or two pages, and document the visual PDF review
and all applicant questions. #15 establishes this workflow; it does not produce
the WSU application résumé itself.
