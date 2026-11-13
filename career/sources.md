# Sources and evidence policy

Reviewed branch snapshots (all paths are `resume.tex` unless stated otherwise):

| Source ID | Ref reviewed | Immutable commit | Relevant sections |
| --- | --- | --- | --- |
| main-resume | origin/main | bfd5eca7871c6a1107b92f3f3a4d52bdbdea16ce | Professional Experience, Academic Experience, Technical Skills, Education |
| firmware-resume | origin/hp_firmware | a870349dd6c26b0d2f75d8c434f04eecde61b968 | Experience, Technical Skills, Education |
| historical-resume | origin/issue1 | 8be23c749b03d9912353a1123b02fd23d2706193 | Experience, Projects, Technical Skills, Education |
| build-source | origin/main | bfd5eca7871c6a1107b92f3f3a4d52bdbdea16ce | makefile, resume.cls, .github/workflows/build_latest.yml |

Read a snapshot without switching branches:

```bash
git show bfd5eca7871c6a1107b92f3f3a4d52bdbdea16ce:resume.tex
git show a870349dd6c26b0d2f75d8c434f04eecde61b968:resume.tex
git show 8be23c749b03d9912353a1123b02fd23d2706193:resume.tex
```

Use main as the working baseline, not as proof that conflicting versions are
false. Prefer narrow statements supported by main. Put broader historical claims,
conflicts, and uncertain details in review.md until the applicant confirms them.
Record the confirmation source and update the affected fact before using it.
Private confirmations must stay local; cite a nonsensitive confirmation summary
in public only when appropriate. Never commit the underlying private evidence.

The local stashed firmware edits were inspected while preparing the branch but
are not an authoritative knowledge-base source. They remain preserved in the
stash and are not imported as additional verified facts. Existing branch versions,
resume.tex, resume.cls, makefile, and publishing workflow are preserved.
