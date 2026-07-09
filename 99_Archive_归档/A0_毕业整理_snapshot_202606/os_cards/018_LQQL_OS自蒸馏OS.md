# LQQL_OS 自蒸馏 OS

## 来源文件/目录
- `/mnt/k/2_work/LQQL_OS/` (9.2 GB 全仓, 主体 110 MB 知识库 + 5 GB venv + 163 MB git)
- 顶层目录组织 (10 个分区):
  - `lqql_00_系统说明/` — 原则 + 命名 + 模板中心
  - `lqql_01_灵感或待办/` — 收件箱 + 日记 + 剪藏
  - `lqql_02_战略与规划/` — 北极星 + 5/10 年 + 年度重点 + 反目标
  - `lqql_03_家庭与人脉/` — 关系网络
  - `lqql_04_生活与娱乐/` — 生活运营
  - `lqql_05_知识与技能/` — 12 个主题 (元知识/职业AI/金融/沟通/认知/审美/数字基建/智能体开发/工科/文学/讲座/模板)
  - `lqql_06_工作与项目/` — 5 个真实执行单元 (自动研究引擎 / 论文流水线 / GPTPro / 人生智慧迁移 / 博士毕业流程)
  - `lqql_07_给智能体用/` — agent 协作规则 9 份
  - `lqql_99_归档/` — 冷存储
- 配置层: `.agents/skills/` (18 canonical skills) + `.claude/` + `.codex/` + `.codex-feishu/` + `.obsidian/`
- 根入口: `AGENTS.md` + `CLAUDE.md` + `README.md` + `INDEX.md` + `TREE.txt` + `.gitmodules` + `skills-lock.json`

## 核心价值
LQQL_OS 是博士 5 年沉淀的"自蒸馏 OS" — Obsidian Life OS + Agent Skills + Spec-Driven 论文流水线三位一体的个人知识管理系统。它把"对象分层 + 编号"的目录组织、canonical skill 注册表、agent 协作规则、自动研究引擎、论文流水线全部融合, 是博士毕业到博后过渡期的"控制平面 (control plane)"。**核心原则**: 先分对象再分主题 / raw 不改写 / 项目 repo 是 data plane / OS 是 control plane / fix 机制保护高风险目录 / 任务后学习闭环 (`@post-task-learn`)。

## 可复用知识
- "对象分层 + 编号" 目录组织 (00_系统 / 01_待办 / 02_战略 / 05_知识 / 06_项目 / 07_agent)
- raw / compiled / schema / skill / dashboard 五层处理流水线
- 渐进式读取协议 (README → INDEX → 必要文件 → LOG)
- fix 机制 + write_policy:readonly + scope:subtree 高风险保护
- canonical skill 注册表与最小完整包 (SKILL.md + examples/prompts.md)
- 任务后学习闭环 (`@post-task-learn`)
- Autoresearch-with-human 论文实例化模板
- spec-driven 论文写作 (.specify/ + goal/codex_goal_*)

## 后续使用场景
- 博后期间继续维护 — LQQL OS 是终身知识库主版本
- 写书 / 出教程 — OS 结构作为知识体系骨架
- 创业 / 个人 IP — 自蒸馏 OS 作为方法论卖点
- 指导学生 — 模板中心 + 智能体协作规则作为入门素材
- 跨平台迁移 — 上传夸克 + 同步到 Obsidian Cloud + GitHub backup

## 建议标签
#博士毕业 #自蒸馏OS #Obsidian #LifeOS #知识管理 #Agent #Skills #LQQL #清华 #博后

## 建议链接
- 对应夸克路径: `博士毕业数据总仓库_202606/06_知识系统与自蒸馏OS/LQQL_OS_全仓/` (全量)
- 对应夸克路径: `博士毕业数据总仓库_202606/06_知识系统与自蒸馏OS/LQQL_OS_core/` (核心 ~110 MB)
- 对应本地路径: `/mnt/k/2_work/LQQL_OS/`
- 关联卡片: os_cards/019_canonical_skills库.md, os_cards/020_个人主页与CV.md
