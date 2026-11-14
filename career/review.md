# Applicant review queue

Everything here is ineligible for résumé claims until confirmed and promoted to
a source-backed fact. Keep answers containing sensitive details in `private/`.
Source IDs resolve to immutable revisions in sources.md.
The [evidence navigation](knowledge.md#historical-claims-awaiting-confirmation)
links directly to source lines for the historical claims below.

| ID | Source / locator | Question or uncertainty | Conservative treatment |
| --- | --- | --- | --- |
| R1 | main-resume vs firmware-resume and historical-resume / employment heading | Software Engineer 1 vs Embedded Software Engineer; Fairview vs Clackamas | Use main title; omit employer location pending confirmation |
| R2 | all résumés / current employment | Is the employer, role, and team still current at application time? | Reconfirm “Present”; do not invent an end date |
| R3 | historical-resume / Music World | Approximately four staff: typical shift, direct reports, or total team? | Omit headcount and unproven authority |
| R4 | all résumés / Seasalt | Capstone sponsorship vs internship/employment; exact role title? | Use industry-sponsored capstone |
| R5 | firmware-resume / Seasalt; historical-resume / Projects | Kaldi, K2, TDNN, model training/retraining, WER evaluation, ownership and results | Use main's pipeline adaptation and notifications; no accuracy claims |
| R6 | firmware-resume / Experience; historical-resume / OAS | MATLAB model work, release and production support, standards, cross-functional process improvements | Keep narrow C middleware claim; confirm scope and permission before expanding |
| R7 | firmware-resume / Experience | J1939, UDS, sensors, control logic, ROS2, Isaac, Jetson, LiDAR/cameras/IMU | Confirm actual work, academic vs professional context, ownership, and disclosure suitability |
| R8 | firmware-resume and historical-resume / Technical Skills | Java, Bash, Rust, MATLAB, Kotlin, Linux, SVN, Jenkins, JFrog, Azure DevOps, MVVM/MVP, PyTorch, ONNX, system architecture | Obtain concrete examples and context before adding demonstrated skills |
| R9 | firmware-resume and historical-resume / Education | OS, assembly, systems programming and other listed coursework; official degree wording | Confirm completed coursework and credential wording; no professional OS expertise implied |
| R10 | main-resume / Global Tools Team | Protocol internals, firmware data format, ECU failure/contactor detail | Use generalized hy-tools fact; applicant to confirm employer disclosure rules |
| R11 | all résumés / headers | Should personal phone and email remain public? | Do not duplicate values; see privacy.md |
| R12 | local firmware draft / unstaged edits preserved in stash | Additional summaries and wording have not been adopted as evidence | Keep stash intact; use pinned branch evidence |
| R13 | applicant confirmation needed | Interests and future goals, including any management or graduate-study goals | None established; do not infer from an audience profile |

When resolved, record the fact ID, confirmation date, nonsensitive provenance,
scope, and publication decision. A private answer is not permission to publish.
Do not replace these questions with confidential answers in public commits.

## Scoped resolutions — applicant confirmations 2026-11-13/14

R8: `college-bash-linux`, `college-java`, `testing-workflow` and
`development-workflow` record confirmed scope with sources in sources.md.
Java supports introductory coursework only. Other languages and broader CI/CD
ownership remain unconfirmed. Stryker remains exploration.
R6: `simulink-diagnostics` supports limited diagnosis of existing models, with
no model components added. Broader model-development claims remain unconfirmed.
R7: Standards-based J1939/UDS implementation and broader robotics claims remain
ineligible. Detailed private confirmations are held in ignored local notes.
R8: `ml-tool-exposure` permits the tool names as additional exposure only;
underlying project details remain excluded. The general draft omits this line
for focus; it remains available for tailoring.
R11: Applicant chose garettloghry.com and contact@garettloghry.com for the public
header, with no phone number. This does not authorize other private contacts.

Remaining questions: Are current employment dates and official degree wording
still accurate? What concrete results, if any, can be disclosed for the failure
investigation? Does any future skill claim exceed the confirmed scope above?
