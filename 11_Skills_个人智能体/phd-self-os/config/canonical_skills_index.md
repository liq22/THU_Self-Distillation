---
title: canonical_skills_index
created: 2026-07-09
updated: 2026-07-09
type: legacy
status: stable
visibility: public
tags: [canonical_skills, Agent, LQQL_OS, skill_registry, index]
related: ["[[canonical_skills注册表方法论]]", "[[LQQL_OS自蒸馏OS方法论]]", "[[对象分层与控制平面]]"]
---

# canonical_skills_index

> 来源: 博士毕业源仓库 os_cards/019_canonical_skills库.md / 交叉校验: vault 自身 `.agents/skills/INDEX.md` (2026-07-09 同步)
> 整理日期: 2026-07-09
> 适用范围: LQQL OS 18 个 canonical skill 的索引表 + 依赖分级 + 推荐链路 + 自动检查脚本

---

## 边界说明

这页是**索引与速查**, 不是方法论, 也不是 skill 源码。

- 这页是什么: 18 个 canonical skill 的一行说明、依赖分级、推荐链路、一屏速查矩阵、自动检查脚本。
- 这页不是什么: 不复制任何 `SKILL.md` 正文; 不内联 2.5 MB skill 源码包; 不替代 canonical center 的 `INDEX.md`(那个才是运行时真相源, 本页是公开镜像与教学入口)。
- 方法论: 见 `[[canonical_skills注册表方法论]]`。
- skill 源码包: 见文末 "源码包指针"(私有)。

> 校验来源: 本表内容已用 vault 自身 `.agents/skills/INDEX.md`(2026-07-09 状态)交叉核对, 与源卡片 019 一致。运行时真相源始终以 canonical center 的 `INDEX.md` 为准。

---

## 解析规则

- `@skill-name -> .agents/skills/<skill-name>/SKILL.md`
- 例: `@post-task-learn -> .agents/skills/post-task-learn/SKILL.md`

---

## 18 个 Canonical Skills(含依赖分级)

### 基础层

| skill | 一句话职责 | required | optional |
|---|---|---|---|
| `obsidian-markdown` | Obsidian Markdown 结构、wikilinks、properties 与渲染约定 | — | — |
| `obsidian-bases` | Obsidian Bases 文件、视图、字段与过滤规则 | — | — |
| `obsidian-cli` | Obsidian CLI 驱动的 vault 操作与调试(是 vault operation helper, 不是 Markdown 结构真相源) | — | — |

### 契约与路由层

| skill | 一句话职责 | required | optional |
|---|---|---|---|
| `preflight-contract` | 把复杂请求收束成任务契约、最小上下文与写入边界 | — | — |
| `source-intake` | 把链接、文件、聊天、转写、截图整理成标准来源包 | — | — |
| `classify-and-route` | 写文件前判断对象类型、落点路径与 create / update 决策 | — | — |
| `index-sync` | 预览或更新目录级 `INDEX.md` 的 AUTO-INDEX 自动导航区块 | — | — |

### 采集与编译层

| skill | 一句话职责 | required | optional |
|---|---|---|---|
| `chatgpt-branch-intake` | 用 Computer Use 操作 ChatGPT 桌面端, 多线程深挖知识点并整理为来源包 | `@source-intake`, `@obsidian-markdown` | `@project-compiler`, `@classify-and-route`, `@note-compiler`, `@review-promote` |
| `note-compiler` | 把来源或草稿编译成正式 knowledge / skill / life / decision note | `@obsidian-markdown` | `@obsidian-cli` |
| `project-compiler` | 把任务契约编译成稳定项目目录与项目骨架 | `@obsidian-markdown` | `@obsidian-cli` |
| `deliverable-composer` | 把正式页面或项目状态输出成最终交付物 | — | — |

### 复核与进化层

| skill | 一句话职责 | required | optional |
|---|---|---|---|
| `cross-model-review` | 用独立 reviewer surface 对计划、论文、代码或 deliverable 做对抗式复核 | — | `@source-intake`, `@review-promote` |
| `novelty-check` | 对 idea / workflow / 候选 skill 做 local-first 新颖性与重叠判断 | — | `@source-intake` |
| `review-promote` | 回写或提交前做最终检查, 给 promote / hold / block / drop / archive 决策 | `@obsidian-markdown` | `@obsidian-cli` |
| `post-task-learn` | 任务成功、失败、关键报错或返工后提炼经验并路由回写 | `@classify-and-route` | `@note-compiler`, `@review-promote` |
| `darwin-skill` | 评估、优化并验证 repo-local skills 的自主改进循环(给单个 SKILL.md 打分) | — | — |
| `continuous-evolution` | 把自进化 / neverstop / darwin loop 收束为有边界的最小批次编排 | `@preflight-contract`, `@classify-and-route`, `@review-promote`, `@post-task-learn` | `@source-intake`, `@novelty-check`, `@cross-model-review`, `@note-compiler` |

### Feishu / Lark Adapter(7 个, symlink 到 `.codex-feishu/skills/`)

| skill | 一句话职责 | required |
|---|---|---|
| `feishu-lqqlos-core` | LQQLOS 现有自动化调用 Feishu/Lark CLI 的公共安全边界与 wrapper 规则 | — |
| `feishu-lqqlos-weekly-plan` | 给"LQQLOS 每周计划生成"补充飞书日历与任务上下文 | `@feishu-lqqlos-core` |
| `feishu-lqqlos-daily-start` | 给"LQQLOS 每日启动建议"补充当日飞书日程与任务约束 | `@feishu-lqqlos-core` |
| `feishu-lqqlos-daily-review` | 给"LQQLOS 每日收口复盘"补充当日完成、偏差、飞书时间证据 | `@feishu-lqqlos-core` |
| `feishu-lqqlos-inbox-clean` | 给"LQQLOS 收件箱周清理"提供只读飞书上下文, 禁止输出 task line | `@feishu-lqqlos-core` |
| `feishu-lqqlos-project-sentinel` | 给"LQQLOS 项目复盘哨兵"提供项目活跃信号, 禁止直接生成任务 | `@feishu-lqqlos-core` |
| `feishu-lqqlos-weekly-review` | 给"LQQLOS 周复盘生成"补充飞书时间 / 任务证据, 禁止输出 task line | `@feishu-lqqlos-core` |

> 以上 7 个 feishu skill 的主体位于 `.codex-feishu/skills/`, `.agents/skills/` 内仅保留 symlink 发现入口。
> 计数说明: 源卡片 019 称 "18 个 canonical skill", 实际为 17 个核心 skill + feishu-lqqlos-core 这一条公共边界, 共 18 条主表项(含 7 个 feishu adapter symlink)。本表与 vault `INDEX.md` 对齐。

---

## 推荐链路

按典型任务流程的推荐调用顺序:

1. `preflight-contract` —— 收束任务边界与写入范围
2. `chatgpt-branch-intake` —— 仅当需要主动调用 ChatGPT 桌面端采集新来源
3. `source-intake` —— 标准化外部来源
4. `classify-and-route` —— 决定写哪里、create / update
5. `novelty-check` —— 判断新想法是否重复(可选 gate)
6. `cross-model-review` —— 对抗式复核(可选 gate)
7. `note-compiler` / `project-compiler` / `deliverable-composer` —— 按产物类型编译
8. `review-promote` —— promote / hold / block / drop 决策
9. `post-task-learn` —— 经验回写

---

## 一屏速查矩阵

| 想做什么 | 首选 skill | 输入 | 产物 |
|---|---|---|---|
| 收束复杂请求和写入边界 | `preflight-contract` | 用户目标、约束、目标目录 | 任务契约、最小上下文、停止条件 |
| 判断内容该写哪里 | `classify-and-route` | 草稿、来源包、候选路径 | 对象类型、目标路径、create / update 决策 |
| 整理外部来源 | `source-intake` | URL、文件、聊天、转写、截图 | 带 provenance 的来源包 |
| 用 ChatGPT 桌面端采集新材料 | `chatgpt-branch-intake` | 研究主题、模型偏好、输出目标 | 多线程来源包与整理稿 |
| 编译正式笔记 | `note-compiler` | 来源包或草稿 | knowledge / skill / life / decision note |
| 创建项目目录 | `project-compiler` | 任务契约、项目边界 | 稳定项目文件夹和启动导航 |
| 输出最终交付物 | `deliverable-composer` | 正式页、项目状态、编译 notes | 回答、计划、报告、表格或 checklist |
| 复核和 promotion 决策 | `review-promote` | 生成物、README / INDEX、规则 | promote / hold / block / drop 判断 |
| 任务结束沉淀经验 | `post-task-learn` | outcome、阻塞、返工、关键错误 | 高信号 lesson 和回写路径 |
| 对抗式复核 | `cross-model-review` | 计划、论文、代码、deliverable | 独立 review findings 和修复决策 |
| 判断想法是否重复 | `novelty-check` | idea、workflow、候选 skill | local-first overlap / novelty 判断 |
| 维护 INDEX 自动导航 | `index-sync` | 目标目录、INDEX.md | AUTO-INDEX 预览或更新 |
| 写 Obsidian Markdown | `obsidian-markdown` | Markdown 内容、链接、properties 需求 | 合规 Obsidian Markdown |
| 写 Obsidian Bases | `obsidian-bases` | `.base` 需求、视图、过滤条件 | Bases YAML / JSON 结构 |
| 操作运行中的 Obsidian vault | `obsidian-cli` | vault 查询、backlinks、截图、调试需求 | vault runtime 结果或诊断 |
| 持续优化系统 | `continuous-evolution` | 优化范围、backlog、目标 delta | 最小批次改动和 promote 决策 |
| 给某个 skill 打分或优化 | `darwin-skill` | 一个或多个 `SKILL.md`、测试 prompts | scorecard、改进循环、结果记录 |
| 使用 Feishu / Lark 上下文 | `feishu-lqqlos-core` | Feishu config、calendar/tasks/docs 需求 | 安全读取、dry-run 写回判断、硬阻断 |

---

## Continuous Loop Entry(自进化入口)

- canonical 自进化入口: `continuous-evolution/SKILL.md`。
- `continuous-evolution` 只做薄编排, 不复制路线图、状态板或协议正文。
- 当前不新建第二个 `darwin-skill` 或达尔文式优化入口; `darwin-skill` 只负责单个 skill 的评分、测试 prompt 与改进循环; `NEVER STOP` / `NEVER IDLE` 由 `continuous-evolution` 调度既有 canonical skills 承接。
- 在持续优化循环里, 现有 canonical skills 的默认角色:
  - `@preflight-contract` —— 固定当前批次、写入边界、风险点与最小修改集
  - `@source-intake` —— 只在本批次引入外部来源或参考 bundle 时标准化
  - `@classify-and-route` —— 决定本批次写知识页 / workflow / registry / assets / no-op / proposal
  - `@review-promote` —— 在批次边界给出 `promoted / held / blocked / dropped` 判断
  - `@post-task-learn` —— 把真实摩擦点和高信号经验回写
- `@novelty-check` 与 `@cross-model-review` 保持可选 gate, 不是每个批次强制步骤。
- 未来若要新增第二个 darwin-style 优化入口, 必须先用 `@novelty-check` 证明它不是现有编排链的重复包装。

---

## Package Completeness 与质量状态

- 当前 canonical skills 均满足默认最小包: `SKILL.md + examples/prompts.md`。
- `obsidian-bases` 已拆成精简 `SKILL.md` 与 `references/SYNTAX_AND_PATTERNS.md`、`references/FUNCTIONS_REFERENCE.md`, 任务命中时才加载。
- `obsidian-markdown` 已拆成精简 `SKILL.md` 与 `references/SYNTAX_PATTERNS.md`、`references/PROPERTIES.md`、`references/EMBEDS.md`、`references/CALLOUTS.md`, 任务命中时才加载。
- examples 最低质量线: 至少 2 个真实触发场景, 含输入形态、期望输出或决策、禁止动作; 已从 placeholder-style 升级为场景化 prompts。
- UI metadata(`agents/openai.yaml`): 当前无; 不作为 promote gate; 只在明确消费方或用户要求时生成, 且字段从 `SKILL.md` 确定, `default_prompt` 必须显式包含 `$skill-name`。
- Wrapper Map: 当前无 Claude wrapper; 没有平台专属 delta 时不建 `.claude/skills/`。
- Deprecated Skills: 暂无。

---

## 自动检查脚本(promote gate)

promote 前四件事必须同时通过。以下脚本与 canonical center `INDEX.md` 对齐, 可直接复用。

**1. Package completeness**

```bash
for d in .agents/skills/*; do
  [ -d "$d" ] || continue
  [ -f "$d/SKILL.md" ] || echo "missing SKILL.md: $d"
  [ -f "$d/examples/prompts.md" ] || echo "missing examples/prompts.md: $d"
done
```

**2. Declared bundled resources**(SKILL.md 提到的资产必须真实存在)

```bash
while IFS=: read -r skill rel; do
  dir=$(dirname "$skill")
  if [ ! -e "$dir/$rel" ]; then
    echo "missing declared resource: $skill -> $rel"
  fi
done < <(rg -o '`(assets|examples|references|scripts)/[^`]+`' .agents/skills/*/SKILL.md | sed 's/`//g')
```

**3. Examples scenario signal**(至少 2 个场景信号)

```bash
for f in .agents/skills/*/examples/prompts.md; do
  n=$(rg -n '^(## |- )' "$f" | wc -l)
  if [ "$n" -lt 2 ]; then
    echo "thin examples: $f ($n scenario signals)"
  fi
done
```

**4. Diff hygiene**

```bash
git diff --check -- .agents/skills lqql_05_知识与技能/09_智能体开发
```

> 自动检查只做低成本信号筛查; 通过后仍要人工确认 prompt 是否含输入形态、期望输出或决策、禁止动作。

---

## 最容易卡住的地方

### 1. 把本索引当成运行时真相源

本页是公开镜像与教学入口。运行时(agent 真正触发 skill 时)永远以 canonical center 的 `.agents/skills/INDEX.md` 为准。两边漂移时, 改 center, 不改本页。

### 2. feishu skill 计数混淆

"18 个 canonical skill"含 7 个 feishu adapter(主体在 `.codex-feishu/skills/`, 本仓库只留 symlink)。不要把 symlink 当独立完整 skill 维护。

### 3. required / optional 标错导致回读过载或断链

`continuous-evolution` 的 required 是四件套, 漏掉任何一个批次就会失控; feishu adapter 漏标 `@feishu-lqqlos-core` 会绕过安全边界。改动依赖分级前先跑一次真实批次验证。

---

## 源码包指针

- vault 内 canonical center(私有, 跨设备同步): `.agents/skills/`(18 个 skill, 2.5 MB) + `INDEX.md`(16 KB 注册表)。敏感原件, 本页不内联其内容。
- LQQL OS 主仓库 skills(公开 canonical center): `LQQL_OS/.agents/skills/`。
- 桌面端全局 skills(私有): Codex 桌面端 `~/.agents/skills/`(53 个全局 skill, ~20 MB, 含本仓库 canonical skills 的镜像)。
- Feishu adapter 主体(私有): `.codex-feishu/skills/`。

> 路径中盘符或个人目录均为私有运行环境指针, 公开页只记路径, 不内联源码或内容。

---

## 关联

- [[canonical_skills注册表方法论]] —— 本索引配套的方法论页(为什么这样分依赖级、什么算最小完整包)。
- [[LQQL_OS自蒸馏OS方法论]] —— canonical skills 是 LQQL OS 自蒸馏体系的核心子集。
- [[对象分层与控制平面]] —— "canonical center 唯一真相源"是分层与控制平面思想在 agent 行为层的应用。
- [[spec_driven论文写作工作流]] —— spec-driven 写作与 preflight-contract 任务契约同源。
