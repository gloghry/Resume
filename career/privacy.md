# Public repository and private application material

See [storage.md](storage.md) for the proposed private Resume repository and PDF-only website publishing, encrypted
backup helper, migration and recovery procedure, and rollout status for #18.
Until rollout is complete, ignored application files still have no remote backup.

## Findings from this repository

- `resume.tex` on main and both reviewed historical branches contains a personal
  phone number and email address. They are already public in source history and
  may also appear in release PDFs and downloadable build artifacts. Decide
  whether to keep them public or use a dedicated public contact channel. New
  knowledge-base files deliberately do not duplicate those values.
- The résumés disclose employer/team names and technical implementation details.
  The controller programming and failure-investigation bullets deserve employer
  disclosure review. Existing publication is not evidence of employer permission.
  New facts generalize those details; protocol internals, customer information,
  controller identifiers, logs, unreleased features, and confidential evidence
  belong outside public source and issues.
- Older branches contain broader claims that may be inaccurate or overstate
  scope. Their presence in Git does not verify them; review.md records the gaps.
- The workflow builds `resume.tex` and publishes its PDF on eligible main builds.
  It also uploads build artifacts. Ignored local PDFs are not private once
  uploaded or attached to a public issue or release.

No existing résumé, history, release, or branch was removed as part of #15.
Removing text in a later commit will not erase historical copies. If the applicant
wants to reduce existing exposure, review affected branch tips, history, release
assets, and artifacts as a separate deliberate change; rewriting shared history
requires coordination and cannot retract copies already downloaded.

## Storage and publication rules

Keep application job descriptions containing private recruiter details, program
correspondence, transcripts, references, exact compensation, personal identifiers,
performance reviews, confidential employer evidence, and application-specific
drafts under ignored `private/` or in a separate private repository. Do not put
their contents in issues, PR descriptions, screenshots, or build logs.

Public `career/review.md` holds questions only. Private confirmations go in
`private/review.md`. Git ignore reduces accidental staging; it is not encryption
or access control, does not untrack files, and can be bypassed by `git add -f`.
Do not add a broad allow rule for `private/` or upload that directory in CI.

Before publication, inspect `git diff --cached` and the rendered PDF, including
contact lines, hyperlinks, and PDF metadata. Confirm factual accuracy and employer
disclosure suitability. Publish only the specifically reviewed files. Keep local
application variants outside `resume.tex` so ordinary main builds do not release
them automatically.
