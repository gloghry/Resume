# Source-backed experience

## hy-employment

```yaml
id: hy-employment
category: employer
status: source-backed
evidence_type: professional
tags: [firmware, embedded, application-development]
sources: [main-resume]
locator: "Professional Experience / Hyster-Yale Materials Handling"
privacy: public-generalized
```

Hyster-Yale Materials Handling; Software Engineer 1; Aug 2024–Present in the
source. Innovation Team: Aug 2024–Dec 2025. Global Tools Team: Jan 2026–Present.
Reconfirm “Present” before each application. Alternative titles and locations
need review; team leadership is not established by this employment record.

## hy-tools

```yaml
id: hy-tools
category: project
status: source-backed
evidence_type: professional
tags: [firmware, embedded, application-development]
sources: [main-resume]
locator: "Professional Experience / Global Tools Team / bullets 1–3"
privacy: public-generalized
```

Developed C#/.NET desktop tools for controller programming and diagnostics in
manufacturing. Implemented a controller programming communication workflow and
validated it with physical hardware. Implemented CANopen signal packing and built
harnesses and prototype connections. Used CAN traffic analysis to investigate
intermittent programming failures. This supports technical ownership and
operational relevance, not quantified improvements or people management.
Use this generalized description; the source's protocol and failure specifics
require disclosure review before reuse.

## hy-middleware

```yaml
id: hy-middleware
category: project
status: source-backed
evidence_type: professional
tags: [firmware, embedded]
sources: [main-resume]
locator: "Professional Experience / Innovation Team / bullets 1–2"
privacy: public-generalized
```

Developed C middleware on an ARM-based ECU connecting CAN bus data to a Simulink
model. Packed CANopen PDO signals, parsed SDO messages, and exposed debugging
signals. Do not expand this into ownership of vehicle safety systems, controls
design, or production release authority.

## music-world

```yaml
id: music-world
category: employer
status: source-backed
evidence_type: professional
tags: [management, nonengineering]
sources: [main-resume, historical-resume]
locator: "Professional Experience / Music World (historical: Experience)"
privacy: public-generalized
```

Music World, Vancouver, WA; Assistant Manager; Oct 2013–Jan 2025. Led weekend
store operations, supervised associates, trained and mentored staff, and created
onboarding guides and procedural checklists. Do not infer budget ownership,
hiring authority, engineering management, or quantified outcomes. Team size
requires confirmation before use.

## seasalt-capstone

```yaml
id: seasalt-capstone
category: project
status: source-backed
evidence_type: academic
tags: [application-development]
sources: [main-resume]
locator: "Academic Experience / Software Engineering Capstone"
privacy: public-generalized
```

Industry-sponsored capstone with Seasalt.AI; Sept 2022–May 2023. Adapted existing
Python speech-recognition pipelines for Vietnamese and Indonesian. Contributed
failure-notification hooks for long-running pipeline runs. Describe as a capstone;
employment status, model ownership, and measured accuracy gains need confirmation.

## embedded-coursework

```yaml
id: embedded-coursework
category: project
status: source-backed
evidence_type: academic
tags: [firmware, embedded, systems-os]
sources: [main-resume]
locator: "Academic Experience / Embedded Systems Coursework"
privacy: public-generalized
```

Washington State University coursework used C and FreeRTOS on Raspberry Pi
Pico/RP2040 for GPIO, tasks, delays, and queues. Worked on software SPI master
read/write routines and a slave exercise using GPIO interrupts and a queue from
an interrupt handler to a task. Preserve “coursework” and “exercise”; this does
not establish professional RTOS, kernel, or driver development experience.

## wsu-degree

```yaml
id: wsu-degree
category: education
status: source-backed
evidence_type: academic
tags: [application-development]
sources: [main-resume, firmware-resume]
locator: "Education"
privacy: public-generalized
```

B.S. in Computer Science, Washington State University, Vancouver, WA; Fall 2023.
The older branch uses different degree wording; confirm official wording against
the applicant's records if exact credential naming is required.

## skills

```yaml
id: skills
category: skill
status: source-backed
evidence_type: professional
tags: [firmware, embedded, application-development, systems-os, management, nonengineering]
sources: [main-resume]
locator: "Technical Skills; experience entries referenced below"
privacy: public-generalized
```

| Skill | Evidence and limits |
| --- | --- |
| C, CAN, CANopen, ARM ECU integration | hy-middleware; professional implementation |
| C#/.NET, hardware validation, diagnostics | hy-tools; professional application development |
| Python, speech-recognition pipelines | seasalt-capstone; academic project |
| FreeRTOS, GPIO, SPI, interrupt-to-task queues | embedded-coursework; academic only |
| Operations, supervision, mentoring, documentation | music-world; retail management |
| Git, Vector CAN hardware, CANalyzer | Listed in main-resume / Technical Skills; specific projects, depth, and results unspecified |
| CMock, NUnit | testing-workflow; test creation, maintenance and execution |
| Jenkins, Azure DevOps, JFrog CLI | development-workflow; tool use and build troubleshooting within the limits below |

The combined tags on this index apply to the referenced rows, not to every skill.
Do not infer proficiency levels or years of use from tags. Confirmed college
Bash/Linux and introductory Java experience is scoped below; other additional
languages, robotics tools, broader CI/CD responsibilities, and OS course claims remain
in review.md.

## college-bash-linux

```yaml
id: college-bash-linux
category: skill
status: source-backed
evidence_type: academic
tags: [application-development, systems-os]
sources: [applicant-college-tools-2026-11-13]
locator: "Applicant confirmation / college Bash automation and Ubuntu use"
privacy: public-generalized
```

Applicant confirmed on 2026-11-13: used Bash for automation during college.
Used Ubuntu for over two years during college and is comfortable
with command-line commands and navigation. This supports college Bash scripting
and Ubuntu/Linux environment familiarity, not professional systems administration,
advanced shell expertise, or ownership of robotics software. Exact dates and
script responsibilities are unspecified. Public résumé wording: “Bash automation
(college)” and “Ubuntu/Linux CLI (college).”

## college-java

```yaml
id: college-java
category: skill
status: source-backed
evidence_type: academic
tags: [application-development]
sources: [applicant-college-tools-2026-11-13]
locator: "Applicant confirmation / introductory object-oriented programming course"
privacy: public-generalized
```

Applicant confirmed on 2026-11-13: used Java in an introductory object-oriented
programming course. This supports introductory coursework only. Current Java
reading ability is an untested self-estimate based on C# experience; do not claim
current Java proficiency or professional use. Omitted from the general public
résumé skills list; “Java (introductory coursework)” is eligible when relevant.

## testing-workflow

```yaml
id: testing-workflow
category: skill
status: source-backed
evidence_type: professional
tags: [firmware, application-development]
sources: [applicant-dev-workflow-2026-11-13]
locator: "Applicant confirmation / CMock/NUnit tests"
privacy: public-generalized
```

Applicant confirmed on 2026-11-13: Created, maintained and ran tests with CMock and NUnit; maintained failing tests
and adapted tests to requirement changes. Exact project/team assignment and dates
are unspecified. The team is exploring Stryker and mutation testing for NUnit;
this is exploratory, not an implemented mutation-testing program or measured
coverage/quality improvement. Public wording: “CMock/NUnit test development and
maintenance.”

## development-workflow

```yaml
id: development-workflow
category: skill
status: source-backed
evidence_type: professional
tags: [firmware, application-development]
sources: [applicant-dev-workflow-2026-11-13]
locator: "Applicant confirmation / Jenkins, Azure DevOps and JFrog"
privacy: public-generalized
```

Applicant confirmed on 2026-11-13: Used Jenkins for pipeline builds and sometimes debugged broken pipelines. A
separate DevOps team handled credentials and server health; do not claim CI
platform administration. Used Azure DevOps tickets, wikis, repositories and
artifacts. Retrieved JFrog artifacts and used its CLI for automated retrieval;
do not claim artifact-platform administration or pipeline architecture ownership.
Project/team allocation and dates are unspecified. Public wording: “Jenkins build
troubleshooting; Azure DevOps (repos, work items, wikis, artifacts).”

## simulink-diagnostics

```yaml
id: simulink-diagnostics
category: skill
status: source-backed
evidence_type: professional
tags: [firmware, application-development]
sources: [applicant-dev-workflow-2026-11-13]
locator: "Applicant confirmation / Existing model diagnostics"
privacy: public-generalized
```

Applicant confirmed on 2026-11-13: Occasionally helped diagnose issues in existing Simulink models, with limited
model work and no added model components. This supplements hy-middleware without
establishing model development, controls design or model ownership. Keep the
public résumé focused on C middleware integration rather than adding model-design
claims.

## ml-tool-exposure

```yaml
id: ml-tool-exposure
category: skill
status: source-backed
evidence_type: professional
tags: [application-development]
sources: [applicant-ml-tool-disclosure-2026-11-14]
locator: "Applicant tool exploration statements / tool-name corrections / publication choice"
privacy: public-generalized
```

Applicant described exploring PyTorch, ONNX and NVIDIA Triton and on 2026-11-14
agreed to listing only their names as additional exposure in the public résumé.
Exact eligible wording: “Additional exposure: PyTorch, ONNX, NVIDIA Triton.”
Do not infer proficiency, specific deployment/training achievements, production
use or permission to disclose underlying project details. Underlying project details remain private and excluded from résumé variants.
