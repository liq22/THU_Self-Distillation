# Workflow: Ingest and Link New Material

Use when the user drops raw notes, screenshots, meeting notes, reviewer comments, voice transcripts, or fragments.

## Steps

1. Identify material type.
2. Create or update the correct note using templates from `90_Templates_模板/`.
3. Add frontmatter:

```yaml
type:
status:
date:
project:
paper:
people:
tags:
privacy: private
source: raw / meeting / email / memory / document
```

4. Link to dashboard maps where relevant.
5. Add a `待处理` section if the material is incomplete.
6. Move raw input from `00_Inbox_收集箱/` only after a processed note exists.

## Normalized note sections

```markdown
# 标题

## 摘要

## 事实

## 我的理解

## 关联项目/论文

## 后续动作

## 相关笔记
```

完整摄入与整理流程见 [[处理规范_摄入与整理流程]]; frontmatter 规范见 [[处理规范_命名与模板与frontmatter]]。
