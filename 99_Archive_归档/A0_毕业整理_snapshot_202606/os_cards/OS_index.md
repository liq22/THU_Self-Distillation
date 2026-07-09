# OS_index 总索引 (Phase 4 综合产物)

> 本文件是 Phase 4 把 Phase 3 各域 (01_thesis / 02_papers / 03_code / 04_data / 05_personal / 06_os / 07_media) 生成的 13 张 OS 主题卡片合并的总索引, 是把博士毕业全部"可复用知识资产"导入夸克网盘 + Obsidian 终身知识库的导航入口。
>
> 与本文件配套的导入清单见: [[OS_import_tasks]]。
> 上游源数据见: `/mnt/t/A0_毕业整理_v2/08_自蒸馏OS导入计划.md` (Phase 3 域 06 写的雏形) + `/mnt/t/A0_毕业整理/04_os_distill_plan.md` (v1 计划)。

---

## 0. OS 卡片完整性核查 (7-section 标准)

OS 卡片 7 个必备 section: 1. 来源文件/目录 2. 核心价值 3. 可复用知识 4. 后续使用场景 5. 建议标签 6. 建议链接 (第 7 项"建议夸克路径"已并入"建议链接")。

| 卡片编号 | 卡片文件 | 来源 | 核心价值 | 可复用知识 | 后续场景 | 标签 | 链接 | 完整性 |
|---|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| 005 | 005_博士后进站.md | 是 | 是 | 是 (S/A 级表) | 是 | 是 | 是 | **完整 (含详细子目录展开)** |
| 007 | 007_答辩录像与学术咨询录音.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |
| 008 | 008_可复现环境与CondaEnvs导出.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |
| 010 | 010_博士论文LaTeX源码与编译闭环.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |
| 011 | 011_答辩闭环材料清单.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |
| 012 | 012_已发表与在投论文闭环.md | 是 | 是 | 是 (含 5 步法) | 是 | 是 | 是 | **完整 (含详细论文清单)** |
| 013 | 013_博士论文闭环.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 (但**短**, 待扩展) |
| 014 | 014_已发表与在投论文.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 (但**短**, 与 012 重叠) |
| 015 | 015_ViBench论文项目复盘.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |
| 016 | 016_PHM-Vibench数据集与论文仓库.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |
| 017 | 017_神经符号PHM综述_在投.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |
| 018 | 018_LQQL_OS自蒸馏OS.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |
| 019 | 019_canonical_skills库.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |
| 020 | 020_个人主页与CV.md | 是 | 是 | 是 | 是 | 是 | 是 | 完整 |

**核查结论**: 全部 13 张卡片结构完整。**两张偏薄**: 013_博士论文闭环 (仅 36 行) 与 014_已发表与在投论文 (重叠于 012_已发表与在投论文闭环 84 行)。建议保留 013/014 作为"短链接"在 OS_index 中, 详细内容指向 010/011/012 三张。**待补**: 见 §5 待补清单。

---

## 1. OS 主题总览 (按重要度排序)

排序规则: 学位闭环 > 神经符号主线 > PHM-ViBench benchmark > 已发表论文 > 自蒸馏 OS / Canonical Skills > 答辩录音 > 个人主页 > 可复现环境 > 博后规划。

| 排序 | 主题 | 来源域 | 卡片文件 | 状态 | 关联夸克路径 | 关联本地路径 |
|---:|---|---|---|---|---|---|
| 1 | **博士论文闭环** (核心定稿 + LaTeX + 审稿打磨) | 01_thesis + 06_os | `013_博士论文闭环.md` + `010_博士论文LaTeX源码与编译闭环.md` | 已写 (010 详) | `01_毕业论文与学位材料/博士论文定稿/` + `02_LaTeX源码/` | `/mnt/d/paper/thesis/` |
| 2 | **答辩闭环材料** (申请书 + 评审 + 答辩后修改 + 优秀毕业生) | 01_thesis + 05_personal | `011_答辩闭环材料清单.md` | 已写 (详) | `06_答辩PPT/` + `07_答辩申请/` + `09_优秀毕业生/` | `/mnt/k/申请答辩/` + `/mnt/k/5_other/Download/a_feishu/` |
| 3 | **神经符号 PHM 综述** (在投主线, 高水平期刊) | 02_papers + 06_os | `017_神经符号PHM综述_在投.md` | 已写 | `06_知识系统与自蒸馏OS/论文流水线/P03_nesy_phm_review/` | `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/P03_nesy_phm_review/` |
| 4 | **PHM-Vibench 数据集与论文仓库** (89 GB + R00-phmfactory 6.4 GB) | 02_papers + 04_data + 03_code | `016_PHM-Vibench数据集与论文仓库.md` + `015_ViBench论文项目复盘.md` | 已写 (015/016 双卡) | `03_实验数据与结果/vibench/` (数据) + `06_知识系统与自蒸馏OS/论文流水线/R00-phmfactory/` (代码) | `/mnt/k/D01_vibench/` + `LQQL_OS/.../R00-phmfactory/` |
| 5 | **已发表与在投论文** (5 已发 + 14 在投 + Zotero 285 MB) | 02_papers + 03_code | `014_已发表与在投论文.md` + `012_已发表与在投论文闭环.md` | 已写 (012 详) | `01_毕业论文与学位材料/发表小论文/` + `06_知识系统与自蒸馏OS/论文流水线/` | `/mnt/d/paper/thesis/LQ/` + `/mnt/k/2_work/win_download/` |
| 6 | **LQQL_OS 自蒸馏 OS** (9.2 GB, Obsidian Life OS) | 06_os | `018_LQQL_OS自蒸馏OS.md` | 已写 (详) | `06_知识系统与自蒸馏OS/LQQL_OS_全仓/` + `LQQL_OS_core/` | `/mnt/k/2_work/LQQL_OS/` |
| 7 | **canonical skills 库** (18 个 skill, agent 行为真相源) | 06_os | `019_canonical_skills库.md` | 已写 (详) | `06_知识系统与自蒸馏OS/canonical_skills/` | `/mnt/k/2_work/LQQL_OS/.agents/skills/` |
| 8 | **答辩录像与学术咨询录音** (PPT.MOV 2.12 GB + 19 个 SRT) | 07_media | `007_答辩录像与学术咨询录音.md` | 已写 | `01_毕业论文与学位材料/答辩录像/` + `05_学术咨询录音/` | `/mnt/k/3.18/` + `/mnt/k/5_other/Download/a_feishu/` |
| 9 | **可复现环境与 Conda Envs 导出** (13 个 envs + dotfiles) | 03_code (跨域) | `008_可复现环境与CondaEnvs导出.md` | 已写 (详) | `_envs/conda_envs_exported/` | `/home/richie_thu/miniconda3/envs/` + dotfiles |
| 10 | **个人主页与 CV** (jemdoc + CV v2.4 + 简历 2025) | 05_personal + 06_os | `020_个人主页与CV.md` | 已写 | `06_知识系统与自蒸馏OS/个人主页/` + `05_个人行政与证明/CV/` | `/home/richie_thu/Richie1/homepage/` + `/mnt/d/paper/thesis/LQ/李奇_简历2025_10_21.pdf` |
| 11 | **博士后进站与个人行政证明** (启航奖 + 优秀毕业生 + IEEE + 学位闭环) | 05_personal | `005_博士后进站.md` | 已写 (详) | `05_个人行政与证明/{博后进站,启航奖,优秀毕业生,会员证书}/` | `/mnt/k/博士后/` + `/mnt/k/2_work/win_download/` + `/mnt/k/申请答辩/` |

---

## 2. 主线分组 (按夸克目标桶)

### A. 学位闭环组 (夸克 `01_毕业论文与学位材料/`)

| 卡片 | 描述 | 关键源文件 | 关键夸克路径 |
|---|---|---|---|
| 013 + 010 | 博士论文定稿 PDF + LaTeX 源 + 审稿打磨 | `/mnt/d/paper/thesis/定稿/D-机械系博士学位论文-李奇.pdf` + `data/chap0{1-7}.tex` + `_reviewer_pro/` | `01_毕业论文与学位材料/博士论文定稿/` + `02_LaTeX源码/` |
| 011 | 答辩申请书 + 评审结果 + 答辩后修改说明签字版 | `/mnt/k/2_work/win_download/答辩后学位论文修改说明_签字版.docx` + `/mnt/k/申请答辩/博士论文答辩申请书.docx` | `07_答辩申请/` + `08_答辩后修改/` |
| 007 | 答辩录像 (PPT.MOV + voice.mp4 + 19 SRT) | `/mnt/k/3.18/PPT.MOV` (2.12 GB) + `/mnt/k/3.18/voice.mp4` (1.21 GB) | `01_毕业论文与学位材料/答辩录像/` + `05_学术咨询录音/` |
| 012 + 014 | 5 已发 + 14 在投论文 PDF + LaTeX 源 + Zotero | `/mnt/d/paper/thesis/LQ/小论文正式版/` + `小论文tex版/` + `/mnt/c/Users/Administrator/Zotero/zotero.sqlite` | `01_毕业论文与学位材料/发表小论文/` + `发表小论文源码/` |

### B. 科研项目与数据组 (夸克 `02_科研项目与代码/` + `03_实验数据与结果/`)

| 卡片 | 描述 | 关键源文件 | 关键夸克路径 |
|---|---|---|---|
| 015 + 016 | PHM-Vibench 数据集 (89 GB HDF5) + R00-phmfactory 仓库 (6.4 GB) + .claude/Doc 复盘 | `/mnt/k/D01_vibench/` + `LQQL_OS/.../R00-phmfactory/{src,dev,data}` + `/mnt/d/paper/paper_25_9_vibench/.claude/Doc/` | `03_实验数据与结果/vibench/` + `06_知识系统与自蒸馏OS/论文流水线/R00-phmfactory/` + `06_知识系统与自蒸馏OS/ViBench_论文复盘文档/` |
| 017 | 神经符号 PHM 综述 (P03_nesy_phm_review 328 MB) | `LQQL_OS/.../P03_nesy_phm_review/{paper,ref,specs,goal}` | `06_知识系统与自蒸馏OS/论文流水线/P03_nesy_phm_review/` |
| 008 | 可复现环境 (13 conda envs + dotfiles 导出 ~5 MB) | `/home/richie_thu/miniconda3/envs/` + `.{bashrc,zshrc,profile,condarc,gitconfig,tmux.conf}` | `_envs/conda_envs_exported/` |

### C. 自蒸馏 OS / 知识管理组 (夸克 `06_知识系统与自蒸馏OS/`)

| 卡片 | 描述 | 关键源文件 | 关键夸克路径 |
|---|---|---|---|
| 018 | LQQL_OS 全仓 (9.2 GB) + core 子集 (~110 MB) | `/mnt/k/2_work/LQQL_OS/` | `06_知识系统与自蒸馏OS/LQQL_OS_{全仓,core}/` |
| 019 | canonical skills (18 个 skill, 2.5 MB) + 全局 skills (53 个 Codex skill, ~20 MB) | `/mnt/k/2_work/LQQL_OS/.agents/skills/` + `/mnt/c/Users/Administrator/.agents/skills/` | `06_知识系统与自蒸馏OS/canonical_skills/` + `全局skills库/` |
| (引用) | project_report (124 KB) — WSL 主目录自动盘点 | `/home/richie_thu/project_report/` | `06_知识系统与自蒸馏OS/project_report/` |
| (引用) | thesis 仓库 agent 配置 (AGENTS.md + CLAUDE.md) | `/mnt/d/paper/thesis/AGENTS.md` + `CLAUDE.md` | `06_知识系统与自蒸馏OS/thesis_仓库_agent配置/` |

### D. 个人行政与身份组 (夸克 `05_个人行政与证明/`)

| 卡片 | 描述 | 关键源文件 | 关键夸克路径 |
|---|---|---|---|
| 005 | 博后进站 24 文件 + 启航奖 + 优秀毕业生 + IEEE 证书 | `/mnt/k/博士后/进站材料/` + `/mnt/k/2_work/win_download/` + `/mnt/k/申请答辩/优秀毕业生申请_李奇6.pptx` | `05_个人行政与证明/{博后进站,启航奖,优秀毕业生,会员证书}/` |
| 020 | 个人主页 + CV (中英) + 方法图 | `/home/richie_thu/Richie1/homepage/` + `/mnt/d/paper/thesis/LQ/李奇_简历2025_10_21.pdf` | `06_知识系统与自蒸馏OS/个人主页/` + `05_个人行政与证明/CV/` |

---

## 3. 优先级 (上传顺序建议)

| 优先级 | 主题 | 卡片 | 处理方式 |
|---|---|---|---|
| **P0** | 博士论文定稿 + 答辩闭环 + 录像 + 已发表论文 + 个人主页 + 博后进站 | 013/010/011/007/012/014/020/005 | 学位闭环必交 + 学位证书下发前不可丢失, **首批上传** |
| **P0** | LQQL_OS core (110 MB) + canonical skills + project_report + thesis AGENTS/CLAUDE | 018/019 | 终身知识库主版本, 体积小但不可再生 |
| **P1** | PHM-Vibench 仓库 (R00-phmfactory src/dev, 排除 .env) + ViBench 论文复盘 .claude/Doc | 015/016 | 博后研究延续基础 |
| **P1** | 神经符号 PHM 综述 + 论文流水线其他项目 (P01/P02) | 017 | 在投主线 |
| **P1** | 可复现环境 conda envs 导出 + dotfiles + Miniconda 离线安装器 | 008 | 论文复现 + 新机器 30 分钟重建 |
| **P2** | Codex/Claude 全局配置脱敏版 + ChatGPT prompts + Claude plans 精选 | (引用) | 工作流快照 |
| **P2** | 家庭与人脉 (加密 zip) | (引用 018) | 个人关系网络 |
| **P3** | LQQL_OS 全仓 zip (9.2 GB, 含 .git 历史) | 018 | git 历史可回溯 (体积大, 可后置) |
| **P3** | ViBench 数据集 89 GB | 016 | 体积大, 仅上传 metadata + 文档, HDF5 整体由夸克冷存储处理 |

---

## 4. 卡片交叉引用图

```
013_博士论文闭环 ──┬──> 010_博士论文LaTeX源码与编译闭环
                  ├──> 011_答辩闭环材料清单
                  ├──> 007_答辩录像与学术咨询录音
                  └──> 012_已发表与在投论文闭环 (4 章是小论文扩展)

014_已发表与在投论文 ──> 012_已发表与在投论文闭环 (详细版)
                      └──> 015_ViBench论文项目复盘

015_ViBench论文项目复盘 ──> 016_PHM-Vibench数据集与论文仓库

016_PHM-Vibench ──> 017_神经符号PHM综述 (论文流水线邻接)

017_神经符号PHM综述 ──> 018_LQQL_OS自蒸馏OS (spec-driven 工作流来源)
                    └──> 019_canonical_skills库

018_LQQL_OS ──> 019_canonical_skills库 (skills 是 .agents/skills)
             └──> 020_个人主页与CV (学术身份延伸)

005_博士后进站 ──> 011_答辩闭环材料清单 (优秀毕业生联动)
                └──> 020_个人主页与CV (简历联动)

008_可复现环境 ──> 010_博士论文LaTeX源码与编译闭环 (复现依赖)
                └──> 015/016 ViBench 项目 (代码运行依赖)
```

---

## 5. 待补 / 待修订清单

| 编号 | 待补内容 | 紧迫度 | 建议处理 |
|---|---|:---:|---|
| 013_博士论文闭环 | 内容仅 36 行, 偏薄; 缺: 主 PDF 文件大小/页数, 章节级 mapping 到小论文 (chap03↔TON, chap04↔DEN, chap05↔TIFN, chap06↔Agent, chap07↔综述), _reviewer_pro/v1-v5 文件清单, defense_opinion_response.md 与 final_revision_changelog.md 的内容摘要 | 中 | 与 010/011/012 合并为一张主卡, 或保留 013 作为短链接, 详内容指向 010/011/012 |
| 014_已发表与在投论文 | 内容仅 41 行, 与 012 高度重叠; 缺: 14 篇在审/校样论文的逐一文件清单 + OneDrive ADIG/ADAG/KMADA 早期代表作定位 + Zotero sqlite 详细导出方法 | 中 | 与 012 合并, 或保留 014 作为"在投综述起点"链接到 017 |
| 006_博士论文闭环 | v1 报告与 007 引用的 `006_博士论文闭环.md` 编号在本批未生成 (本批以 013 代替); 命名一致性 | 低 | 重命名为 006_博士论文闭环 与 007/008 序号连续, 或维持 013 但补 README 说明 |
| 009_* | 编号 009 缺失 (本批跳过 006 与 009, 直接 005/007/008/010/011/012/013-020) | 低 | 可作为"扩展卡片"占位 (如: 009_学位证书申请闭环 / 006_博士论文闭环) |
| (新) | 缺: PHD papers.xmind (5 篇论文思维导图) 单独卡片 — 在 012 提及但未独立成卡 | 中 | 新建 021_PHD论文全景图.md |
| (新) | 缺: OneDrive 早期代表作 (ADIG/ADAG/KMADA) 单独卡片 — 在 012 提及但未独立 | 中 | 新建 022_早期代表作_ADIG_ADAG_KMADA.md |
| (新) | 缺: Zotero 文献库 (2977+ 条) 导入方案卡片 — 在 012 提及但未独立 | 中 | 新建 023_Zotero文献库迁移.md |
| (新) | 缺: thesis 仓库 agent 配置 (AGENTS.md + CLAUDE.md) 详解卡片 — 在 018 提及但未独立 | 低 | 新建 024_thesis仓库agent配置.md (可与 010 合并) |

---

## 6. 与 v1 (04_os_distill_plan.md) 对比

| v1 条目 | Phase 4 对应卡片 | 状态 |
|---|---|---|
| 博士论文定稿 PDF | 013 | 已覆盖 |
| 主 PDF + LaTeX 源 | 010 + 013 | 已覆盖 (010 更详细) |
| 4 篇小论文 + LaTeX 源 | 012 + 014 | 已覆盖 (012 更详细) |
| 答辩 PPT V5 | 011 | 已覆盖 |
| 优秀毕业生 PPT | 011 + 005 | 已覆盖 |
| 简历 + IEEE 证书 + 省优秀论文 | 005 + 020 | 已覆盖 |
| 发表论文统计表 | 005 | 已覆盖 |
| LQQL_OS 核心配置 | 018 + 019 | **超过 v1** (v1 仅列配置, Phase 4 含全仓 9.2 GB 分级方案) |
| ViBench 论文 Doc | 015 | **超过 v1** (含 11 份 .claude/Doc 详细清单) |
| project_report | (引用) | 已覆盖 |
| Gemini tracked tex (3 个项目 tex) | 未单独成卡 | **未覆盖** — 建议补 024 |
| nsnet notebook | 未单独成卡 | 部分 (在 016 提及) |
| PHD papers.xmind | 未单独成卡 (012 提及) | **未覆盖** — 建议补 021 |

---

## 7. 备注与限制

1. **13 张卡片全部 6-section 完整** (来源/核心价值/可复用知识/后续场景/标签/链接), 无结构性缺失。
2. **2 张偏薄** (013 仅 36 行, 014 仅 41 行), 已在 §5 列入待补; 但内容自洽, 不阻塞上传。
3. **跨域引用强**: 博士论文闭环 (013) 同时拉取 010 (LaTeX) + 011 (答辩) + 007 (录像) + 012 (小论文), 形成"学位闭环"知识网; ViBench 主线 (015+016) 同时拉取 04_data (89 GB) + 03_code (R00-phmfactory) + 06_os (.claude/Doc 复盘)。
4. **本索引不含: 敏感文件清单** (见 `manifests/sensitive_manifest.csv`), 不含: 重复文件分组 (见 `_intermediate/dedup_groups.tsv` + `dedup_summary.txt`), 不含: 删除候选 (见 `06_delete_candidates.md`)。
5. **优先级判断锚点**: 学位闭环 > 神经符号主线 > PHM-ViBench benchmark > 已发表论文 > 自蒸馏 OS > 答辩录音 > 个人主页 > 可复现环境 > 博后规划。理由: 不可再生性 + 学位证书颁发前的依赖关系。
