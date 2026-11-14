# Sources and evidence policy

Reviewed branch snapshots (all paths are `resume.tex` unless stated otherwise):

| Source ID | Ref reviewed | Immutable commit | Relevant sections |
| --- | --- | --- | --- |
| main-resume | origin/main | bfd5eca7871c6a1107b92f3f3a4d52bdbdea16ce | Professional Experience, Academic Experience, Technical Skills, Education |
| firmware-resume | origin/hp_firmware | a870349dd6c26b0d2f75d8c434f04eecde61b968 | Experience, Technical Skills, Education |
| historical-resume | origin/issue1 | 8be23c749b03d9912353a1123b02fd23d2706193 | Experience, Projects, Technical Skills, Education |
| build-source | origin/main | bfd5eca7871c6a1107b92f3f3a4d52bdbdea16ce | makefile, resume.cls, .github/workflows/build_latest.yml |

Read a snapshot without switching branches:

For clickable source files and line-level evidence, see [knowledge.md](knowledge.md).

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

## Applicant confirmation: college tools (2026-11-13)

Source ID: `applicant-college-tools-2026-11-13`. Applicant statement in the
résumé skills discussion; not independent verification. Nonsensitive summary:
used Bash for automation in a college Linux environment; used Ubuntu for over
two years in college with command-line navigation and commands. Used Java in an
introductory object-oriented programming course. Present-day Java readability
was described as an estimate based on C# use, not demonstrated current proficiency.
No exact academic dates, professional Linux administration, robotics stack
expertise, or Java proficiency level were confirmed. Public résumé discussion
supports adding the narrow Bash/Ubuntu skills; this is not employer disclosure
approval or authorization to publish unrelated private information.

## Applicant confirmation: testing and development workflow (2026-11-13)

Source ID: `applicant-dev-workflow-2026-11-13`. Applicant statement in the
résumé skills clarification discussion, not independent verification. Confirmed
creating, maintaining and running CMock/NUnit tests, including failure diagnosis
and requirement changes; team is exploring Stryker/mutation testing for NUnit.
Used Jenkins pipeline builds and sometimes debugged broken pipelines; a separate
DevOps team handled server health and credentials. Used Azure DevOps tickets,
wikis, repositories and artifacts. Retrieved JFrog artifacts, including automated
retrieval with its CLI. Occasionally helped diagnose existing Simulink model
issues; added no model components. Exact project/team allocation and dates were
not established. These generalized tool-use statements are eligible for the
public draft, subject to final disclosure review.

## Applicant publication choice: additional tool exposure (2026-11-14)

Source ID: `applicant-ml-tool-disclosure-2026-11-14`. In the public résumé
editing discussion, applicant agreed to disclose “Additional exposure: PyTorch,
ONNX, NVIDIA Triton.” This is applicant confirmation of the narrow publication
choice, not independent employer permission verification. Applicant described exploring these tools; project details are excluded. This
does not authorize disclosing the underlying project or imply proficiency.
