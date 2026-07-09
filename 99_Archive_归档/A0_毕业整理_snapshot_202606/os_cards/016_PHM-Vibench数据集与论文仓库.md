# PHM-Vibench 数据集与论文仓库

## 来源文件/目录
- `/mnt/k/D01_vibench/` (89 GB, 16 个 HDF5 数据集, 跨域引用 04_data)
- `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/R00-phmfactory/` (6.4 GB 项目仓库)
  - `src/` — 项目源码 (data_factory / model_factory / task_factory / trainer_factory / utils)
  - `dev/preexp/` — 实验笔记本 (CFL.ipynb 8.8 MB, exp1_mse_vs_flowpretraining.ipynb 5.4 MB)
  - `dev/del/` — 交付笔记本
  - `data/Reference/` — 27 个数据集文献 (RM_001_CWRU ~ RM_027_PU)
  - `data/metadata.xlsx` (39 MB) — ViBench 数据集元信息表
  - `configs/base/` + `configs/demo/` + `configs/experiments/` + `configs/reference/`
  - `.env/` (5 GB Python venv, 不上传)
- `/mnt/d/paper/paper_25_9_vibench/` (180 MB, 跨域引用 02_papers, 论文 + src + 实验结果)

## 核心价值
PHM-Vibench 是博士收官的核心 benchmark 论文, 89 GB HDF5 数据集 (16 个旋转机械振动数据集, 含 CWRU/XJTU/FEMTO/IMS/PU/DIRG/KAIST/HUST 等) 是不可再生的核心资产。R00-phmfactory 是论文的复刻仓库, 含完整 src + 实验笔记本 + 27 篇数据集文献, 是博后期间扩展工作的基础。

## 可复用知识
- 16 个 PHM 公开数据集的访问/读取/对齐方法
- ViBench factory 风格代码结构 (data_factory / model_factory / task_factory / trainer_factory)
- 实验对比 protocol (exp1_mse_vs_flowpretraining: MSE vs Flow pretraining)
- 27 篇 PHM 数据集论文的文献库 (RM_001 ~ RM_027 编号体系)
- 多通道信号处理 (CFL.ipynb Contrastive Foundation Learning)

## 后续使用场景
- 博后研究 — 在 ViBench 上做 foundation model / 大模型扩展
- 写综述 / 书 — 16 数据集横向对比表
- 教学 — PHM benchmark 入门讲义素材
- 跨域引用 — 与 Yale data / U-PHM 数据组合做新工作

## 建议标签
#博士毕业 #科研资产 #PHM-Vibench #数据集 #benchmark #PHM #旋转机械 #故障诊断 #RUL

## 建议链接
- 对应夸克路径: `博士毕业数据总仓库_202606/03_实验数据与结果/vibench/` (数据)
- 对应夸克路径: `博士毕业数据总仓库_202606/06_知识系统与自蒸馏OS/论文流水线/R00-phmfactory/` (代码)
- 对应本地路径: `/mnt/k/D01_vibench/` + `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/R00-phmfactory/`
- 关联卡片: os_cards/015_ViBench论文项目复盘.md
