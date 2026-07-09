# 博士论文 LaTeX 源码与编译闭环

## 来源文件/目录

- 主目录: `/mnt/d/paper/thesis/`
- 编译入口: `/mnt/d/paper/thesis/LQ_<学号_redacted>_thesis.tex`
- 章节正文: `/mnt/d/paper/thesis/data/chap01.tex` ~ `chap07.tex`
- 模板: `/mnt/d/paper/thesis/thuthesis.cls` + `/mnt/d/paper/thesis/thusetup.tex`
- 参考文献: `/mnt/d/paper/thesis/ref/refs.bib`
- 编译脚本: `/mnt/d/paper/thesis/script/compile.sh` / `compile.bat` / `compile_lualatex.bat`
- 致谢与简介: `acknowledgements_final.tex` / `resume.tex` / `resume_m.tex`
- 答辩委员会/决议: `committee.tex` / `resolution.tex` / `comments.tex`
- 附录 prompt 工程源: `data/appendix_assets/{plan,reflect,reflector,report,execute,inquirer}_prompt.py`
- worktree 备份: `/mnt/d/paper_worktree/` (2026-02-26/27 快照, 含 thesis-format-fix 分支)

## 核心价值

本论文 LaTeX 工程是博士 4 年工作的结晶 — 题目"基于神经符号网络的旋转机械可解释故障诊断方法研究", 采用清华学位论文模板 thuthesis, 7 章结构完整, 含 6 个 prompt 工程脚本作为论文创新点之一(神经符号网络的 LLM prompt 模板)。再编译一次即可恢复全文 PDF, 也可作为未来改写小论文 / 申报基金 / 编写专著的源码模板。模板类文件 thuthesis.cls 与全局元信息 thusetup.tex(作者/学号/导师/题目)是清华特有的本地配置, 一旦丢失难以重建。

## 可复用知识

- LaTeX 编译入口结构: 入口 .tex 仅 2 603 B, 主要靠 thusetup.tex 注入元信息 + `\input{data/chapNN.tex}` 加载章节, 适合作为新论文骨架
- 中英文双语: abstract.tex 单文件含中英文摘要, resume.tex/resume_m.tex 分别对应中英个人简介
- 答辩材料嵌入 LaTeX: committee.tex(答辩委员会名单)、resolution.tex(决议)、comments.tex(评议意见)可直接编译进论文, 而非外置 PDF
- 参考文献 refs.bib 仅 92 KB(精简版), 另有 refs_uncited.bib 1.1 MB 保留未引用文献(供未来回顾), 编译用前者
- 附录 prompt 工程脚本(`data/appendix_assets/`): 6 个 .py 文件封装了神经符号网络各阶段(plan/reflect/reflect/report/execute/inquirer)的 prompt, 是论文核心方法实现的可复现证据
- 编译脚本三件套: compile.sh (Linux latexmk)、compile.bat (Windows)、compile_lualatex.bat (LuaLaTeX, 处理中文), 任意环境都可复现
- worktree 隔离开发模式: paper_worktree/ 与 paper_worktree/thesis-format-fix/ 是 git worktree, 用于格式修复分支不污染主线

## 后续使用场景

- 写论文: thuthesis.cls + thusetup.tex + 编译脚本可直接复用为下一篇论文(博后报告/小论文/专著)的脚手架
- 申请基金: 论文中的章节结构、参考文献库、图表(figures/)可作为基金申报书素材
- 博后规划: appendex_assets 的 prompt 工程脚本可作为博后课题延续方向
- 代码复现: chap03-chap05 涉及的 ViBench/DEN/TON 实验配置可通过 LaTeX 反推实验设置
- 个人简历: resume.tex 是清华学位论文标准中英简介模板, 可填入 CV

## 建议标签

#博士毕业 #LaTeX #thuthesis #神经符号网络 #清华博士 #学位论文模板 #prompt工程 #可复现

## 建议链接

- 对应夸克路径: `/博士毕业/02_LaTeX源码/`
- 对应本地路径: `/mnt/d/paper/thesis/` (主) + `/mnt/d/paper_worktree/` (worktree 快照)
