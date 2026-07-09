---
title: canonical_skills 注册表方法论
created: 2026-07-09
updated: 2026-07-09
type: legacy
status: growing
visibility: public
tags: [canonical_skills, Agent, LQQL_OS, skill_registry, methodology]
audience: junior
related: ["[[LQQL_OS自蒸馏OS方法论]]", "[[对象分层与控制平面]]", "[[canonical_skills_index]]"]
---

# canonical_skills 注册表方法论

> 来源: 博士毕业源仓库 os_cards/019_canonical_skills库.md / 交叉校验: vault 自身 `.agents/skills/INDEX.md`
> 整理日期: 2026-07-09
> 适用范围: LQQL OS canonical skills 库的注册表治理、依赖分级与"跨场景稳定成立"判定方法

---

## 边界说明

这页是**方法论**, 不是 skill 源码索引。

- 这页是什么: 解释 18 个 canonical skill 为什么这样分依赖级、什么算"最小完整包"、一个能力要满足什么条件才算"跨场景稳定成立"而进入 canonical center。
- 这页不是什么: 不复制任何 `SKILL.md` / `examples/prompts.md` 的正文; 不内联 2.5 MB 的 skill 源码包; 不重复 fix 区规则、模板中心或项目骨架。
- skill 源码包指针: 见文末 "源码包指针"。源码在私有仓库, 公开页只记**方法 + 结构 + 指针**, 不记内容。

---

## 适合谁读

- 想维护自己 agent 行为库的人: 把"散落的 prompt / workflow / 笔记"收敛成稳定 skill 注册表。
- 想判断一个新能力"该不该升级成 canonical skill"的人。
- 想理解 LQQL OS 的"方法论 → repo-local workflow → canonical skill"三层映射的人。

## 读完能做什么

- 说清 canonical center 的唯一真相源契约, 不被 wrapper / 副本 / 第二真相源带偏。
- 对任意一个候选 skill, 给出"能否 promote 到 canonical"的判定路径。
- 用 INDEX.md 的注册表结构组织自己的 skill 库, 而不是靠记忆散落 prompt。

## 前置条件

- 理解 agent skill 的基本形态: 一个 `SKILL.md` 描述触发条件、输入、产物与禁止动作。
- 接受一个前提: agent 行为的真相源应当与"项目内容 / fix 区规则 / 模板"分离, 否则会随项目死亡而丢失。

---

## 核心概括

canonical skills 是 LQQL OS 的"agent 行为真相源" —— 18 个跨场景、跨项目稳定成立的 skill, 与"09_智能体开发"的方法论 + 工作流形成三层映射:

**方法论 → repo-local workflow → canonical skill**

每个 canonical skill 有最小完整包 (`SKILL.md + examples/prompts.md`), 带 required / optional 依赖分级, 并且**不复制** fix 区规则、模板中心、项目骨架或目录判断规则。

三层映射的含义:
- **方法论**: 解释一个能力"为什么这么做"的第一性原理页。
- **repo-local workflow**: 把方法论落成某个仓库内的具体步骤页。
- **canonical skill**: 把 workflow 沉淀成 agent 可触发的最小行为包 (`SKILL.md`), 这是唯一会被 agent 运行时回读的层。

只有当三层都成立时, 一个能力才进 canonical center。

---

## 标准流程

### 1. 判定"是否需要一个新 canonical skill"

按 INDEX.md 的 "新建前检查" 五步走:

1. 查现有 canonical skills。
2. 能复用则直接复用。
3. 仅平台入口不同则只建 wrapper(如 Claude wrapper), 不建第二完整 skill。
4. 若已有 skill 包不完整, 先补齐 package completeness, 而不是另起炉灶。
5. 不能解释为 wrapper 差异时, 才建新 canonical skill。

核心判据(来自 INDEX.md 的 "重复创建判定"):
- **同能力 = 一个 canonical**。
- **同能力跨平台 = 一个 canonical + 必要 wrapper**。
- **没有真实差异 = 禁止第二个完整 skill**。

### 2. 补齐最小完整包

默认最小完整包是 `SKILL.md + examples/prompts.md`:

- `SKILL.md`: skill 的触发真相源 —— `name` 与 `description` 是 agent 触发依据。
- `examples/prompts.md`: 至少 2 个**真实触发场景**, 每个要说明: 输入形态、期望输出或决策、禁止动作。
- 只有当 workflow 明显依赖结构化产物时, 才增加 `assets/`。
- `references/` 保持可选, 只放 skill 私有参考, 不复制 repo 真相源。
- 凡在 `SKILL.md` 里提到的 `assets/` / `examples/` / `references/`, 文件必须真实存在(declared bundled resources 契约)。

### 3. 打依赖分级

每个 canonical skill 标注 required / optional 依赖:

- **required**: 默认总要回读, 缺失会影响该 skill 的核心工作流。
- **optional**: 只有场景命中且环境满足时才使用。

示例(vault INDEX.md 交叉校验过):
- `note-compiler` → required `@obsidian-markdown`, optional `@obsidian-cli`
- `post-task-learn` → required `@classify-and-route`, optional `@note-compiler` / `@review-promote`
- `continuous-evolution` → required 四件套 `@preflight-contract` / `@classify-and-route` / `@review-promote` / `@post-task-learn`, optional 四个 gate `@source-intake` / `@novelty-check` / `@cross-model-review` / `@note-compiler`

### 4. 判定"跨场景稳定成立"

一个能力要进入 canonical center, 必须满足:

1. **场景无关**: 不绑定某个具体项目、某次任务、某台机器。
2. **平台无关**: 不只在某个 agent(Claude / Codex / ChatGPT 桌面端)上成立。
3. **可被独立触发**: 有清晰的触发条件, 不依赖人脑记忆。
4. **有可验证产物**: 每次运行都能给出一个可被 `review-promote` 复核的输出。
5. **不复制既有真相源**: skill 私有资产不得复制 fix 区规则、模板中心、项目骨架或目录判断规则。

### 5. 进 promote gate

promote 前四件事必须同时通过(见 INDEX.md 的 "Examples Regression Gate"):
1. package completeness(`SKILL.md` + `examples/prompts.md` 真实存在)
2. declared resources(`SKILL.md` 提到的资产真实存在)
3. examples 场景数与质量(至少 2 个真实场景, 含输入 / 期望输出 / 禁止动作)
4. diff hygiene

自动检查脚本见 canonical_skills_index 页, 通过后仍要人工确认 prompt 内容。

---

## 关键契约(Registry Contract)

来自 INDEX.md, 是这套治理的硬约束:

| 契约 | 含义 |
|---|---|
| **唯一真相源** | 一个能力只能有一个 canonical center; `.agents/skills/` 是唯一真相源 |
| **wrapper 不是第二真相源** | wrapper 只是按需 adapter, 没有 Claude-only delta 时不创建 `.claude/skills/` |
| **不复制 repo 真相源** | skill 私有资产不得复制 fix 区规则、模板中心、项目骨架、目录判断规则 |
| **package completeness 先于 promotion** | canonical skill 先满足最小包完整, 再谈 promote |
| **UI metadata 非 promote gate** | `agents/openai.yaml` 不作为 promote gate; 没有明确消费方不批量生成 |
| **deprecated 显式记录** | 废弃 skill 在 "Deprecated Skills" 区显式列出, 不悄悄删除 |

---

## 可复用知识(7 条核心模式)

源卡片 019 提炼的、可迁移到其他 agent 系统的模式:

1. **skill 注册表契约** —— canonical center 唯一真相源 / 最小完整包 / wrapper 不是第二真相源。
2. **任务后学习闭环 5 步法** —— outcome → 高信号 lesson → 已有页 update / 新建页 → 接受 hold / recommendation(对应 `@post-task-learn`)。
3. **cross-model-review 对抗式复核** —— 用独立 reviewer surface 对计划、论文、代码、deliverable 做对抗式复核(对应 `@cross-model-review`)。
4. **novelty-check local-first 新颖性判断** —— 对 idea / workflow / 候选 skill 先做本地 overlap 判断, 再决定是否新建(对应 `@novelty-check`)。
5. **continuous-evolution darwin-loop 自进化** —— 把 neverstop / darwin loop 收束为有边界的最小批次编排, 不是无限循环(对应 `@continuous-evolution`)。
6. **post-task-learn 经验回写去噪规则** —— 不写逐轮对话、报错日志、临时情绪、环境抖动, 只写高信号经验。
7. **preflight-contract 任务契约** —— 复杂请求 → 任务契约 → 最小上下文 → 写入边界(对应 `@preflight-contract`)。

---

## 后续使用场景

- 博后期间继续维护 canonical skills —— 终身 agent 行为源。
- 创业 / 出工具 —— skills 库作为产品差异化卖点。
- 跨设备 / 跨平台同步 —— canonical skills 作为便携式 agent 行为包。
- 写论文 / 出书 —— skill 设计模式作为案例。
- 教学培训 —— agent 工程入门素材。

---

## 最容易卡住的地方

### 1. 把 wrapper 当成第二真相源

最常见也最危险。一旦在 `.claude/skills/` 里复制了 `SKILL.md` 正文并各自演化, canonical center 就失效。规则: **没有 Claude-only delta 时, 不创建 `.claude/skills/`**; wrapper 只放平台 adapter, 正文只回指 canonical。

### 2. 在 skill 私有资产里复制 repo 规则

skill 里复制了一份"目录判断规则"或"fix 区规则", 很快两边就不同步。规则: **skill 私有资产不复制 repo 真相源**, 需要时回读原始页。

### 3. 为"体系完整"批量造空壳 skill

每个 skill 必须满足"至少 2 个真实触发场景"。没有真实场景、只为了凑齐 18 / 20 / 24 个, 就是在制造维护面。规则: **宁可少而实**。

### 4. examples 只写一句泛化请求

`examples/prompts.md` 写成 "请帮我整理一下笔记" 这种占位 prompt, agent 无法据此判断触发边界。规则: **每个 example 必须含输入形态 + 期望输出或决策 + 禁止动作**。

### 5. 依赖分级标错

把核心工作流依赖标成 optional, 缺失时 skill 直接失效; 或把偶然用到的标成 required, 增加无谓回读。规则: **required = 缺失会断核心工作流; optional = 场景命中才用**。

### 6. 把 continuous-evolution 当成无限循环

darwin-loop 必须收束成"有边界的最小批次", 否则会失控消耗 token 与人力。规则: **每个批次有固定范围、写入边界、停止条件, 走完进 `review-promote`**。

---

## 源码包指针

- vault 内 canonical skills 真相源(私有, 跨设备同步): `.agents/skills/` (18 个 skill, 2.5 MB) 及 `INDEX.md` (16 KB 注册表)。本页只记方法与结构, 不内联源码。
- LQQL OS 主仓库 skills: `LQQL_OS/.agents/skills/`(公开仓库内的 canonical center)。
- 方法论与 repo-local workflow 映射源(私有): 见源卡片 019 引用的 `09_智能体开发/` 目录(方法论 + 工作流页)。
- 桌面端全局 skills(私有): Codex 桌面端全局 skills 目录(53 个全局 skill, ~20 MB, 含本仓库 canonical skills 的镜像)。

> 敏感原件与大体积资产只写私有指针, 规则见 [[处理规范_脱敏与可见性]]。

---

## 关联

- [[LQQL_OS自蒸馏OS方法论]] —— canonical skills 是 LQQL OS 自蒸馏体系的一个核心子集。
- [[对象分层与控制平面]] —— "canonical center 唯一真相源"是分层与控制平面思想在 agent 行为层的应用。
- [[canonical_skills_index]] —— 18 个 skill 的索引表与方法论镜像, 配套使用。
- [[spec_driven论文写作工作流]] —— spec-driven 写作与 preflight-contract 任务契约同源。
