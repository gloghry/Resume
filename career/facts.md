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
| Git, Vector CAN hardware, CANalyzer, CMock, NUnit | Listed in main-resume / Technical Skills; specific projects, depth, and results unspecified |

The combined tags on this index apply to the referenced rows, not to every skill.
Do not infer proficiency levels or years of use. Linux, additional languages,
robotics tools, CI/CD responsibilities, and OS course claims are in review.md.
