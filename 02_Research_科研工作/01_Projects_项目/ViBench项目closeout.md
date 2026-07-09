---
title: ViBench / PHM-Vibench 论文项目 closeout
created: 2026-07-09
updated: 2026-07-09
type: project
status: stable
visibility: public
tags: [ViBench, PHM-Vibench, UPHMP, PHM-Society, benchmark, foundation-model, 论文复盘, Claude工作流, closeout]
related:
  - "[[UPHMP七空间框架]]"
  - "[[PHM-Vibench数据集索引]]"
  - "[[R00-phmfactory代码结构]]"
  - "[[神经符号PHM综述]]"
  - "[[Agent_PHM智能体]]"
  - "[[spec_driven论文写作工作流]]"
---

# ViBench / PHM-Vibench 论文项目 closeout

> 来源：博士毕业源仓库 os_cards/015_ViBench论文项目复盘.md + 已发表 PHM-Vibench 论文摘要（PHM Society Asia-Pacific Conference, Vol 5 Issue 1, DOI 10.36001/phmap.2025.v5i1.4303, 2026-01-13 发表）+ 11 份 .claude/Doc 打磨过程文档
> 整理日期：2026-07-09
> 适用范围：ViBench/UPHMP 论文项目的目标、方法、结果、失败与负结果、可复用经验；以及配套代码/数据/打磨文档的指针管理

---

## 边界说明

这页是 **PHM-Vibench 论文项目的 closeout 复盘**，覆盖"目标 → 方法 → 结果 → 失败/负结果 → 可复用经验"这一条线，加上配套资产（代码仓库 / 89 GB 数据集 / 11 份打磨文档）的指针管理。

这页 **不是**：
- 不是 UPHMP 七空间框架本身的解读 —— 那在 [[UPHMP七空间框架]]。
- 不是 PHM-Vibench 全部数据集的清单 —— 那是 [[PHM-Vibench数据集索引]]。
- 不含论文全文、不含学位评阅/答辩正文、不含任何学号/邮箱/签字件 —— 这些走私有指针（见末尾"原始资产指针"）。

---

## 一句话总结

PHM-Vibench 是面向 foundation model era 的统一振动 PHM 基准平台，提出 UPHMP 七空间框架做问题形式化，把 PHM pipeline 解耦成 data / model / task / trainer 四类 factory，集成 20+ 数据集与标准化协议，已在 PHM Society Asia-Pacific Conference 发表（Plenary Paper）。这是博士收官 + 博后延续的核心论文之一。

## 背景与问题

- **要解决的问题**：PHM 领域长期受碎片化基准（fragmented benchmarks）、不一致的评测协议（inconsistent evaluation protocols）、以及 foundation model 时代缺乏可及的统一框架这三件事困扰。
- **为什么重要**：没有统一基准，不同方法之间的横向比较基本不可信；foundation model 进 PHM 又带来了跨域泛化、跨系统迁移、few-shot 等新场景，旧基准覆盖不了。
- **和博士主线的关系**：是博士收官阶段的核心投稿之一，也是后续基金申请（UPHMP 直接当方法论）和博后研究延续（扩展到声学/电流/温度多模态）的方法骨架。

## 核心假设

1. 把 PHM 问题拆成七个正交的"空间"（domain/data/task/model/loss/protocol/evaluation），能让一个 PHM workflow 被无歧义地形式化、复现、比较。
2. 把 PHM pipeline 解耦成 factory 模式（data/model/task/trainer 各自可实例化），既兼容传统 ML，也兼容 foundation model，且可扩展。
3. 统一协议 + 20+ 数据集 + 标准化评测，足以支撑跨域/跨机/迁移/few-shot 等复杂场景的系统性实验。

## 方法与路线

- **理论骨架**：UPHMP 七空间框架（见 [[UPHMP七空间框架]]），作为问题形式化的统一语言。
- **工程骨架**：factory-style 架构 —— pipeline 解耦为 data / model / task / trainer 四类 factory，每个 workflow 由这四类 factory 的实例组合而成。
- **数据与任务**：集成 20+ 振动数据集，覆盖 fault diagnosis、RUL prediction、anomaly detection 三类任务，以及 domain generalization、cross-system transfer、few-shot 等复杂场景。
- **论文打磨方法（可复用，见经验教训）**：A/B/C/D 任务分解 —— A=结构分析与框架评估，B=LaTeX 校验与可视内容评估，C=引言增强，D=元设置增强与补充文献。配套 Claude Code 的 `.claude/Doc` 工作流做迭代。

## 时间线

| 时间 | 事件 | 产出 | 备注 |
|---|---|---|---|
| 草稿阶段 | 715 行 LaTeX 草稿成型 | 草稿 | 后续被打磨到投稿质量 |
| 打磨阶段 | A/B/C/D 任务分解 + .claude/Doc 11 份过程文档 | 结构分析 / 框架评估 / 文献缺口 / LaTeX 校验 / 可视评估 / 引言增强 / 元设置增强 | 过程档案，不可再生 |
| 2025-06-28 | 论文提交 PHM Society Asia-Pacific Conference | 投稿版 | |
| 2026-01-13 | 论文发表（Plenary Paper） | PHM Society APC Vol 5 Issue 1, DOI 10.36001/phmap.2025.v5i1.4303 | 开源：github.com/PHMbench/PHM-Vibench |

## 关键结果

- 论文正式发表并被标为 **Plenary Paper**（PHM Society Asia-Pacific Conference, Vol 5 Issue 1）。
- 提出 UPHMP 七空间框架：domain knowledge (P)、data (D)、task (T)、model (M)、loss function (L)、protocol (Π)、evaluation metric (E)。
- 平台开源（github.com/PHMbench/PHM-Vibench），集成 20+ 数据集 + 标准化协议。
- 实验验证显示在跨域场景上有更优表现（superior cross-domain performance，详见论文实验章节）。
- 平台同时兼容传统 ML 模型与 foundation model。

> 敏感原件与大体积资产只写私有指针, 规则见 [[处理规范_脱敏与可见性]]。

## 失败尝试 / 负结果

> 这一节源卡片信息有限，以下为打磨阶段可确认的过程性教训；具体实验层面的负结果需回原始实验记录核对后补。

- **打磨阶段的返工**：715 行草稿到投稿质量之间，经历了结构分析 → 框架缺口 → 文献缺口 → 引言增强 → 元设置增强多轮迭代，说明初稿在结构自洽性、文献覆盖、元数据规范上都不够一次到位（见"经验教训"）。
- 待补：实验层面是否有 method 不 work 的负结果、是否某些 foundation model 在特定数据集上不如传统方法 —— 需回原始实验记录确认后再写深。

## 代码与数据

- **Code（复刻仓库，6.4 GB 含 venv）**：`LQQL_OS/论文流水线/R00-phmfactory/` —— 见 [[R00-phmfactory代码结构]]。开源镜像：github.com/PHMbench/PHM-Vibench。
- **Data（89 GB，跨域引用 04_data）**：`D01_vibench/` —— 见 [[PHM-Vibench数据集索引]]。体积过大，只写指针，不内联。
- **Environment / Claude 工作流配置**：`paper/paper_25_9_vibench/.claude/config.yaml`（7.4 KB）与 `.claude/settings.json`（2.7 KB）—— spec-driven 论文写作工作流的配置实例，见 [[spec_driven论文写作工作流]]。

## 论文/报告/展示

- **正式发表**：PHM-Vibench: A Unified and Factory-Style Vibration Benchmarking Framework for the Foundation Model Era. PHM Society Asia-Pacific Conference, Vol 5, Issue 1 (Plenary Papers), 2026. DOI: 10.36001/phmap.2025.v5i1.4303. 摘要页：papers.phmsociety.org/index.php/phmap/article/view/4303
- **打磨过程文档（11 份，91 KB，不可再生）**：见末尾"原始资产指针"。这些是论文从草稿到投稿的"过程档案"，对后续指导师弟妹 / 复刻写作工作流有独立价值。
- 关联卡片（源仓库）：os_cards/014_已发表与在投论文.md、os_cards/016_PHM-Vibench数据集与论文仓库.md。

## 经验教训

1. **论文打磨用 A/B/C/D 任务分解是可复用的**：A=结构分析与框架评估（先看草稿骨架自不自洽），B=LaTeX 校验与可视内容评估（工程层排错），C=引言增强（叙事与定位），D=元设置增强与补充文献（合规与覆盖）。这个顺序比"从头到尾通改"更可控。
2. **文献缺口分析（literature_gap_analysis）要单独成一个产物**：不要混在正文改写里，单独产出一份缺口清单 + 补充文献需求（additional_references_needed），再回灌到正文。这 11 份文档里有专门的 A3 / uphmp_framework_gap_analysis 两份。
3. **UPHMP 框架本身要先做框架评估（A2）再做框架缺口分析**：先确认框架自洽，再找它没覆盖到的东西，顺序反了会越改越乱。
4. **Claude Code 配合论文写作的 `.claude/Doc` 工作流有效**：把每轮打磨的中间产物（结构分析、校验报告、增强报告）落成独立 markdown，形成可追溯的过程档案。这套工作流本身可迁移到其他论文，见 [[spec_driven论文写作工作流]]。
5. **过程文档不可再生，必须留档**：草稿→投稿之间的中间产物一旦覆盖就找不回来，它们对"怎么把一篇论文磨出来"这件事的价值不亚于终稿。

## 未来接手建议

- **写基金**：UPHMP 七空间框架直接当方法论骨架，套到"问题形式化"那一节。
- **博后延续**：把 ViBench 从振动扩展到声学 / 电流 / 温度多模态，七空间框架本身不用改，改的是 data space 和 task space 的实例。
- **指导师弟妹**：把这 11 份打磨文档当"论文怎么从草稿磨到投稿"的案例教材，比讲方法论直接。
- **综述写作**：UPHMP 七空间框架作为综述的组织骨架（按空间分章），见 [[神经符号PHM综述]]。
- **接手代码**：先读 [[R00-phmfactory代码结构]]，理解 factory 解耦后再碰具体 factory。

---

## 最容易卡住的地方

1. **把 UPHMP 框架和 PHM-Vibench 平台混为一谈**：UPHMP 是问题形式化的理论框架（七空间），PHM-Vibench 是它的一个工程实现（factory 架构 + 数据集 + 协议）。讨论时要分清在谈哪一个。
2. **factory 解耦的边界没定清**：data / model / task / trainer 四类 factory 各自的职责边界，初接手时容易把 task 和 model 的逻辑写串。
3. **过程文档找不到**：11 份 .claude/Doc 在源机器本地路径，换机器后路径失效，必须靠私有指针 + 夸克备份双保险（见末尾）。
4. **大资产误进 git**：venv（6.4 GB）/ 数据集（89 GB）/ 全文 PDF 一旦误提交会撑爆仓库，写 .gitignore 和指针时要双重确认。
5. **七空间记不全 / 记串**：七个空间里 protocol (Π) 和 evaluation (E) 最容易混，loss function (L) 最容易漏。建议直接背元组 `M = (D, T, M, L, P, Π, E)`，细节见 [[UPHMP七空间框架]]。

---

## 原始资产指针（私有，勿提交）

> 敏感原件与大体积资产只写私有指针, 规则见 [[处理规范_脱敏与可见性]]。

- **11 份打磨文档（过程档案，不可再生）**：源路径 `paper/paper_25_9_vibench/.claude/Doc/UPHMP_C/`，含：
  - `A1_Paper_Structure_Analysis.md` — 715 行 LaTeX 草稿结构分析
  - `A2_UPHMP_Framework_Assessment.md` — UPHMP 框架评估
  - `literature_gap_analysis_A3.md` — 文献缺口分析
  - `B1_LaTeX_Validation_Report.md` — LaTeX 校验报告
  - `Task_B2_Visual_Content_Assessment.md` — 可视内容评估
  - `Task_C2_Introduction_Enhancement_Report.md` — 引言增强报告
  - `Task_D2_Meta_Setting_Enhancement_Summary.md` — 元设置增强总结
  - `additional_references_needed.md` — 补充文献需求
  - `task_d3_completion_summary.md` — d3 任务完成总结
  - `uphmp_framework_gap_analysis.md` — UPHMP 框架缺口分析
- **Claude 工作流配置**：`paper/paper_25_9_vibench/.claude/config.yaml`、`.claude/settings.json`
- **复刻代码仓库（6.4 GB，含 venv）**：`LQQL_OS/论文流水线/R00-phmfactory/`
- **数据集（89 GB）**：`D01_vibench/`
- **夸克备份镜像**：`博士毕业数据总仓库_202606/06_知识系统与自蒸馏OS/ViBench_论文复盘文档/`

---

## 关联

- [[UPHMP七空间框架]] — 本项目的方法论骨架，七空间的逐空间解读
- [[PHM-Vibench数据集索引]] — 20+ 振动数据集的清单与指针
- [[R00-phmfactory代码结构]] — factory 架构代码结构
- [[神经符号PHM综述]] — UPHMP 框架作为综述组织骨架的落点
- [[Agent_PHM智能体]] — foundation model era PHM 的智能体方向
- [[spec_driven论文写作工作流]] — 本项目用到的 Claude Code + .claude/Doc 打磨工作流
