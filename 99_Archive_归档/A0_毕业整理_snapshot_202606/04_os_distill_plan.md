# 自蒸馏OS建议 (OS = Obsidian / Notion / 知识管理系统)

---

## 一、建议进入OS的内容

| 原路径 | OS位置 | 类型 | 原因 |
|--------|--------|------|------|
| `/mnt/d/paper/thesis/定稿/D-机械系博士学位论文-李奇.pdf` | 01_毕业论文/博士论文定稿/ | PDF | 博士论文最终版, 核心成果 |
| `/mnt/d/paper/thesis/LQ_<学号_redacted>_thesis.pdf` | 01_毕业论文/博士论文主PDF/ | PDF | 博士论文最新编译版 |
| `/mnt/d/paper/thesis/data/chap01~chap07.tex` + `thusetup.tex` | 01_毕业论文/源码索引/ | TeX | 论文章节源码, 可检索 |
| `/mnt/d/paper/thesis/ref/refs.bib` | 01_毕业论文/参考文献/ | BibTeX | 全部参考文献, 可检索 |
| `/mnt/d/paper/thesis/abstract.tex` | 01_毕业论文/摘要/ | TeX | 中英文摘要 |
| `/mnt/d/paper/thesis/_reviewer_pro/` (v1-v5) | 01_毕业论文/审稿修改/ | Markdown | 审稿意见和修改记录, 完整的论文打磨过程 |
| `/mnt/d/paper/thesis/defense_opinion_response.md` | 01_毕业论文/答辩回复/ | Markdown | 答辩意见回复 |
| `/mnt/d/paper/thesis/final_revision_changelog.md` | 01_毕业论文/修改日志/ | Markdown | 最终修改日志 |
| `/mnt/d/paper/thesis/LQ/小论文正式版/` (4篇) | 01_毕业论文/发表小论文/ | PDF | 4篇已发表论文, 核心科研成果 |
| `/mnt/d/paper/thesis/LQ/小论文tex版/` (TON/DEN/TIFN/Agent) | 01_毕业论文/小论文源码/ | TeX | 小论文LaTeX源码 |
| `/mnt/k/申请答辩/毕业答辩V5.pptx` | 01_毕业论文/答辩PPT/ | PPTX | 答辩PPT最终版 |
| `/mnt/k/申请答辩/优秀毕业生申请_李奇6.pptx` | 01_毕业论文/优秀毕业生/ | PPTX | 优秀毕业生申请 |
| `/mnt/c/Users/Administrator/Downloads/关于学位论文使用授权的说明*.doc` | 01_毕业论文/学位材料/ | DOC | 学位论文授权书 |
| `/mnt/k/2_work/win_download/答辩后学位论文修改说明_签字版.docx` | 01_毕业论文/答辩后材料/ | DOCX | 答辩后修改说明 |
| `/mnt/d/paper/thesis/LQ/李奇_简历2025_10_21.pdf` | 05_个人/简历/ | PDF | 最新简历 |
| `/home/richie_thu/Richie1/homepage/CV_Qi_Li_v2.4.pdf` | 05_个人/CV_英文版/ | PDF | 英文CV |
| `/mnt/d/drive/OneDrive.../7IEEEmenber/liqi_IEEE会员证书.PDF` | 05_个人/IEEE证书/ | PDF | IEEE会员证明 |
| `/mnt/d/drive/OneDrive.../8证书荣誉/省优秀论文.pdf` | 05_个人/获奖证书/ | PDF | 省优秀论文证明 |
| `/mnt/k/2_work/win_download/B-机械系研究生发表论文...统计表_已填写.docx` | 05_个人/发表论文统计/ | DOCX | 发表论文统计表 |
| `/mnt/k/2_work/LQQL_OS/` (核心配置文件) | 02_科研/知识管理/ | Markdown/Obsidian | 个人知识管理系统 |
| `/mnt/d/paper/paper_25_9_vibench/.claude/Doc/` | 02_科研/ViBench文档/ | Markdown | ViBench论文项目文档 |
| `/home/richie_thu/project_report/PROJECT_REPORT.md` | 02_科研/项目报告/ | Markdown | 项目综合报告 |
| `/home/richie_thu/project_report/DATA_INVENTORY.md` | 02_科研/数据清单/ | Markdown | 数据清单 |
| `/home/richie_thu/project_report/INDEX.md` | 02_科研/索引/ | Markdown | 项目索引 |
| `/mnt/c/Users/Administrator/.gemini/antigravity/code_tracker/active/` (3个项目tex) | 02_科研/论文tex备份/ | TeX | Gemini跟踪的论文tex(thesis/IF/JMS) |
| `/mnt/k/2_work/win_download/nsnet_*.ipynb` | 02_科研/NSNet_notebook/ | ipynb | NSNet相关notebook |
| `/mnt/d/drive/OneDrive.../PHD papers.xmind` | 02_科研/论文思维导图/ | xmind | PHD论文思维导图 |

---

## 二、建议的索引文件列表

以下文件应作为OS中的索引/入口文件:

1. **论文总索引**: `01_毕业论文/INDEX.md` -- 列出所有论文版本/小论文/送审材料
2. **科研项目索引**: `02_科研/INDEX.md` -- 列出所有科研项目和代码仓库
3. **数据集索引**: `03_数据/DATA_INVENTORY.md` -- 列出所有实验数据集
4. **个人成就索引**: `05_个人/INDEX.md` -- 列出证书/简历/奖项/行政材料
5. **工具配置索引**: `04_工具/INDEX.md` -- 列出开发环境和工具链

---

## 三、不适合进入OS的内容

| 内容 | 原因 |
|------|------|
| ViBench HDF5数据集 (89 GB) | 体积过大, 不适合知识管理系统, 应存储在夸克网盘 |
| WSL _Richie_project 模型文件 (21 GB) | 含checkpoint/npy等二进制文件, 不适合文本检索 |
| 飞书妙记视频 (262 GB) | 视频文件不适合知识管理系统 |
| Zotero数据库 (285M sqlite + PDF) | 专用数据库格式, 应通过Zotero本身管理 |
| MailMasterData邮箱数据 (1.8 GB) | 专用邮件格式, 不适合知识管理系统 |
| OneDrive _博学习课程视频 (~7 GB) | 视频文件体积过大 |
| 敏感文件(SSH/PEM/.env等) | 安全风险, 不应进入任何可搜索系统 |
| miniconda3/conda环境 (81+49 GB) | 运行时环境, 不适合归档 |
| wandb缓存 (35 GB) | 实验运行缓存, 无知识价值 |
| 中间训练结果(signal.npy等, 5.1 GB) | 可重新生成的中间产物 |
