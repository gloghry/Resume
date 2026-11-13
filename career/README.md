# Career knowledge base

Supports issue #15. This is a curated index of applicant statements already in
the repository, not independent employment or credential verification.

- [Facts](facts.md): reusable, narrowly stated experience and skills.
- [Sources](sources.md): immutable revisions reviewed and evidence policy.
- [Review](review.md): conflicts, unsupported details, interests, and questions.
- [Audiences](audiences.md): selection and emphasis, never new evidence.
- [Tailoring](tailoring.md): Codex workflow and local build instructions.
- [Privacy](privacy.md): publication review and local-only material.

## Metadata contract

Each fact uses a stable heading ID and YAML metadata in a fenced block. Keep
these fields when adding facts:

```yaml
id: unique-stable-id
category: employer # employer | project | education | skill
status: source-backed # applicant statement supported by the cited source
evidence_type: professional # professional | academic | repository
tags: [embedded] # use the vocabulary below
sources: [main-resume] # source IDs from sources.md
locator: "Professional Experience / employer / team"
privacy: public-generalized # public-generalized | review-required
```

The prose under each block is the exact supported scope. Tags are retrieval aids,
not qualifications. Use `firmware`, `embedded`, `application-development`,
`systems-os`, `management`, and `nonengineering`; multiple tags are allowed.
Skill entries reference fact IDs and inherit their limits. `source-backed` and
`public-generalized` do not certify external truth or employer disclosure approval.
Only `source-backed` facts marked `public-generalized` are eligible for drafts;
review the intended disclosure before publishing a final résumé.

No interests or future goals have been confirmed. Do not infer them from a job
description or the request for a WSU METM résumé. Record confirmations separately
from demonstrated experience, with explicit applicant provenance.
