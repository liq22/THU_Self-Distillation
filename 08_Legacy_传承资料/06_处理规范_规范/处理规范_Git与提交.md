---
title: "处理规范 · Git 与提交"
created: 2026-07-09
updated: 2026-07-09
type: legacy-guide
status: stable
visibility: internal
audience: [junior, agent]
tags: [规范, Git, 提交节奏, 脱敏, legacy, 单一真相源]
related:
  - "[[Home]]"
  - "[[处理规范_可见性与脱敏]]"
  - "[[处理规范_附件与云盘]]"
  - "[[处理规范_元数据与命名]]"
---

# 处理规范 · Git 与提交

> 来源: 合并自仓库根 `README.md`（提交节奏 + commit 示例 + 公开前检查）与 `.gitignore`（已排除项清单）
> 整理日期: 2026-07-09
> 适用范围: 本 vault（`lqql_03_家庭与人脉/17_LQ_THU_Self-Distillation_22to26`）内一切 Markdown 整理与 git 提交动作

---

## 边界说明

这页是本 vault 的**权威单一源**：Markdown 整理的提交节奏、commit message 写法、`.gitignore` 已排除项、批次提交与脱敏复核，全部以本页为准。

它和后续处理规范页**分工不重叠**：
- **本页只管 git 提交**：提交粒度、提交信息、不该提交什么、提交前复核。
- [[处理规范_可见性与脱敏]] 管**可见性与脱敏判据**（哪些内容公开 / internal / private）。
- [[处理规范_附件与云盘]] 管**大文件、数据集、PDF、照片**该放哪（git 还是云盘）。
- [[处理规范_元数据与命名]] 管 frontmatter 字段与文件命名。

> 单一真相源约定：散落在旧 README、旧卡片、Inbox 备注里的"提交规则"副本，以后一律**指向本页**，不在其他页面重复声明提交规则。

## 适合谁读

- 接手整理本 vault 的师弟妹 / 合作者。
- 代为执行整理与提交的智能体（audience 含 `agent`）。
- 任何准备把 Inbox 内容归档并提交到 git 的人。

## 读完能做什么

- 知道一次提交该整理多大量、commit message 怎么写。
- 知道哪些文件**已被 `.gitignore` 排除**，不必在页面里重复声明排除。
- 知道按区分批提交、提交前脱敏复核的标准动作。
- 避开"一次塞太多项目、commit message 含糊、在页面里重复写 .gitignore 规则、敏感件误进公开仓"四个最常见的坑。

## 前置条件

- 已熟悉 vault 目录结构（见仓库根 `README.md` 的"目录说明"）。
- 已读过 [[答辩闭环SOP]] 或同套 legacy-guide 的口吻约定（一事一页、先收集后整理）。

## 标准流程

### 1. 小步提交，一次只整理一个对象

一次 git commit 只对应**一个整理对象**：一个项目、一次会议，或一篇论文。

> 出处: 仓库根 `README.md` →「建议的 GitHub 提交节奏」："小步提交：一次提交只整理一个项目、一次会议或一篇论文。"

判据：
- 一个 commit 解决**一个**逻辑改动，不把跨项目、跨会议、跨论文的内容混在一条提交里。
- 即使一次会话里整理了多个对象，也拆成多条 commit，每条对应一个对象。
- 例外：纯结构调整（重命名目录、统一 frontmatter 字段）可单独一条 commit，commit message 注明是结构类改动。

### 2. commit message 用简短英文，动词开头

commit message 一律**英文小写动词短语**，简短、可读、对应内容。

> 出处: 仓库根 `README.md` →「建议的 GitHub 提交节奏」给出的示例。

推荐模板与示例：

| 场景 | commit message 示例 |
|---|---|
| 新增项目笔记 | `add project note for xxx` |
| 更新论文大纲 | `update thesis outline` |
| 归档 rebuttal 笔记 | `archive paper rebuttal notes` |
| 新增实验记录 | `add experiment note for yyy` |
| 新增新人上手清单 | `add lab onboarding checklist` |
| 结构调整 | `rename inbox notes per vault convention` |
| 补齐元数据 | `update frontmatter for inbox batch` |

要点：
- 动词在前（add / update / archive / fix / rename）。
- 对象在后（project note for xxx / thesis outline / rebuttal notes）。
- 不写"update files""some changes"这类无法对应内容的笼统 message。
- 不加 `Co-Authored-By` 等额外署名（见 `CLAUDE.md` →「Git 提交规则」）。

### 3. 不要提交的文件：`.gitignore` 已排除项

以下类型**已被 `.gitignore` 排除**，提交时会被 git 自动忽略，**不需要也不应该在页面里重复声明这些排除**。

> 出处: 仓库根 `.gitignore`（按分组照抄）。

| 类别 | 已排除内容（节选） |
|---|---|
| OS / 编辑器 | `.DS_Store`、`Thumbs.db`、`.vscode/`、`.idea/`、`*.swp`、`*.swo` |
| Obsidian 本地态 | `.obsidian/workspace*.json`、`.obsidian/cache/`、`.obsidian/plugins/*/data.json`、`.trash/` |
| 本地私有材料 | `98_Private_LOCAL_勿提交/`、`private/`、`_private/` |
| 大数据 / 中间产物 | `**/data/raw/`、`**/data/processed/`、`**/datasets/`、`*.h5`、`*.hdf5`、`*.parquet`、`*.feather`、`*.pkl`、`*.pickle`、`*.npz`、`*.npy` |
| 构建 / 临时 / 日志 | `__pycache__/`、`*.pyc`、`*.log`、`*.tmp`、`*.bak` |
| 归档压缩包 | `*.zip`、`*.tar`、`*.tar.gz`、`*.7z`、`*.rar` |
| 文献 PDF / 照片 | `10_Assets_附件/PDFs_文献PDF_默认勿提交/*`（保留 `.gitkeep` 与 `README.md`）、`10_Assets_附件/Photos_照片_默认勿提交/*`（同上） |
| 个人身份材料 | `11_Skills_个人智能体/**/private_voice_samples/`、`raw_transcripts/`、`private_evals/` |

约定：
- `.gitignore` 是**排除规则的唯一真相源**；页面里只写"原件存私有区 / 云盘指针"，不抄录 `.gitignore` 条目。
- 若发现某类文件该排除却没排除，**改 `.gitignore`**，而不是在多份页面里分别声明。
- `.env`、密钥、token 文件若出现，按私有材料同等处理（本地私有 + 不进 git）。

### 4. 批次提交指引：按区分批，提交前脱敏复核

> 出处: 仓库根 `README.md` →「公开前检查」+「使用原则」（敏感内容默认不公开）。

按区（`00_Inbox_收集箱/`、`03_Papers_论文与发表/`、`04_Thesis_毕业论文/` 等）**分批整理、分批提交**，每批对应一个或多个小步 commit。

标准动作：
1. **选区**：一次只动一个区或一个项目目录，避免跨区大动作。
2. **归档**：把 Inbox 内容移到对应目录，补齐 frontmatter（type / status / visibility / tags）。
3. **脱敏复核（提交前必做）**，逐项确认：
   - 不含个人身份证件、电话、地址、邮箱、学号。
   - 不含未授权的论文 PDF、审稿意见、合作者数据。
   - 不含未发表的关键实验结果或可被抢发的 idea。
   - 不含导师、同门、被试、访谈对象的敏感评价。
   - 签字扫描件、申报表原件走私有指针，公开页只记类型与阶段。
4. **复核可见性**：每页 `visibility` 字段与内容敏感度一致（public / internal / private）。
5. **小步提交**：按对象拆 commit，message 用第 2 节模板。
6. **不确定就降级**：拿不准能否公开的内容，默认 `visibility: private` 并放私有区，不冒险提交。

## 常见坑

| 坑 | 表现 | 解决办法 |
|---|---|---|
| 一次塞太多 | 一个 commit 混了项目 + 会议 + 论文三件事 | 拆成三条小步 commit，每条一个对象 |
| commit message 含糊 | 写"update files""整理一下" | 用 `add/update/archive + 对象` 模板 |
| 页面重复声明排除 | 笔记里抄录"PDF 不要提交、h5 不要提交" | 排除规则只在 `.gitignore` 写，页面指向本页 |
| 敏感件误进公开仓 | 签字扫描 PDF / 评阅意见被当普通附件提交 | 提交前脱敏复核，原件走私有指针，公开页只记类型 |
| `.gitignore` 漂移 | 不同页面各写一套排除，互相打架 | 改 `.gitignore` 这一个源，副本全部指向本页 |

## 检查清单

- [ ] 本次提交只对应**一个**整理对象（项目 / 会议 / 论文 / 结构调整）
- [ ] commit message 是英文动词短语，能对应内容
- [ ] 未在页面里重复抄录 `.gitignore` 排除项
- [ ] 已逐项过脱敏复核（证件 / 邮箱 / 未发表结果 / 评价 / 签字件）
- [ ] 每页 `visibility` 字段与敏感度一致
- [ ] 大文件 / 数据集走云盘指针，未进 git
- [ ] commit message 未加 `Co-Authored-By` 等额外署名

## 示例

一次典型的周末归档：把 `00_Inbox_收集箱/` 里 3 条会议纪要归档到 `02_Research_科研工作/Meetings_会议/`，并补齐 frontmatter。正确做法是拆成三条 commit，而不是一条"整理 Inbox"：

- `add meeting note for advisor sync 2026-07`
- `add meeting note for group seminar on zzz`
- `add meeting note for collaboration kickoff`

其中若某条会议含未公开的合作细节，该页设 `visibility: private`，敏感细节走私有指针，公开仓只留脱敏后的纪要骨架。

## 延伸阅读

- [[Home]] — vault 总入口
- 仓库根 `README.md` — 提交节奏、使用原则、公开前检查的原始出处
- `.gitignore` — 排除规则的权威清单（本页照抄自其）
- `CLAUDE.md` →「Git 提交规则」— 不加额外署名等执行面约定
- [[答辩闭环SOP]] — 同套 legacy-guide 口吻与结构参照
- [[处理规范_可见性与脱敏]] — 可见性判据（与本页互补，不重复）
- [[处理规范_附件与云盘]] — 大文件与附件去向（与本页互补，不重复）
- [[处理规范_元数据与命名]] — frontmatter 与命名约定（与本页互补，不重复）
