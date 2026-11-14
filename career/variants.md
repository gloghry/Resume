# Public and private résumé variants — #14

Status: implemented locally; not deployed. Legacy resume.tex, default `make`,
and release workflow remain unchanged. Do not use the legacy release PDF as the
new public variant. Website delivery and publishing migration are #21/#22.

Applicant confirmed garettloghry.com and contact@garettloghry.com as public
contact channels, with no public phone number. The public entry point loads only
resumes/public-contact.tex. The private entry point requires ignored
private/contacts.tex and fails if it is absent; it never falls back to public
contacts. No real private contacts have been copied or migrated by this change.

## Build and edit

- `make public` writes build/public/resume.pdf.
- `make private` writes build/private/resume.pdf. Supply private/contacts.tex
  locally first, using resumes/contacts.example.tex as the format reference.
  The example contains synthetic markers only. Private compiler output is saved
  locally in build/private/build-output.log rather than printed to CI logs.
- Edit resumes/body.tex for shared career content, resumes/layout.tex for shared
  formatting, and resumes/public-contact.tex for public contact fields.
- Both targets always rebuild, so changed contacts and shared inputs cannot leave
  an old PDF silently selected. Outputs and private/ remain ignored. Never upload
  build/ as a whole: select build/public/resume.pdf explicitly.
- `python3 tests/check_variants.py` requires pdflatex and mutool. It builds a
  disposable copy with synthetic contacts and checks missing-input failure,
  text/link/metadata marker separation and successful public builds with invalid
  private configuration. Real local contact files are never used by this test.

The existing release job still responds to main pushes and builds legacy
resume.tex. No new publication trigger exists for variants. The eventual #22
publisher must filter public/shared inputs and exclude private-only edits;
that acceptance criterion cannot be verified until publishing is implemented.
Private contacts and application records must stay ignored until #23 verifies
private visibility; durable record storage and recovery belong to #24.

## Content provenance and review

| Content | Eligible career/facts.md entries |
| --- | --- |
| Summary and skills | hy-tools, hy-middleware, skills, seasalt-capstone, college-bash-linux, testing-workflow, development-workflow, ml-tool-exposure |
| Hyster-Yale heading/team dates | hy-employment |
| Tools team bullets | hy-tools |
| Innovation team bullets | hy-middleware |
| Music World | music-world |
| Capstone | seasalt-capstone |
| Coursework | embedded-coursework |
| Education | wsu-degree |

The shared body generalizes protocol/failure specifics and removes unsupported
leadership wording and the capstone runtime figure from the legacy source.
Bash automation and Ubuntu/Linux CLI familiarity were added from the applicant's
2026-11-13 college-tools confirmation; Java remains omitted because only
introductory coursework is established. Skills listed without project evidence remain
listed skills, not proficiency assertions. Current employment (“Present”), exact
degree wording and employer disclosure suitability still require applicant
review before application submission or public publication. The private variant
currently shares the same generalized body; private contact fields are its only
difference. Do not add confidential employer evidence to either variant.

Local verification: public and synthetic private PDFs each compile to one page;
all pages visually inspected for clipping, spacing and links. Public extracted
text, PDF objects/URI links and metadata exclude synthetic private markers.
No website publication, visibility change, commit or real-record migration has
been performed. Keep #14 open until review and downstream publishing checks pass.

Additional skills clarification (2026-11-13): public draft now specifies
CMock/NUnit test development/maintenance, Jenkins build troubleshooting and scoped
Azure DevOps use. JFrog retrieval and limited Simulink diagnosis are recorded for
tailoring; Stryker, J1939/UDS and unresolved robotics scope are not public skills.

Applicant publication choice (2026-11-14): list only “Additional exposure:
PyTorch, ONNX, NVIDIA Triton.” This narrow skills statement is `ml-tool-exposure`;
it does not make project details eligible. Underlying project details remain private and excluded.

Editorial revision (2026-11-14): skills condensed to five lines, without
parenthetical explanations. Bash context moved into college coursework;
FreeRTOS and C-to-Simulink integration included with their experience context
retained below. ML exposure is omitted from this general draft for focus;
`ml-tool-exposure` remains available for tailored versions. Global Tools now
separates protocol implementation, desktop tools, hardware setup/validation and
failure investigation. Protocol wording is a generalized description of the
existing main-resume CAN programming protocol claim; implementation specifics
remain excluded. CANopen message handling replaces SDO/PDO callouts. Coursework
wording does not claim unconfirmed sole implementation. Graduation remains
Fall 2023; December is unconfirmed. No new investigation outcome is claimed.
Links use a restrained dark blue; font size is unchanged.
