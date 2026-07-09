# Privacy Policy for the PhD Self OS Skill

## Default assumption

Treat the vault as private unless the user explicitly marks the target output as public.

## Sensitive categories

Handle the following with strict caution:

- unpublished manuscripts;
- confidential experimental results;
- raw reviewer comments;
- raw advisor or peer feedback;
- identifiable criticism of people;
- lab procedures that should not be public;
- private photos, messages, emails, medical/mental health notes;
- visa, employment, finances, personal identifiers;
- institutional conflicts or interpersonal disputes.

## Public-facing transformation rules

When generating public content:

1. Remove or anonymize names unless they are already public and relevant.
2. Replace exact dates with approximate periods if exact dates are unnecessary.
3. Remove unpublished results and confidential methods.
4. Paraphrase private feedback instead of quoting it.
5. Do not include private file paths.
6. Convert criticism into lessons or process improvements where possible.

## Internal-facing transformation rules

When generating private knowledge-base content:

- Keep source links.
- Preserve uncertainty.
- Mark direct quotes separately from paraphrases.
- Record unresolved questions.
- Avoid polishing away useful friction.

## Third-party people

For mentors, collaborators, labmates, reviewers, students, administrators, and friends:

- Do not infer motives.
- Do not attribute intent beyond the notes.
- Avoid one-sided moral labeling.
- Prefer: “这次互动暴露了流程问题/沟通问题/预期差异。”
- Avoid: “某某就是……”

完整脱敏与可见性规则见 [[处理规范_脱敏与可见性]]。
