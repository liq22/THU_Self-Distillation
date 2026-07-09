---
title: A0_毕业整理 规划中心只读快照
created: 2026-07-09
updated: 2026-07-09
type: legacy
status: archived
visibility: internal
tags: [snapshot, graduation, evidence, readonly, A0_毕业整理]
related: []
---

# A0_毕业整理 规划中心只读快照

> 来源：`/mnt/d/A0_博士毕业数据总仓库_202606/A0_毕业整理/`（夸克网盘上传镜像的规划中心，截至 2026-06-08）
> 快照整理日期：2026-07-09
> 适用范围：**只读证据归档，不再编辑**。本目录是把博士毕业"可复用知识资产"导入夸克网盘 + Obsidian 终身知识库的原始规划证据，保留一份供回溯。

## 边界说明

- 本目录是源仓库 `A0_毕业整理/` 的**只读快照副本**，仅作可追溯性证据。
- 本 vault 的**正式知识页**在 `02_Research` / `03_Papers` / `04_Thesis` / `06_Thinking` / `07_Feedback` / `08_Legacy` / `09_Admin_Career` 各域——那里是经深度蒸馏、脱敏、按 vault 模板整理后的页面；本目录只是它们上游的原始规划素材。
- **请勿在本目录内新增 / 编辑 / 删除文件。** 需要更新规划时，回到源仓库 `/mnt/d/A0_.../A0_毕业整理/` 维护，再重新快照。
- 源仓库是夸克上传镜像，本次整理**全程只复制，源原样未动**（见下"源不变性"）。
- **学号脱敏**：源文档里嵌在文件名/路径引用中的学号 `2022310327`（如 `LQ_2022310327_thesis.pdf`）已统一替换为 `<学号_redacted>`，确保公开仓库不含学号；其余内容（清单、卡片、脚本）忠实保留。完整原始路径见 `98_Private_LOCAL_勿提交/资产指针索引_2026-07-09.md`。

## 内容清单

| 子项 | 内容 | 文件数 |
|---|---|---:|
| `os_cards/` | 14 张 OS 主题知识卡片 + `OS_index.md` 总索引 + `OS_import_tasks.md` 导入清单（42 条任务） | 16 |
| `manifests/` | 6 个 CSV 清单：p0/p1/p2/upload/dedup/sensitive | 6 |
| `scripts/` | 6 个自动化脚本：copy_p0_{dryrun,execute}.sh / create_quark_dirs.sh / export_envs.sh / generate_readme.py / hash_check.sh | 6 |
| 根目录 `*.md` / `*.csv` | 27 份中文编号规划文档（00_总览~16onenote）+ 英文 v1 草稿 + high_value/dedup CSV | 27 |

**合计 55 文件 / ~816 KB。**

### 已排除（体积或冗余，非知识价值）

| 排除项 | 原因 | 体积 |
|---|---|---:|
| `_intermediate/` | 扫描副产物（目录/文件清单 tsv、全量哈希表、dedup 分组），纯计算中间态，无知识价值 | ~229 MB |
| `_quarantine/` | 敏感隔离区，空 | 0 |
| `A0_毕业整理.zip` | 规划中心的自压缩冗余副本 | — |

> 若未来需要 `_intermediate/` 的原始 dedup 证据，仍在不可变源 `/mnt/d/A0_.../A0_毕业整理/_intermediate/`。

## 卡片与正式知识页的对应

本快照里的 14 张卡片，已在本次整理中蒸馏为 vault 正式页（见 `01_Dashboard_总览/整理看板.md` 与各域 README）。对应关系见 plan `§1 卡片→vault 目录映射表` 与 `os_cards/OS_index.md §4 交叉引用图`。

## 源不变性（COPY-ONLY 不变量）

整理前源基线：`A0_毕业整理` 共 **131 文件 / 239,899,378 字节**；其中 `os_cards`+`manifests`+`scripts` 28 文件的逐文件大小清单已记录，快照字节一致（identical=28 / mismatch=0）。整理完成后重测源 `find -type f | wc -l` 与 `du -sb`，应与本基线逐字节相同——若有差异，说明误写了源仓库，需回滚。
