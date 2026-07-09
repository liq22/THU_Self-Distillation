---
title: "处理规范 · 命名与模板与 frontmatter"
created: 2026-07-09
updated: 2026-07-09
type: legacy-guide
status: stable
visibility: internal
audience: [junior, agent]
tags: [规范, 命名, 模板, frontmatter, legacy]
related:
  - "[[处理规范_脱敏与可见性]]"
  - "[[处理规范_摄入与整理流程]]"
  - "[[处理规范_Git与提交]]"
  - "[[Home]]"
---

# 处理规范 · 命名与模板与 frontmatter

> 来源: 合并自 `README.md`（推荐元数据 8 字段）、`02_Research_科研工作/01_Projects_项目/README.md`（YYYY_Project 命名）、`11_Skills_个人智能体/phd-self-os/workflows/01_ingest_and_link.md`（分歧 frontmatter）、`90_Templates_模板/` 全部模板现状、`08_Legacy_传承资料/05_Tools_Workflows_工具与流程/博士阶段流程/答辩闭环SOP.md`（SOP 风格）。
> 整理日期: 2026-07-09
> 适用范围: 本 vault 全部 Markdown 页面的文件命名、模板调用、frontmatter 字段标准。

---

## 边界说明

这页是本 vault **命名与模板与 frontmatter 的唯一权威单一源**。散落在模板自带 frontmatter、各对象目录 README、skill workflow 里的命名 / 字段约定，以本页为准；有冲突时指向本页，不在对象页另立第二套。

它和同目录其他三页**分工不重叠**：
- [[处理规范_脱敏与可见性]] 管 `visibility` 字段背后**内容该不该公开、如何脱敏**。
- **本页管命名、模板、frontmatter 的结构本身**（字段名、词表、调用映射），不判内容敏感度。
- [[处理规范_摄入与整理流程]] 管 Inbox → 归档的**流程步骤**（本页只规定流程产物长什么样）。
- [[处理规范_Git与提交]] 管**提交粒度与信息格式**（本页只规定被提交文件的命名）。

`visibility` 的取值词表写在本页（它是 frontmatter 字段），判定规则写在脱敏页——两页通过同一个 `public/internal/private` 词表对齐。

---

## 适合谁读

- 第一次往本 vault 写笔记的师弟妹、合作者、未来的自己。
- 作为 agent 执行「摄入新材料」「批量规范化 frontmatter」「判定该用哪个模板」时的依据。

## 读完能做什么

- 知道一个新文件该叫什么名、放哪个目录、用哪个模板、填哪些 frontmatter 字段。
- 知道 canonical 8 字段是哪些、type/status 词表有哪些合法值，遇到旧字段（`related_papers`/`date`/`authors`）怎么迁移。
- 拿到一份新材料，能从「16 模板 → 触发条件 → type 映射表」里一秒选定模板，不再凭感觉。

---

## 1. Canonical 8 字段（唯一真相）

每篇 Markdown 的 frontmatter 以这 8 个字段为**权威标准**，顺序固定。来源：`README.md`「推荐元数据」。

```yaml
title:     # 页面标题，人类可读；与一级 H1 一致
created:   # YYYY-MM-DD，首次创建日期
updated:   # YYYY-MM-DD，最近一次实质性更新日期
type:      # 见 §2 type 词表
status:    # 见 §3 status 词表
visibility: # public | internal | private，取值词表本页，判定见 [[处理规范_脱敏与可见性]]
tags:      # 数组，小写短标签，如 [project, paper]
related:   # 数组，双链 [[页面]]，承载一切跨页关联（项目↔论文↔实验↔会议）
```

**硬性规则**：
- 8 字段必须齐备，缺字段视为不规范（即使是 seed 草稿）。
- `related` 是**唯一**承载关联关系的字段。`related_papers` / `related_code` / `related_data` / `related_projects` / `related_project` / `related_paper` 等**旧的关联字段一律并入 `related`**（见 §5 迁移规则）。
- `date` / `authors` / `venue` / `doi` 等是**类型专属扩展字段**，不进 canonical 8，但也不删（见 §5）。

来源出处：
- 8 字段定义与词表示例 → `README.md` L17–L30。
- 关联字段收口进 `related` → 本页统一裁定（模板现状见 §5）。

---

## 2. type 词表

`type` 只允许以下取值，禁止自造：

| type | 含义 | 典型触发场景 |
|---|---|---|
| `project` | 研究项目 | 新立项、写项目主页 |
| `paper` | 论文 / 文献笔记 | 读论文、写手稿、投稿记录 |
| `meeting` | 会议 / 组会 / 讨论 | 组会、答辩讨论、合作会议 |
| `experiment` | 实验记录 | 跑实验、调参、消融 |
| `reflection` | 反思 / 反馈 / 复盘 | 导师反馈、审稿意见、自我复盘 |
| `lesson` | 经验教训 | 从失败或成功提炼的可复用经验 |
| `legacy` | 传承资料 / 清单 / FAQ | 给师弟妹的上手指南、检查清单、FAQ |
| `legacy-guide` | 传承 SOP 指南页 | 用 SOP 结构（适合谁读 / 标准流程 / 常见坑 / 检查清单）写成的规范型指南页 |

> 注意：模板自带 frontmatter 里出现过 `paper-note` / `feedback` / `thesis-chapter` / `template` 等取值。本页裁定：这些值**不进词表**，归一化到上表（`paper-note`→`paper`、`feedback`→`reflection`、`thesis-chapter`→`thesis` 章节用 `legacy` 或 `paper` 视内容定，`template` 不是内容类型，模板文件自身不强制要求 type 合规）。归一化映射见 §5。

来源出处：
- 8 取值中的 7 个（project/paper/meeting/experiment/reflection/lesson/legacy）→ `README.md` L26。
- `legacy-guide` → `答辩闭环SOP.md` 与 `Template_Legacy_Guide.md` 现状（SOP 型指南页用此值）。

---

## 3. status 词表

`status` 只允许以下 4 个取值，表示**成熟度生命周期**：

| status | 含义 | 何时用 |
|---|---|---|
| `seed` | 种子，刚落笔 | 想法 / 草稿 / Inbox 刚归位 |
| `growing` | 生长中 | 正在补充内容、未定稿 |
| `stable` | 稳定 | 内容成型、可作为参考被引用 |
| `archived` | 归档 | 项目结题 / 论文已发 / 不再维护 |

来源出处：`README.md` L26（`seed | growing | stable | archived`）。模板现状里 `Lesson`/`Meeting`/`Feedback` 默认 `growing`，`Project`/`Experiment`/`Paper` 默认 `seed`，与本词表一致。

---

## 4. 文件命名与目录约定

### 4.1 英文项目页命名（`02_Research_科研工作/01_Projects_项目/`）

```
YYYY_Project_Short_Name.md
```

- 下划线分隔，`Short_Name` 用 PascalCase 或带下划线的英文短语。
- 例：`2024_Robust_Modeling_Project.md`。
- 来源出处：`02_Research_科研工作/01_Projects_项目/README.md` L7–L15。

### 4.2 中文蒸馏页命名（默认惯例）

- **无空格、无 camelCase**，用下划线 `_` 或直接连写中文。
- 日期若出现在文件名里，统一 `YYYY-MM-DD`（中划线分隔），不用 `YYYY_MM_DD` 或 `/`。
- 例：`博士论文闭环closeout.md`、`答辩闭环SOP.md`、`2026-07-09_某次复盘.md`。
- 来源出处：`答辩闭环SOP.md` 文件名与 `01_Dashboard_总览` 现有中文页面命名风格。

### 4.3 两位编号子目录规则 `NN_Name_中英/`

vault 全树用**两位数字前缀 + 下划线 + 英文名 + 下划线 + 中文名**做目录排序与双语可读：

```
NN_EnglishName_中文名/
```

- `NN`：两位数字（00、01、…、99），控制目录排序，00 常留给「入口 / 收集箱」。
- 英文名 PascalCase 或下划线短语，中文名直接连写中文。
- 同一层级编号不重复；新增目录接现有最大编号续号。
- 例（vault 现状）：`00_Inbox_收集箱/`、`01_Dashboard_总览/`、`02_Research_科研工作/`、`08_Legacy_传承资料/`、`90_Templates_模板/`、`99_Archive_归档/`。
- 二级目录同规则：`02_Research_科研工作/01_Projects_项目/`、`08_Legacy_传承资料/06_处理规范_规范/`。
- 来源出处：vault 全树目录命名现状（见 `README.md` L42–L55 目录说明）。

> `90_Templates_模板/` 与 `99_Archive_归档/` 用 90/99 是约定：把「工具 / 归档」类目录排到末尾，不与内容目录混排。

---

## 5. 16 模板 → 触发条件 → type 映射表

`90_Templates_模板/` 现有模板到 canonical `type` 的映射。复制模板后**必须**把模板自带的分歧 frontmatter 归一化到 canonical 8 字段 + 本映射的 type。

| 模板文件 | 触发条件（什么时候用） | canonical `type` | 旧 frontmatter 需迁移项 |
|---|---|---|---|
| `Template_Project.md` | 新立项、写研究项目主页 | `project` | `related_papers/related_code/related_data` → 并入 `related`；补 `updated` |
| `Template_Paper_Note.md` | 读论文、写文献笔记、投稿记录 | `paper` | `paper-note`→`paper`；`authors/year/venue/doi/url` 保留为扩展；`related_projects` → 并入 `related` |
| `Template_Lesson.md` | 从失败或成功提炼可复用经验教训 | `lesson` | `date` → `created`+`updated`（已是 canonical，仅 type/tag 对齐） |
| `Template_Meeting_Note.md` | 组会、合作会议、答辩讨论 | `meeting` | `participants` 保留为扩展；`related_projects` → 并入 `related`；`date` → `created`+`updated` |
| `Template_Experiment_Log.md` | 跑实验、调参、消融 | `experiment` | `related_project` → 并入 `related`；`date` → `created`+`updated` |
| `Template_Feedback_Log.md` | 导师反馈、审稿意见、自我复盘 | `reflection` | `feedback`→`reflection`；`source/related_project/related_paper` → `source` 保留为扩展，关联并入 `related`；`date` → `created`+`updated` |
| `Template_Thesis_Chapter.md` | 写毕业论文章节 | `paper`（论文章节）或 `legacy`（若偏流程章） | `thesis-chapter`→`paper`/`legacy`；`related_projects/related_papers` → 并入 `related`；补 `created/updated` |
| `Template_Thesis_Admin_Checklist.md` | 写毕业手续 / 阶段材料清单 | `legacy` | `template`→`legacy`；补 `created/updated/related` |
| `Template_Legacy_Guide.md` | 写 SOP 型传承指南页（适合谁读/标准流程/常见坑/检查清单） | `legacy-guide` | 补 `related`（本规范页即用此模板） |
| `Template_Academic_Application_Defense.md` | 学术岗位申请答辩 PPT 准备 | `legacy`（偏 checklist）或 `reflection`（偏复盘） | `template`→`legacy`；补 `created/updated/related` |
| `Template_International_Conference_Paper.md` | 国际会议论文投稿准备 | `paper` | `template`→`paper`；补 `created/updated/related` |
| `Template_Qualification_Exam_Preparation.md` | 博士资格考试准备 | `legacy`（偏 checklist） | `template`→`legacy`；补 `created/updated/related` |
| `Template_Short_Visit_Report.md` | 短期出国境访学总结 | `reflection`（偏复盘）或 `legacy` | `template`→`reflection`/`legacy`；补 `created/updated/related` |
| `Template_Social_Practice_Package.md` | 社会实践材料包 | `legacy` | `template`→`legacy`；补 `created/updated/related` |
| `Template_Award_Application_Package.md` | 奖学金 / 荣誉申请材料包 | `legacy` | `template`→`legacy`；补 `created/updated/related` |

> 「触发条件」依据模板正文结构判定；「canonical type」依据本页 §2 词表裁定，二者可能多对一（多个模板 → 同一 type）。

来源出处：映射依据 `90_Templates_模板/` 全部 16 个模板文件的 frontmatter 现状与正文结构（2026-07-09 扫描）。

---

## 6. 字段迁移规则（解决模板矛盾）

模板现用 `related_papers` / `related_code` / `related_data` / `related_projects` / `related_project` / `related_paper` / `date` / `authors` / `venue` / `doi` / `url` / `participants` / `source` 等字段。**迁移裁定如下**，目的是收口关联字段、保留类型专属扩展、统一时间字段。

### 6.1 关联字段 → 一律并入 `related`（删除旧字段）

以下字段全部并入 canonical `related` 数组，**原字段删除**，不再保留：

| 旧字段 | 来源模板 | 迁移目标 |
|---|---|---|
| `related_papers` | Project / Thesis_Chapter | `related` |
| `related_code` | Project | `related` |
| `related_data` | Project | `related` |
| `related_projects` | Paper_Note / Meeting / Thesis_Chapter | `related` |
| `related_project` | Experiment / Feedback | `related` |
| `related_paper` | Feedback | `related` |

迁移后 `related` 里用 `[[页面]]` 双链表达原关联，不再用字段名区分类型（类型由被链页自身的 `type` 表达）。

### 6.2 时间字段 → 归一为 `created` + `updated`

| 旧字段 | 迁移 |
|---|---|
| `date` | 拆为 `created`（首次）+ `updated`（最近更新），均为 `YYYY-MM-DD` |

模板里只有单 `date` 的（Lesson/Meeting/Experiment/Feedback）一律补齐 `created`+`updated`。

### 6.3 类型专属扩展字段 → **保留，不删**

以下字段是各 type 的**专属扩展**，不进 canonical 8，但**保留在 frontmatter**，作为该 type 的合法扩展（命名沿用，不再迁移）：

| 扩展字段 | 适用 type | 说明 |
|---|---|---|
| `authors` | paper | 论文作者 |
| `year` | paper | 发表年 |
| `venue` | paper | 期刊 / 会议 |
| `doi` | paper | DOI |
| `url` | paper | 链接 |
| `participants` | meeting | 参会人（注意脱敏，见 [[处理规范_脱敏与可见性]]） |
| `source` | reflection | 反馈来源（advisor/peer/reviewer/self/audience） |
| `audience` | legacy-guide | 目标读者（junior/agent/peer/senior），规范页与 SOP 页用 |

> `authors` / `venue` / `doi` 等**不删**：它们承载 paper 类型独有的学术元数据，删了会丢信息。原则是「关联关系收口进 `related`，专属元数据原地保留」。

来源出处：迁移裁定依据模板 frontmatter 现状与 `11_Skills_个人智能体/phd-self-os/workflows/01_ingest_and_link.md` L11–L21 的分歧 frontmatter（该 workflow 用了 `date/project/paper/people/privacy/source`，与本规范冲突，以本页为准）。

---

## 7. 模板 frontmatter 归一化检查清单

复制任意模板新建页面后，逐项核对：

- [ ] 8 字段齐备（title/created/updated/type/status/visibility/tags/related），无缺失
- [ ] `type` 取自 §2 词表（paper-note→paper、feedback→reflection、thesis-chapter→paper/legacy、template→对应内容 type）
- [ ] `status` 取自 §3 词表（seed/growing/stable/archived）
- [ ] `related` 承载所有跨页关联，旧 `related_*` 字段已删除
- [ ] 时间字段是 `created`+`updated` 两个，无单 `date`
- [ ] 类型专属扩展（authors/venue/doi/participants/source/audience）按需保留
- [ ] `visibility` 取值 public/internal/private（判定见 [[处理规范_脱敏与可见性]]）
- [ ] `tags` 小写、数组形式

---

## 8. 与 skill / workflow 的对齐

`11_Skills_个人智能体/phd-self-os/workflows/01_ingest_and_link.md` 当前用了一套分歧 frontmatter（`date/project/paper/people/privacy/source`）。本页裁定：该 workflow 的字段**以本规范为准**归一化——

- `date` → `created`+`updated`
- `project` / `paper` / `people` → 并入 `related`（用双链表达）
- `privacy` → 字段名统一为 `visibility`（同义）
- `source` → 保留为 reflection 类型的扩展字段

agent 执行摄入时，按本页 §5 映射表选模板、按 §6 迁移规则填字段，不照搬 workflow 旧 frontmatter。workflow 文件本身的更新见任务 [[处理规范_摄入与整理流程]] 的对齐项。

---

## 关联

**同目录规范（互链）**：
- [[处理规范_脱敏与可见性]] — `visibility` 取值词表在本页，内容该不该公开、如何脱敏的判定在那页
- [[处理规范_摄入与整理流程]] — Inbox → 归档流程步骤，本页只规定流程产物的命名与字段
- [[处理规范_Git与提交]] — 提交粒度与信息格式

**规则源（本页合并自）**：
- [README](../../README.md) — 推荐元数据 8 字段、目录说明、公开前检查
- [Projects README](../../02_Research_科研工作/01_Projects_项目/README.md) — YYYY_Project 命名
- [Ingest and Link Workflow](../../11_Skills_个人智能体/phd-self-os/workflows/01_ingest_and_link.md) — 分歧 frontmatter（已归一）
- [90_Templates 模板](../../90_Templates_模板/) — 16 模板现状（映射依据）
- [答辩闭环SOP](../05_Tools_Workflows_工具与流程/博士阶段流程/答辩闭环SOP.md) — SOP 风格与本页结构来源
- [处理规范中心 README](./README.md) — 本规范所属 hub

**返回**：
- [[Home]] — 知识库总入口
- [仓库根 README](../../README.md)
