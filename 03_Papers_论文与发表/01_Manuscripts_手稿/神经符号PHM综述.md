---
title: 神经符号 PHM 综述 (在投)
created: 2026-07-09
updated: 2026-07-09
type: paper
status: growing
visibility: public
tags: [paper, neuro-symbolic, PHM, survey, spec_driven, 在投论文, 博士毕业]
related:
  - "[[UPHMP七空间框架]]"
  - "[[canonical_skills注册表方法论]]"
  - "[[LQQL_OS自蒸馏OS方法论]]"
  - "[[论文流水线5步法]]"
  - "[[对象分层与控制平面]]"
  - "[[spec_driven论文写作工作流]]"
---

# 神经符号 PHM 综述 (在投)

> 来源: 源卡片 `os_cards/017_神经符号PHM综述_在投.md` (博士毕业数据总仓库 A0_毕业整理)
> 整理日期: 2026-07-09
> 适用范围: 博士期间在投的高水平综述论文;选题/框架/与博士论文关系/工作流方法;正文与文献原件为私有指针

## 边界说明

这页是**综述的选题、框架与工作流复盘**, 不是综述正文。综述的 LaTeX/PDF 正文、参考文献库全文、Codex/Claude 协作日志均属大体积或未发表资产, 仅在私有区记指针路径, 公开页只记**方法 + 结构 + 指针**。审稿意见、rebuttal、编辑通信同样不进公开页。

---

## 这篇文章解决的问题

把博士期间在**故障诊断 + 剩余使用寿命 (RUL) + 跨域迁移 + Agent** 多个分散方向的工作, 用**神经符号 (Neuro-Symbolic) 范式**统一组织成一篇高水平综述, 给 PHM (Prognostics and Health Management) 领域一个"如何把感知 (neural) 与推理 (symbolic) 融合"的系统性图谱。

## 核心贡献

1. **统一分类体系**: 在 PHM 场景下梳理神经符号方法的主要流派, 包括 Deep Symbolic Optimization、Logic Tensor Networks、Neural-Symbolic Reasoning 等。
2. **跨子方向整合**: 把诊断、RUL、跨域迁移、Agent 四条原本独立的研究线, 收拢进神经符号这一统一视角, 形成博士阶段的纲领性综述。
3. **方法论示范**: 综述本身用 spec-driven 工作流 (`.specify/` + `goal/codex_goal_*`) 产出, 同时作为论文流水线方法论的完整范例, 见 [[spec_driven论文写作工作流]]。

## 方法概述

综述的写作流程是**规格先行 (spec-driven)** 而非自由起草:

```
specs (大纲/规格)
  → goal/codex_goal_* (Codex goal 包: submission_ready / air_review_response_readiness)
  → logs (Codex/Claude 协作日志)
  → paper (LaTeX 正文 + PDF)
```

分类体系层面, 综述围绕神经符号融合的三种主要范式组织文献, 并对每种范式标注其在 PHM 各子任务 (诊断 / RUL / 迁移 / Agent) 中的代表性工作与适用边界。

## 关键证据 / 实验

本页为综述 (survey) 性质, 不含原创实验; "证据"体现为文献覆盖度与分类体系的解释力。综述参考文献库采用 **arxiv_package 模式** 组织 (`phm_nesy_phm_arxiv_package/main.pdf`), 便于批量追溯与版本化。

## 与博士论文 chap07 的关系

综述对应博士论文第 7 章 (统一框架与综述章节), 是对前 4 篇研究工作 (诊断 / RUL / 迁移 / Agent) 的横向收敛。它既是博士毕业的纲领性章节, 也是博后研究以神经符号为主线的延续起点。

## 当前状态

- **状态**: 在投 (submitted), 目标为高水平期刊 (TPAMI / Mechanical Systems and Signal Processing 一类)。
- **资产体量**: 源仓库约 328 MB (含 paper / ref / specs / goal / logs / scripts), 另有综述打包 zip 约 30 MB、NVTA2025 agent 论文打包约 4 MB。

## 关键文件 → 私有指针

> 以下均为大体积或未发表原件。公开页只记指针, 不内联内容。

- 综述仓库根: `敏感原件, 见 98_Private_LOCAL_勿提交 私有指针`
  - 指针路径: `LQQL_OS/论文流水线/P03_nesy_phm_review/`
  - 子目录: `paper/`(正文 LaTeX + PDF) · `ref/`(参考文献库) · `specs/`(规格/大纲) · `goal/`(Codex goal 包) · `logs/`(协作日志) · `scripts/`(自动化脚本)
  - 仓内入口文件: `AGENTS.md` + `README.md` + `.specify/`(spec-driven 工作流)
- 综述打包 zip (敏感原件, 见 98_Private_LOCAL_勿提交 私有指针): `win_download/phm_agents_nature_review_longform_package.zip`
- NVTA2025 agent 论文打包 (敏感原件, 见 98_Private_LOCAL_勿提交 私有指针): `win_download/nvta2025_agent_clean.zip`

## 局限性

- 综述为在投稿, 结论与分类体系尚未经最终同行评议定稿, 此处记录的框架以当前 spec 为准, 接收后可能调整。
- 源卡片未提供具体投稿期刊名、投稿时间、当前审稿轮次等细节; 这些应在状态变更后回填。

## 对我研究的价值

- **博后规划**: 神经符号作为主线方向, 综述是研究基础与基金撰写的直接素材。
- **学术报告 / 邀请报告**: 综述天然适合做主线报告。
- **指导师弟妹**: 综述的 spec-driven 写作过程可拆解为可复用模板, 见 [[spec_driven论文写作工作流]]。

## 后续使用场景

- 投高水平期刊 (TPAMI / Mechanical Systems and Signal Processing)
- 博后研究方向规划 — 神经符号作为主线
- 写基金 — 综述作为研究基础
- 学术报告 / 邀请报告 — 综述做主线
- 指导师弟妹 — spec-driven 论文写作工作流作为模板

---

## 最容易卡住的地方

- **大体积资产误入公开仓库**: 综述仓库 328 MB + 多个 zip 包, 绝不能内联进 git; 一律走私有指针。
- **未发表内容泄露**: 在投综述正文、审稿意见、rebuttal 均属敏感, 公开页只写流程与结构。
- **路径跨盘**: 源指针在 `<K盘>/`(工作盘), 私有区指针须按 `98_Private_LOCAL_勿提交` 实际落盘位置校准, 不要直接拷工作盘路径进公开页。

## 关联

- [[spec_driven论文写作工作流]] — 从本综述提炼的可复用写作法
- [[论文流水线5步法]] — 综述所在的论文流水线 P03
- [[UPHMP七空间框架]] — PHM 问题的分层框架, 综述的领域底座
- [[canonical_skills注册表方法论]] — `.specify/` 与 goal 包的注册思想同源
- [[对象分层与控制平面]] — 神经符号中感知/推理分层与此方法论呼应
- [[LQQL_OS自蒸馏OS方法论]] — spec-driven 是该 OS 方法论在写作侧的落地
