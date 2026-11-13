# Résumé tailoring guide for Codex

Use [knowledge.md](knowledge.md) as the evidence inventory and
[review.md](review.md) as the exclusion and questions list. A source is a
résumé claim, not independent verification. Never turn a skill list into an
invented project, proficiency level, duration, result, or credential.

## Audience profiles

Choose the closest profile or combine profiles when requirements overlap;
the tags are filters, not proof of fit. Within each profile, prefer specific
demonstrated work over a skills list and keep academic work labeled.

| Audience | Select and emphasize | Boundaries |
| --- | --- | --- |
| Firmware | `firmware`, `embedded`: CAN middleware, firmware transfer and controller validation; C and debugging. | Do not imply ownership of hardware design or a complete firmware stack. |
| Embedded / controls | `embedded`: ARM ECU, CANopen PDO/SDO, Simulink, controller connections, and relevant coursework or vehicle prototyping. | Keep classroom and prototype work distinct from production work. |
| Application development | `application-development`: C#/.NET diagnostic and programming tools, CAN protocol implementation, and Python capstone. | Don't imply web, cloud, or UI framework experience without evidence. |
| Systems / OS | `systems-os`, `embedded`: FreeRTOS tasks, queues, interrupts, SPI and systems coursework; Linux as a listed skill. | Do not claim professional OS development or kernel expertise from coursework. |
| Management / operations | `management`, `nonengineering`: store operations, supervising, training and onboarding materials; technical collaboration where relevant. | Do not invent team size, budget, hiring authority, or outcomes. |
| Nonengineering / customer-facing | `nonengineering`, `management`: store operations and staff development, using plain language and relevant transferable skills. | Do not infer customer-service duties or sales results. |
| Academic program | Relevant education and coursework, followed by technical projects and selected professional work matching the program. | Distinguish coursework, research interests and aspirations from demonstrated work; do not infer grades or research publications. |

## Workflow

1. Obtain the job description or program requirements and any constraints
   (format, length, deadline, location and intended output). Ask for missing
   essentials rather than guessing; don't treat the posting as a source of
   facts about the candidate.
2. Extract required and preferred qualifications, responsibilities,
   keywords, and program criteria. Prioritize essential requirements.
3. Build a working requirement-to-evidence table: requirement, matching
   knowledge-base entry and source, strength/scope of match, and gaps or
   questions. Mark unsupported requirements as gaps, not as claims. For
   example, “CAN communication” maps to the Innovation CAN middleware and
   Global Tools protocol entries; “kernel development” is not established by
   the FreeRTOS coursework.
4. Choose one or more audience profiles above and rank evidence by relevance,
   recency and specificity. Retain accurate employer, project and education
   context. Confirm open-ended dates and resolve relevant review items with
   the owner before using disputed details. If a necessary claim cannot be
   confirmed, omit it and disclose the gap.
5. Draft a concise résumé using only supported facts. Rephrase and reorder
   them for the audience, preserving individual contribution, context,
   technology, dates and outcomes actually stated. Do not invent metrics,
   expand responsibility, infer a skill level, or present aspirations as
   experience. Ask before adding newly supplied facts to the knowledge base;
   record their source and place unresolved claims in the review file.
6. Trace every drafted claim back to the evidence table and check for
   contradictory dates, changed scope, unsupported keywords, and omissions.
   Give the owner the draft, a brief evidence/gap summary, and questions for
   review. Confirm sensitive contact details and current status before
   sharing the résumé.
7. Preserve existing versions and release behavior. Unless explicitly asked
   to update the default résumé, write a separate tailored output in a
   user-agreed location, not over `resume.tex`. For a LaTeX draft, copy
   `resume.tex` and `resume.cls` into a separate working directory and run
   `pdflatex -interaction=nonstopmode -halt-on-error resume.tex` there;
   inspect the PDF and report build failures. `make` at the repository root
   continues to build the original résumé, and only the existing main-branch
   workflow publishes the latest release. Do not commit generated PDFs or
   overwrite existing versions unless requested.
