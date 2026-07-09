# OS_import_tasks 导入任务清单 (Phase 4 综合产物)

> 本清单是 Phase 4 把博士毕业全部"可复用知识资产"导入夸克网盘 + Obsidian 终身知识库的具体任务清单。每条任务含: 任务编号 / 内容 / 源路径 / 目标夸克路径 / 优先级 / 关联卡片 / 体积 / 保留理由。
>
> 上游来源: `/mnt/t/A0_毕业整理_v2/08_自蒸馏OS导入计划.md` (域 06 雏形 §7 表) + 各 OS 卡片 (`os_cards/005~020.md`) + v1 `/mnt/t/A0_毕业整理/04_os_distill_plan.md`。
>
> 本清单共 **42 条任务** (P0=15, P1=15, P2=8, P3=4)。所有"复制"操作均建议先生成 dry-run (`scripts/copy_p0_dryrun.sh`), 经人工核对后再执行 (`scripts/copy_p0_execute.sh`)。
>
> 规则: 不自动删除/不自动上传/不读取敏感文件字节。涉及敏感的 .env / .sandbox-secrets / auth.json / SSH 私钥必须先脱敏再上传。

---

## 0. 任务命名约定

- 任务 ID: T001-T042 (按优先级 P0→P1→P2→P3 排序, 同优先级内按上传顺序)。
- 关联卡片: 引用 OS_index.md 中的卡片编号。
- 关联夸克路径: 以 `博士毕业数据总仓库_202606/` 为根。
- 优先级:
  - **P0**: 学位闭环必交 / 终身不可再生 / 主上传 (首批)
  - **P1**: 科研项目延续 / 论文流水线主版本 (次批)
  - **P2**: 工作流快照 / 备选补充
  - **P3**: 体积大可后置 / 加密 / 历史归档

---

## A. P0 任务 (15 条, 首批上传)

### 学位闭环组 (P0-1 ~ P0-7)

- [ ] **T001**: 导入[博士论文最终版定稿 PDF] 到 OS: `01_毕业论文与学位材料/博士论文定稿/`
  - 来源: `/mnt/d/paper/thesis/定稿/D-机械系博士学位论文-李奇.pdf`
  - 目标: 夸克 `01_毕业论文与学位材料/博士论文定稿/D-机械系博士学位论文-李奇.pdf`
  - 优先级: **P0**
  - 关联卡片: [[013_博士论文]] + [[010_博士论文LaTeX]]
  - 体积: 定稿目录共 4 个 PDF (D-机械系博士学位论文-李奇.pdf 主版, 定稿v1/v2.pdf 历史版, 提取自LQ_<学号_redacted>_thesis.pdf 备份)
  - 保留理由: 学位闭环最终凭证 + 不可再生 + 唯一版本

- [ ] **T002**: 导入[博士论文主 PDF (94 MB, 最新编译版)] 到 OS: `01_毕业论文与学位材料/博士论文主PDF/`
  - 来源: `/mnt/d/paper/thesis/LQ_<学号_redacted>_thesis.pdf`
  - 目标: 夸克 `01_毕业论文与学位材料/博士论文主PDF/LQ_<学号_redacted>_thesis.pdf`
  - 优先级: **P0**
  - 关联卡片: [[013_博士论文]]
  - 体积: 94 MB
  - 保留理由: LaTeX 最新编译版, 与定稿 PDF 形成"可编译 vs 最终"双件

- [ ] **T003**: 导入[博士论文 LaTeX 源码 + 编译脚本] 到 OS: `01_毕业论文与学位材料/02_LaTeX源码/`
  - 来源: `/mnt/d/paper/thesis/{LQ_<学号_redacted>_thesis.tex, thusetup.tex, abstract.tex, data/chap0{1-7}.tex, ref/refs.bib, thuthesis.cls, script/compile.sh}` (排除 _build/, *.aux, *.log 等编译中间)
  - 目标: 夸克 `01_毕业论文与学位材料/02_LaTeX源码/`
  - 优先级: **P0**
  - 关联卡片: [[010_博士论文LaTeX]]
  - 体积: ~5 MB (排除编译中间)
  - 保留理由: 可重新编译出 PDF / 模板类文件 thuthesis.cls + thusetup.tex 不可重建

- [ ] **T004**: 导入[博士论文审稿打磨档案 v1-v5 + 答辩回复 + 修改日志] 到 OS: `01_毕业论文与学位材料/审稿修改/`
  - 来源: `/mnt/d/paper/thesis/_reviewer_pro/` (v1-v5 审稿意见修改) + `defense_opinion_response.md` + `final_revision_changelog.md`
  - 目标: 夸克 `01_毕业论文与学位材料/审稿修改/`
  - 优先级: **P0**
  - 关联卡片: [[013_博士论文]] + [[010_博士论文LaTeX]]
  - 体积: ~3 MB
  - 保留理由: 论文打磨过程档案, 不可再生, 是指导师弟妹的核心方法论

- [ ] **T005**: 导入[答辩闭环 6 类必备材料] 到 OS: `01_毕业论文与学位材料/07_答辩申请/`
  - 来源: `/mnt/k/申请答辩/博士论文答辩申请书.docx` + `/mnt/k/2_work/win_download/答辩后学位论文修改说明_签字版.docx` + `/mnt/k/2_work/win_download/论文reviewer包/` (评阅答复签字版) + `/mnt/k/5_other/Download/a_feishu/` (答辩后材料签字扫描)
  - 目标: 夸克 `01_毕业论文与学位材料/07_答辩申请/` + `08_答辩后修改/`
  - 优先级: **P0**
  - 关联卡片: [[011_答辩闭环材料清单]]
  - 体积: ~10 MB
  - 保留理由: 6 类必备材料缺一不可授予学位, 学位证书下发前不可丢失

- [ ] **T006**: 导入[答辩 PPT V5 + V6 主线 + 优秀毕业生申请 PPT] 到 OS: `01_毕业论文与学位材料/06_答辩PPT/`
  - 来源: `/mnt/k/申请答辩/毕业答辩V5.pptx` (57 MB, 最终) + `优秀毕业生申请_李奇6.pptx` (26.7 MB) + `/mnt/c/.../Network Shortcuts/毕业答辩V6.pptx` (C 盘 Network Shortcuts 路径)
  - 目标: 夸克 `01_毕业论文与学位材料/06_答辩PPT/` + `09_优秀毕业生/`
  - 优先级: **P0**
  - 关联卡片: [[011_答辩闭环材料清单]] + [[005_博士后进站]]
  - 体积: ~85 MB (仅 V5 + V6 + 优秀毕业生 V6, 排除 V2-V4 历史版本 259 MB)
  - 保留理由: 答辩 PPT 最新版 + 优秀毕业生最终申报; V2-V4 为可忽略版本

- [ ] **T007**: 导入[答辩录像 + 学术咨询录音 + SRT 字幕] 到 OS: `01_毕业论文与学位材料/答辩录像/`
  - 来源: `/mnt/k/3.18/PPT.MOV` (2.12 GB) + `/mnt/k/3.18/voice.mp4` (1.21 GB) + `/mnt/k/5_other/Download/a_feishu/*.srt` (19 个) + `/mnt/k/5_other/Download/a_feishu/江小娟.m4a` (171 MB)
  - 目标: 夸克 `01_毕业论文与学位材料/答辩录像/` (MOV+mp4) + `05_学术咨询录音/` (m4a+srt)
  - 优先级: **P0**
  - 关联卡片: [[007_答辩录像]]
  - 体积: 3.5 GB (视频) + 1 MB (SRT)
  - 保留理由: 答辩现场第一手证据 + 19 个 SRT 把不可检索音频转全文检索, 不可再生

### 已发表论文组 (P0-8 ~ P0-9)

- [ ] **T008**: 导入[4 篇已发表小论文正式版 PDF + txt] 到 OS: `01_毕业论文与学位材料/发表小论文/`
  - 来源: `/mnt/d/paper/thesis/LQ/小论文正式版/` (DEN + TON + TIFN + Agent, 4 PDF + 4 txt, 29 MB)
  - 目标: 夸克 `01_毕业论文与学位材料/发表小论文/`
  - 优先级: **P0**
  - 关联卡片: [[012_已发表与在投论文闭环]] + [[014_已发表与在投论文]]
  - 体积: 29 MB
  - 保留理由: 4 篇代表作是简历硬通货; txt 全文 OCR 用于 OS 全文检索

- [ ] **T009**: 导入[4 篇小论文 LaTeX 源码 + figs + bib] 到 OS: `01_毕业论文与学位材料/发表小论文源码/`
  - 来源: `/mnt/d/paper/thesis/LQ/小论文tex版/` (~80 MB)
  - 目标: 夸克 `01_毕业论文与学位材料/发表小论文源码/`
  - 优先级: **P0**
  - 关联卡片: [[012_已发表与在投论文闭环]]
  - 体积: 80 MB
  - 保留理由: 复用做 TII Extended / IEEE Trans 扩展期刊版; 含完整 figs 子目录

### 个人身份与博后组 (P0-10 ~ P0-12)

- [ ] **T010**: 导入[个人主页 + CV (中英) + 方法图] 到 OS: `06_知识系统与自蒸馏OS/个人主页/`
  - 来源: `/home/richie_thu/Richie1/homepage/` (10 MB, 含 index.html + CV_Qi_Li_v2.4.pdf + jemdoc.css + pic/ + Richie_Li.github.io-main/, 排除 .git 历史) + `/mnt/d/paper/thesis/LQ/李奇_简历2025_10_21.pdf` (中文简历最新)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/个人主页/` + `05_个人行政与证明/CV/李奇_简历2025_10_21.pdf`
  - 优先级: **P0**
  - 关联卡片: [[020_个人主页与CV]]
  - 体积: 10 MB + 465 KB (简历)
  - 保留理由: 学术身份资产 + 4 个方法图 (ADIG/AMDA/EGAN/KMADA) 可复用做新论文

- [ ] **T011**: 导入[博后进站材料整目录 + 进站 zip 快照] 到 OS: `05_个人行政与证明/博后进站/`
  - 来源: `/mnt/k/博士后/进站材料/` (24 文件, 排除 5 个 `~$*.doc*` 临时锁) + `/mnt/k/博士后/进站材料.zip` (6.67 MB 历史快照)
  - 目标: 夸克 `05_个人行政与证明/博后进站/` (整目录) + `进站材料_20260303.zip` (历史快照)
  - 优先级: **P0**
  - 关联卡片: [[005_博士后进站]]
  - 体积: 7.97 MB + 6.67 MB zip
  - 保留理由: 学位闭环必交 (进站审核表/科研协议/全面鉴定意见/住房调查表均 2026-06-08 最新); zip 是 2026-03-03 历史快照

- [ ] **T012**: 导入[启航奖 + 优秀毕业生 + 学术新秀 + IEEE 证书] 到 OS: `05_个人行政与证明/{启航奖,优秀毕业生,会员证书}/`
  - 来源: `/mnt/k/2_work/win_download/清华大学毕业生启航奖申报表_李奇_已填.docx` + `启航奖汇总表.xlsx` + `清华优秀毕业生申报材料_李奇_填写稿.zip` + `优秀毕业生申报表_已填写.docx` + `信息简表_机械系_已填写.xlsx` + `优秀毕业生支撑材料.docx` + `/mnt/k/5_other/Download/a_feishu/<学号_redacted>_李奇_学术新秀.pptx` (85 MB) + `/mnt/d/drive/OneDrive.../7IEEEmenber/liqi_IEEE会员证书.PDF` (2.92 MB)
  - 目标: 夸克 `05_个人行政与证明/{启航奖,优秀毕业生,学术新秀,会员证书}/`
  - 优先级: **P0**
  - 关联卡片: [[005_博士后进站]] + [[011_答辩闭环材料清单]]
  - 体积: ~115 MB (学术新秀 PPT 占大头)
  - 保留理由: 公开证明 + 唯一版本 + 学位/求职背书

### 自蒸馏 OS 核心组 (P0-13 ~ P0-15)

- [ ] **T013**: 导入[LQQL_OS core (仅知识库, 排除 .env / .git/objects/pack 大对象)] 到 OS: `06_知识系统与自蒸馏OS/LQQL_OS_core/`
  - 来源: `/mnt/k/2_work/LQQL_OS/` (排除 `.env/`, `.git/objects/pack/`, `*.local.json`, `.codex/.env`)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/LQQL_OS_core/` (主版本)
  - 优先级: **P0**
  - 关联卡片: [[018_LQQL_OS自蒸馏OS]]
  - 体积: ~110 MB (仅 Markdown + Obsidian 配置 + skills 源码)
  - 保留理由: 终身知识库主版本 + Obsidian 全文检索 + 不可再生 (博士 5 年沉淀)

- [ ] **T014**: 导入[canonical skills 库 (18 个 skill + INDEX.md)] 到 OS: `06_知识系统与自蒸馏OS/canonical_skills/`
  - 来源: `/mnt/k/2_work/LQQL_OS/.agents/skills/` (18 个 skill + INDEX.md 16 KB) + `/mnt/k/2_work/LQQL_OS/lqql_05_知识与技能/09_智能体开发/` (52 KB 方法论 + 工作流)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/canonical_skills/` + `智能体方法论/`
  - 优先级: **P0**
  - 关联卡片: [[019_canonical_skills库]]
  - 体积: 2.5 MB + 52 KB
  - 保留理由: agent 行为真相源 + 跨平台同步便携包 + 不可再生

- [ ] **T015**: 导入[LQQL_OS 根入口 5 件套 + 战略规划 + 系统说明 + agent 协作规则] 到 OS: `06_知识系统与自蒸馏OS/LQQL_OS_根入口/`
  - 来源: `/mnt/k/2_work/LQQL_OS/{AGENTS.md, CLAUDE.md, README.md, INDEX.md, TREE.txt}` + `lqql_02_战略与规划/` + `lqql_00_系统说明/` + `lqql_07_给智能体用/` + `lqql_06_工作与项目/07_博士毕业流程/`
  - 目标: 夸克 `06_知识系统与自蒸馏OS/{LQQL_OS_根入口,战略与规划,lqql_00_系统说明,lqql_07_给智能体用,博士毕业流程复盘}/`
  - 优先级: **P0**
  - 关联卡片: [[018_LQQL_OS自蒸馏OS]]
  - 体积: ~50 KB + 12 KB + 17 KB + 11 KB + 36 KB
  - 保留理由: LQQL OS 仓库入口导航 + 北极星 + 人生战略层 + agent 协作规则

---

## B. P1 任务 (15 条, 次批上传)

### 论文流水线项目组 (P1-1 ~ P1-5)

- [ ] **T016**: 导入[R00-phmfactory 项目源码 + 实验笔记本 + 数据集文献] 到 OS: `06_知识系统与自蒸馏OS/论文流水线/R00-phmfactory/`
  - 来源: `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/R00-phmfactory/{src,dev,data/Reference,data/metadata.xlsx,configs}` (排除 `.env/` 5 GB Python venv)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/论文流水线/R00-phmfactory/{src,dev,Reference,configs}/`
  - 优先级: **P1**
  - 关联卡片: [[016_PHM-Vibench数据集与论文仓库]]
  - 体积: ~1 GB (排除 .env 后)
  - 保留理由: PHM-Vibench 论文复刻仓库 + 27 篇数据集文献上位主版本

- [ ] **T017**: 导入[ViBench 论文 .claude/Doc 复盘 11 份文档] 到 OS: `06_知识系统与自蒸馏OS/ViBench_论文复盘文档/`
  - 来源: `/mnt/d/paper/paper_25_9_vibench/.claude/Doc/UPHMP_C/` (11 份 markdown, 91 KB)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/ViBench_论文复盘文档/`
  - 优先级: **P1**
  - 关联卡片: [[015_ViBench论文项目复盘]]
  - 体积: 91 KB
  - 保留理由: 论文打磨过程档案, 不可再生, 是指导师弟妹的核心案例

- [ ] **T018**: 导入[P01-PHMskills 论文项目仓库 (排除 .venv)] 到 OS: `06_知识系统与自蒸馏OS/论文流水线/P01-PHMskills/`
  - 来源: `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/P01-PHMskills/` (排除 .venv)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/论文流水线/P01-PHMskills/`
  - 优先级: **P1**
  - 关联卡片: [[014_已发表与在投论文]]
  - 体积: ~50 MB (排除 .venv 后)
  - 保留理由: PHM skills 多智能体论文项目仓库

- [ ] **T019**: 导入[P02_agent_langraph 论文项目仓库 (排除 .venv)] 到 OS: `06_知识系统与自蒸馏OS/论文流水线/P02_agent_langraph/`
  - 来源: `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/P02_agent_langraph/` (排除 .venv)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/论文流水线/P02_agent_langraph/`
  - 优先级: **P1**
  - 关联卡片: [[014_已发表与在投论文]]
  - 体积: ~500 MB (排除 .venv 后)
  - 保留理由: agent + langraph 论文项目仓库

- [ ] **T020**: 导入[P03_nesy_phm_review 神经符号综述仓库] 到 OS: `06_知识系统与自蒸馏OS/论文流水线/P03_nesy_phm_review/`
  - 来源: `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/P03_nesy_phm_review/` (含 paper/ref/specs/goal/logs/scripts/AGENTS.md/README.md/.specify/)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/论文流水线/P03_nesy_phm_review/`
  - 优先级: **P1**
  - 关联卡片: [[017_神经符号PHM综述_在投]]
  - 体积: 328 MB
  - 保留理由: 神经符号 PHM 综述 + spec-driven 工作流完整范例

### 论文打包与思维导图组 (P1-6 ~ P1-7)

- [ ] **T021**: 导入[神经符号 PHM 综述打包 + NVTA2025 agent 论文打包] 到 OS: `06_知识系统与自蒸馏OS/在投论文打包/`
  - 来源: `/mnt/k/2_work/win_download/phm_agents_nature_review_longform_package.zip` (30 MB) + `/mnt/k/2_work/win_download/nvta2025_agent_clean.zip` (4 MB)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/在投论文打包/`
  - 优先级: **P1**
  - 关联卡片: [[017_神经符号PHM综述_在投]]
  - 体积: 34 MB
  - 保留理由: 综述完整投稿包 + NVTA2025 agent 论文打包

- [ ] **T022**: 导入[PHD papers.xmind 5 篇论文思维导图 + 思路.drawio] 到 OS: `06_知识系统与自蒸馏OS/PHD论文全景图/`
  - 来源: `/mnt/d/drive/OneDrive - mails.tsinghua.edu.cn/_博科研_Richie/PHD papers.xmind` + `/mnt/d/paper/thesis/LQ/思路.drawio`
  - 目标: 夸克 `06_知识系统与自蒸馏OS/PHD论文全景图/`
  - 优先级: **P1**
  - 关联卡片: [[012_已发表与在投论文闭环]]
  - 体积: ~5 MB
  - 保留理由: 5 篇论文全景思维导图 + 思路演化记录, 不可再生

### WSL 科研资产组 (P1-8 ~ P1-10)

- [ ] **T023**: 导入[WSL project_report 自动盘点报告] 到 OS: `06_知识系统与自蒸馏OS/project_report/`
  - 来源: `/home/richie_thu/project_report/` (PROJECT_REPORT.md 38KB + INDEX.md + DATA_INVENTORY.md + GIT_REPOS.md + CLOUD_UPLOAD_GUIDE.md + subprojects/ + tools/inventory.py)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/project_report/`
  - 优先级: **P1**
  - 关联卡片: (引用 [[018_LQQL_OS]])
  - 体积: 124 KB
  - 保留理由: WSL 科研主目录自动盘点报告 + 唯一版本 + 体积小成本高回报

- [ ] **T024**: 导入[thesis 仓库 agent 配置 (AGENTS.md + CLAUDE.md)] 到 OS: `06_知识系统与自蒸馏OS/thesis_仓库_agent配置/`
  - 来源: `/mnt/d/paper/thesis/AGENTS.md` (10.7 KB) + `/mnt/d/paper/thesis/CLAUDE.md`
  - 目标: 夸克 `06_知识系统与自蒸馏OS/thesis_仓库_agent配置/`
  - 优先级: **P1**
  - 关联卡片: [[010_博士论文LaTeX]] + [[018_LQQL_OS]]
  - 体积: ~15 KB
  - 保留理由: thesis 仓库 agent bootstrap 配置 + 论文写作 Claude Code 工作流

- [ ] **T025**: 导入[自动研究引擎模板 (open_claw_research + Autoresearch-with-human)] 到 OS: `06_知识系统与自蒸馏OS/自动研究引擎/`
  - 来源: `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/02_自动研究引擎/` (含 open_claw_research_main_agent + Autoresearch-with-human + LQ_obsidian_tab)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/自动研究引擎/`
  - 优先级: **P1**
  - 关联卡片: [[018_LQQL_OS]]
  - 体积: 5.6 MB
  - 保留理由: 自动化研究引擎模板 + 论文实例化基础

### 可复现环境组 (P1-11 ~ P1-12)

- [ ] **T026**: 导入[13 个 conda envs 导出 (yml + pip freeze)] 到 OS: `_envs/conda_envs_exported/`
  - 来源: 由 `/mnt/t/A0_毕业整理_v2/scripts/export_envs.sh` 运行后生成 (LQ38/ODE/NNI/DSO/pysr/autoresearch-py311 等 13 个 env 的 environment.yml + pip_freeze.txt)
  - 目标: 夸克 `_envs/conda_envs_exported/` (13 个 yml + 13 个 pip freeze + 1 个 env_index.md)
  - 优先级: **P1**
  - 关联卡片: [[008_可复现环境与CondaEnvs]]
  - 体积: < 5 MB (导出后)
  - 保留理由: 论文代码即使上传也无法运行的"复现命门"; 新机器一键重建

- [ ] **T027**: 导入[dotfiles + Miniconda 离线安装器 + vscode settings] 到 OS: `_envs/dotfiles/`
  - 来源: `/home/richie_thu/{.bashrc,.zshrc,.profile,.condarc,.gitconfig,.tmux.conf}` + `/mnt/d/paper/thesis/.vscode/settings.json` + `/mnt/c/Users/Administrator/Miniconda-py39_4.10.3-Linux-x86_64.sh` (66.7 MB)
  - 目标: 夸克 `_envs/dotfiles/` + `_envs/Miniconda离线安装器/`
  - 优先级: **P1**
  - 关联卡片: [[008_可复现环境与CondaEnvs]]
  - 体积: 67 MB
  - 保留理由: 命令行行为 + 清华镜像源 + 离线/无网环境唯一可重建 conda 的钥匙

### 已发表小论文 LaTeX 与早期代表作 (P1-13 ~ P1-15)

- [ ] **T028**: 导入[4 篇小论文 LaTeX 源码扩展打包] 到 OS: `01_毕业论文与学位材料/发表小论文源码/`
  - 来源: `/mnt/d/paper/thesis/LQ/小论文tex版/` (DEN/TON/TIFN/Agent 4 个 LaTeX 项目, 含 figs + bib + cas-dc-template.tex + model1-num-names.bst)
  - 目标: 夸克 `01_毕业论文与学位材料/发表小论文源码/`
  - 优先级: **P1**
  - 关联卡片: [[012_已发表与在投论文闭环]]
  - 体积: 80 MB
  - 保留理由: 复用做 IEEE Trans 扩展期刊版 + 含完整 git 历史 (.git 可追踪每个实验 figure 的代码版本)

- [ ] **T029**: 导入[早期代表作 ADIG + ADAG RESS + KMADA 归档] 到 OS: `01_毕业论文与学位材料/早期代表作/`
  - 来源: `/mnt/d/drive/OneDrive - mails.tsinghua.edu.cn/_博科研_Richie/999 其他/{ADIG归档,ADAG RESS,KMADA归档}/`
  - 目标: 夸克 `01_毕业论文与学位材料/早期代表作/`
  - 优先级: **P1**
  - 关联卡片: [[012_已发表与在投论文闭环]]
  - 体积: ~50 MB
  - 保留理由: 硕士期间代表作 (ADIG TII 2022 / ADAG RESS 2023 / KMADA) + Cover Letter / Response / Correction List 写作模板

- [ ] **T030**: 导入[4 篇论文完整投稿生命周期归档 (含 Cover Letter + Reviewer Response)] 到 OS: `01_毕业论文与学位材料/小论文历史/`
  - 来源: `/mnt/d/paper/thesis/LQ/小论文文字原版/` (2.4 GB, 含 DEN JMS / TON TII / TIFN INFFUS / Agent 4 个完整投稿周期归档, 含 1_[已录用]_24-2_DEN_JMS/3_JMS录用/response_JMS{1-4}.docx 等)
  - 目标: 夸克 `01_毕业论文与学位材料/小论文历史/`
  - 优先级: **P1**
  - 关联卡片: [[012_已发表与在投论文闭环]]
  - 体积: 2.4 GB
  - 保留理由: 5 步论文流水线方法论活教材, 含 Cover Letter / Response 完整生命周期

---

## C. P2 任务 (8 条, 备选补充)

- [ ] **T031**: 导入[Codex 全局配置 (脱敏版)] 到 OS: `06_知识系统与自蒸馏OS/Codex全局配置/`
  - 来源: `/mnt/c/Users/Administrator/.codex/AGENTS.md` (0 字节占位) + `config.toml` + `history.jsonl` (220 KB) + `.codex-global-state.json` (27 KB, 脱敏后)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/Codex全局配置/` (脱敏)
  - 优先级: **P2**
  - 关联卡片: (引用 [[018_LQQL_OS]])
  - 体积: ~250 KB (脱敏后)
  - 保留理由: 反映 2026 H1 工作流; **必须排除 `.sandbox-secrets/` + `auth.json` + `installation_id`**

- [ ] **T032**: 导入[Codex 桌面端全局 skills 库 (53 个 skill)] 到 OS: `06_知识系统与自蒸馏OS/全局skills库/`
  - 来源: `/mnt/c/Users/Administrator/.agents/skills/` (53 个 skill, ~20 MB)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/全局skills库/`
  - 优先级: **P2**
  - 关联卡片: [[019_canonical_skills库]]
  - 体积: 20 MB
  - 保留理由: 第三方工具栈快照 (1password/feishu/autoglm/aminer/a-stock-analysis 等)

- [ ] **T033**: 导入[ChatGPT prompt 历史缓存] 到 OS: `06_知识系统与自蒸馏OS/ChatGPT_prompt历史/`
  - 来源: `/mnt/c/Users/Administrator/.chatgpt/cache_model/chatgpt_prompts.json`
  - 目标: 夸克 `06_知识系统与自蒸馏OS/ChatGPT_prompt历史/`
  - 优先级: **P2**
  - 关联卡片: (引用)
  - 体积: ~5 MB
  - 保留理由: 第三方 prompt 历史档案

- [ ] **T034**: 导入[本地 agent 执行 prompt + 绘图 prompt 库] 到 OS: `06_知识系统与自蒸馏OS/prompts/`
  - 来源: `/mnt/k/2_work/win_download/11_local_agent_execution_prompt.md` (4 KB) + `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/prompt/绘图prompt/`
  - 目标: 夸克 `06_知识系统与自蒸馏OS/prompts/`
  - 优先级: **P2**
  - 关联卡片: (引用)
  - 体积: ~10 MB
  - 保留理由: 单文件 prompt + 绘图 prompt 库

- [ ] **T035**: 导入[Claude plans 精选 5-10 个] 到 OS: `06_知识系统与自蒸馏OS/Claude_plans_精选/`
  - 来源: `/home/richie_thu/.claude/plans/` (27 个 plan, 抽取核心 5-10 个: serialized-waddling-stallman / tingly-painting-lightning / ultrawork 系列)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/Claude_plans_精选/`
  - 优先级: **P2**
  - 关联卡片: (引用)
  - 体积: ~2 MB
  - 保留理由: bughunt / review / cross-model-review 工作流样例

- [ ] **T036**: 导入[LQQL_OS/lqql_06_工作与项目/04_GPTPro提升/] 到 OS: `06_知识系统与自蒸馏OS/GPTPro提升/`
  - 来源: `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/04_GPTPro提升/` (含 06_科学稳定上网 + 07_智能体系统设置 + 08_skills 整理)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/GPTPro提升/`
  - 优先级: **P2**
  - 关联卡片: [[018_LQQL_OS]]
  - 体积: ~50 MB
  - 保留理由: GPTPro 工程笔记 + 稳定上网方法 + 系统设置

- [ ] **T037**: 导入[Zotero 文献库 sqlite + 文献 PDF 主目录] 到 OS: `_文献库/Zotero/`
  - 来源: `/mnt/c/Users/Administrator/Zotero/zotero.sqlite` (285 MB) + `/mnt/c/Users/Administrator/Zotero/storage/` (2977+ 条文献 PDF)
  - 目标: 夸克 `_文献库/Zotero/` (sqlite + storage 主版本)
  - 优先级: **P2**
  - 关联卡片: [[012_已发表与在投论文闭环]] (建议补 023_Zotero文献库迁移.md)
  - 体积: sqlite 285 MB + storage (待统计, 估计 5-10 GB)
  - 保留理由: 5 年文献检索成果 2977+ 条元数据 + 直接 import 到新机器 Zotero 节省数百小时

- [ ] **T038**: 导入[Gemini tracked tex 备份 (3 个论文项目)] 到 OS: `06_知识系统与自蒸馏OS/Gemini_tracked_tex/`
  - 来源: `/mnt/c/Users/Administrator/.gemini/antigravity/code_tracker/active/` (thesis/IF/JMS 3 个 tex 项目)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/Gemini_tracked_tex/`
  - 优先级: **P2**
  - 关联卡片: (引用, v1 计划有但 Phase 4 未单独成卡)
  - 体积: ~5 MB
  - 保留理由: Gemini Antigravity 跟踪的论文 tex 备份

---

## D. P3 任务 (4 条, 体积大可后置)

- [ ] **T039**: 导入[LQQL_OS 全仓 zip (9.2 GB, 含 .git 历史)] 到 OS: `06_知识系统与自蒸馏OS/LQQL_OS_全仓/`
  - 来源: `/mnt/k/2_work/LQQL_OS/` (整目录 zip)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/LQQL_OS_全仓/LQQL_OS_全仓_20260608.zip`
  - 优先级: **P3**
  - 关联卡片: [[018_LQQL_OS]]
  - 体积: 9.2 GB
  - 保留理由: 含 .git 163 MB 历史, 可完整 git log 回溯; **可后置**, 因 core 子集 (T013) 已先上传
  - 仍需人工确认: 是否上传 .env (5 GB Python venv, 可由 requirements.txt 重建)

- [ ] **T040**: 导入[ViBench HDF5 数据集 (89 GB)] 到 OS: `03_实验数据与结果/vibench/`
  - 来源: `/mnt/k/D01_vibench/` (16 个 HDF5 数据集: CWRU/XJTU/FEMTO/IMS/PU/DIRG/KAIST/HUST 等)
  - 目标: 夸克 `03_实验数据与结果/vibench/` (16 个 HDF5 整体)
  - 优先级: **P3**
  - 关联卡片: [[016_PHM-Vibench数据集与论文仓库]]
  - 体积: 89 GB
  - 保留理由: 不可再生 PHM benchmark 数据集 + 博后研究基础
  - 仍需人工确认: 是否整体上传 (89 GB), 还是仅上传 metadata.xlsx + 数据集文档 + 论文 PDF

- [ ] **T041**: 导入[家庭与人脉网络 (加密 zip)] 到 OS: `06_知识系统与自蒸馏OS/家庭与人脉_encrypted/`
  - 来源: `/mnt/k/2_work/LQQL_OS/lqql_03_家庭与人脉/` (218 KB)
  - 目标: 夸克 `06_知识系统与自蒸馏OS/家庭与人脉_encrypted.zip` (需加密)
  - 优先级: **P3**
  - 关联卡片: [[018_LQQL_OS]]
  - 体积: 218 KB
  - 保留理由: 个人关系网络, 涉及隐私
  - 仍需人工确认: 是否进 Obsidian 终身库; 建议加密 zip 后上传

- [ ] **T042**: 导入[优秀毕业生申报表盖章扫描 PDF] 到 OS: `05_个人行政与证明/优秀毕业生/`
  - 来源: `/mnt/k/5_other/Download/a_feishu/李奇优秀毕业生申报表扫描.pdf` (7.01 MB) + `/mnt/k/5_other/Download/a_feishu/26年报销.xlsx`
  - 目标: 夸克 `05_个人行政与证明/优秀毕业生/申报表_盖章扫描.pdf`
  - 优先级: **P3**
  - 关联卡片: [[005_博士后进站]]
  - 体积: 7 MB
  - 保留理由: 含手写 + 印章的盖章扫描件, 唯一版本
  - 仍需人工确认: 是否进公开 S 级 (含手写/印章信息) 还是加密包

---

## E. 任务统计与依赖

### 体积汇总 (按优先级)

| 优先级 | 任务数 | 体积估算 (排除 P3 整体数据集) | 占比 |
|---|---:|---:|---:|
| P0 | 15 | ~4.5 GB (答辩录像 3.5 GB 占大头; 其余 ~1 GB) | 4.6% |
| P1 | 15 | ~5.0 GB (小论文文字原版 2.4 GB + R00-phmfactory 1 GB + Zotero 主版本 + dotfiles 67 MB) | 5.1% |
| P2 | 8 | ~50 MB (脱敏 Codex + 全局 skills + ChatGPT + prompts + plans + GPTPro + Gemini tex) | 0.05% |
| P3 | 4 | ~98 GB (LQQL_OS 全仓 9.2 GB + ViBench 89 GB + 家庭加密 + 扫描 PDF) | 90.2% |
| **合计** | **42** | **~98 GB** (主体在 ViBench HDF5 数据集) | 100% |

### 任务依赖 (强制顺序)

- T001 (博士论文定稿) → T002 (主 PDF) → T003 (LaTeX 源码) → T004 (审稿打磨): 同主题顺序
- T013 (LQQL_OS core) → T014 (canonical skills) → T015 (根入口): 同仓库顺序
- T016 (R00-phmfactory src) → T017 (ViBench .claude/Doc) → T040 (ViBench HDF5 89 GB): 同主题不同优先级
- T026 (conda envs yml) → T027 (dotfiles + Miniconda): 复现环境同批

### 不上传清单 (敏感 + 大体积排除项)

- `/mnt/c/Users/Administrator/.codex/.sandbox-secrets/` + `auth.json` + `installation_id` — **绝对排除**, 进 sensitive_manifest.csv
- `/mnt/k/2_work/LQQL_OS/.codex/.env` (75 字节, 含 API key) — **必须脱敏后人工审查**
- `/mnt/k/2_work/LQQL_OS/.env/` (5 GB Python venv) — **不上传**, 由 requirements.txt 重建
- `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/R00-phmfactory/.env/` (5 GB Python venv) — **不上传**
- `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/P02_agent_langraph/.venv/` — **不上传**
- `/home/richie_thu/.claude/projects/` (~100 MB 论文会话日志) — **精简**, 只保留 plans + todos
- `~$*.doc*` / `~$*.pptx` Office 临时锁文件 — **排除**
- 优秀毕业生 V2/V3/V4 旧版本 — **可忽略版本** (只上传 V6)

---

## F. 配套脚本 (已在 `/mnt/t/A0_毕业整理_v2/scripts/`)

- `copy_p0_dryrun.sh` — P0 任务 dry-run (列出 source/target/体积, 不实际复制)
- `copy_p0_execute.sh` — P0 任务实际执行 (先 dry-run 核对后再运行)
- `hash_check.py` — 上传后哈希校验
- `export_envs.sh` — 导出 13 个 conda envs (T026)
- `generate_readme.py` — 为每个夸克目标桶生成 README.md

---

## G. 备注

- 所有任务严格遵循: 不自动删除 / 不自动上传 / 不读取敏感文件字节。
- "仍需人工确认"项见: `/mnt/t/A0_毕业整理_v2/15_仍需人工确认的问题.md` (Phase 5 综合产物)。
- 重复文件三档分类 (主版本/备份版本/可忽略版本) 见: `/mnt/t/A0_毕业整理_v2/_intermediate/dedup_summary.txt` + `dedup_groups.tsv`。
- OS 卡片完整性核查 + 待补清单见: [[OS_index]] §0 + §5。
