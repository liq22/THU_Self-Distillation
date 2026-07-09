---
title: R00-phmfactory 代码结构
created: 2026-07-09
updated: 2026-07-09
type: experiment
status: growing
visibility: public
tags:
  - PHM-Vibench
  - 代码笔记
  - phmfactory
  - factory架构
  - PHM
  - 复现
  - Python
related:
  - "[[ViBench项目closeout]]"
  - "[[PHM-Vibench数据集索引]]"
  - "[[UPHMP七空间框架]]"
  - "[[30分钟重建conda环境SOP]]"
---

# R00-phmfactory 代码结构

> 来源：博士毕业源仓库 os_cards/016_PHM-Vibench数据集与论文仓库.md；复刻仓库 `LQQL_OS/论文流水线/R00-phmfactory/`（6.4 GB 含 venv）
> 整理日期：2026-07-09
> 适用范围：PHM-Vibench 论文的复刻仓库 R00-phmfactory 的目录结构、factory 解耦逻辑、复现要点、以及 .env / venv 不上传的边界规则

---

## 边界说明

这页是 **R00-phmfactory 仓库的代码结构导航 + 复现要点**，覆盖：`src / dev / data / configs` 的职责划分、factory 解耦的设计逻辑、环境复现步骤、以及哪些东西进 git 哪些只留指针。

这页 **不是**：
- 不是 PHM-Vibench 论文复盘 —— 那在 [[ViBench项目closeout]]。
- 不是数据集清单 —— 那是 [[PHM-Vibench数据集索引]]。
- 不是 UPHMP 七空间框架解读 —— 那在 [[UPHMP七空间框架]]。
- 不内联任何源码文件正文、不内联实验笔记本内容（CFL.ipynb 8.8 MB / exp1 5.4 MB 体积过大，只写指针）。.env / venv / 全文 PDF 一律不进 git。

> 注：本环境（WSL）当前无法访问 `<K盘开发机>/...` 开发机路径，本页目录结构以源卡片 os_cards/016 的描述为准，字段标"以仓库实际为准"的部分需回开发机核对后回填。开源镜像 github.com/PHMbench/PHM-Vibench 可作为公开参照。

---

## 实验问题

（按 Template_Experiment_Log 的 section 组织；本页是代码笔记，问题/假设/结果对应"这仓库解决什么、设计假设是什么、复现结果如何"。）

PHM-Vibench 论文要一个既能跑传统 ML、又能跑 foundation model、且能在 16 个数据集 / 3 类任务上做横向对比的工程平台。R00-phmfactory 就是它的复刻仓库：把 PHM pipeline 解耦成可独立实例化的 factory，让一个 workflow = data_factory + model_factory + task_factory + trainer_factory 的组合。

## 假设

复刻这套 factory 架构的核心假设（与论文一致，见 [[ViBench项目closeout]]）：

1. PHM workflow 可以无歧义地拆成 data / model / task / trainer 四类正交组件，各自实例化。
2. 这种解耦同时兼容传统 ML 与 foundation model（换 factory 实例即可，不动骨架）。
3. 用同一套 factory 接口 + metadata 对齐（见 [[PHM-Vibench数据集索引]]），16 数据集 / 3 任务可以统一调度。

## 环境

> 敏感原件与大体积资产只写私有指针, 规则见 [[处理规范_脱敏与可见性]]。环境复现见 [[30分钟重建conda环境SOP]]。

- **Code version / commit**：以开发机 `<K盘开发机>/.../R00-phmfactory/` 当前 HEAD 为准；开源镜像 github.com/PHMbench/PHM-Vibench。
- **Data version**：89 GB HDF5（16 数据集）+ metadata.xlsx（39 MB），指针见 [[PHM-Vibench数据集索引]]，不在本仓库内联。
- **Hardware / runtime**：开发机 WSL/Linux + Python（venv）。
- **Dependencies**：见仓库内 `requirements` / `pyproject`（以仓库实际为准）；Python venv（约 5 GB）**不上传 git**，靠 [[30分钟重建conda环境SOP]] 重建。
- **敏感配置**：`.env/`（含本地路径 / 可能含 key）**绝不进 git**，只留私有指针（见末尾"原始资产指针"）。

## 设置（仓库目录结构）

源卡片 os_cards/016 给出的 R00-phmfactory 顶层结构（6.4 GB 含 venv）：

```
R00-phmfactory/
├── src/                      # 项目源码（核心）
│   ├── data_factory/         # 数据加载 / 对齐 / HDF5 读取（对齐 metadata.xlsx）
│   ├── model_factory/        # 模型实例化（传统 ML + foundation model 共接口）
│   ├── task_factory/         # 任务实例化（fault diagnosis / RUL / anomaly detection）
│   ├── trainer_factory/      # 训练循环 / 评测协议 / 跨域迁移协议
│   └── utils/                # 公共工具（日志 / 配置解析 / 信号处理等）
├── dev/
│   ├── preexp/               # 预实验笔记本（探索性）
│   │   ├── CFL.ipynb         # Contrastive Foundation Learning（8.8 MB，体积大只写指针）
│   │   └── exp1_mse_vs_flowpretraining.ipynb  # MSE vs Flow pretraining 对比（5.4 MB）
│   └── del/                  # 交付笔记本（del = deliverable，正式实验产物）
├── data/
│   ├── Reference/            # 27 篇数据集文献 RM_001_CWRU ~ RM_027_PU（可公开）
│   └── metadata.xlsx         # ViBench 数据集元信息表（39 MB，权威字段源）
├── configs/
│   ├── base/                 # 基础配置（环境 / 路径 / 默认超参）
│   ├── demo/                 # 演示配置（最小可跑样例）
│   ├── experiments/          # 实验配置（正式实验，对应 dev/del）
│   └── reference/            # 参考配置（数据集 / 模型的预设）
└── .env/                     # Python venv（约 5 GB，不上传 git）
```

> 字段标"以仓库实际为准"的细节（如 src 下子模块的精确文件名、configs 的 yaml 命名）需回开发机核对。本页只到目录级导航，不到文件级。

### factory 解耦的逻辑（核心设计）

- **data_factory**：负责把 16 个数据集（见 [[PHM-Vibench数据集索引]]）统一读成标准张量；对齐参数（采样率/通道/标签）从 metadata.xlsx 取，不硬编码。
- **model_factory**：把传统 ML 模型与 foundation model 包成同一套实例化接口，让上层不感知模型类型差异。
- **task_factory**：把 fault diagnosis / RUL prediction / anomaly detection 三类任务各自实例化，含各自的 load / split / 评测协议。
- **trainer_factory**：统一训练循环 + 评测，支持跨域迁移（domain generalization / cross-system transfer / few-shot）等复杂场景。
- **一个 workflow = 这四类 factory 实例的组合**，configs 里的每个实验配置就是一次组合。

### 实验笔记本（dev/）

- `dev/preexp/CFL.ipynb`（8.8 MB）— Contrastive Foundation Learning 探索，多通道信号处理。
- `dev/preexp/exp1_mse_vs_flowpretraining.ipynb`（5.4 MB）— MSE vs Flow pretraining 对比实验。
- `dev/del/` — 交付笔记本（正式实验产物，对应论文实验章节）。

## 结果（复现要点）

> 本页是代码笔记，"结果"指复现这套仓库的实操要点，不是论文实验数值（数值见 [[ViBench项目closeout]] 与论文正文）。

1. **先读 factory 解耦再碰具体 factory**：接手代码的顺序是 `src/utils` → `data_factory` → `model_factory` → `task_factory` → `trainer_factory`，理解组合关系后再读 configs。
2. **配置驱动**：所有实验由 `configs/` 下的配置文件定义，一个配置 = 一组 factory 实例组合；改实验先改配置，不动 src 骨架。
3. **metadata 对齐**：数据读取依赖 metadata.xlsx，复现前确认元信息表路径在 `configs/base/` 里正确指向。
4. **笔记本分层**：探索性实验进 `dev/preexp/`，正式交付进 `dev/del/`；不要把交付产物和探索稿混在同一目录。
5. **环境重建**：venv 不上传，靠 [[30分钟重建conda环境SOP]] 重建；requirements / pyproject 是唯一依赖真相源。

## 解释

factory 解耦之所以 work，是因为它把"变的部分"（具体数据集、具体模型、具体任务、具体训练协议）和"不变的部分"（factory 接口、组合骨架）分开：换实验 = 换 factory 实例组合，不动骨架。这正是 UPHMP 七空间框架（见 [[UPHMP七空间框架]]）在工程层的落地 —— data space (D) → data_factory，model space (M) → model_factory，task space (T) → task_factory，protocol (Π) + loss (L) → trainer_factory。

## 是否支持假设

- [x] 支持（factory 解耦 + metadata 对齐，已支撑 16 数据集 / 3 任务的统一调度与论文实验）
- [ ] 部分支持
- [ ] 不支持
- [ ] 结果不可信，需要重做

> 这是工程层的判断（仓库可跑、论文已发表见 [[ViBench项目closeout]]）。具体某 factory 在某数据集上是否最优，是实验层结论，不在本页范围。

## 下一步

- **回填目录细节**：开发机可访问后，把 `src/` 子模块精确文件名、`configs/` 的 yaml 命名逐项核对回填（本页只到目录级）。
- **接手新数据集**：加新数据集 = 在 data_factory 加一个 reader + metadata.xlsx 加一行 + data/Reference 加文献，不动其它 factory。
- **博后扩展**：把 factory 扩到声学/电流/温度多模态（见 [[ViBench项目closeout]] 未来接手建议），data_factory 与 model_factory 是主要改动面。

## 备注

- 开源镜像 github.com/PHMbench/PHM-Vibench 可作为公开参照（开发机路径换机器失效时用）。
- 关联卡片（源仓库）：os_cards/015_ViBench论文项目复盘.md、os_cards/016_PHM-Vibench数据集与论文仓库.md。

---

## 最容易卡住的地方

1. **把 task_factory 和 model_factory 的逻辑写串**：task 管"做什么任务（诊断/RUL/异常）+ load/split 协议"，model 管"用什么模型 + 怎么实例化"。初接手最易把任务相关的 split 逻辑塞进 model_factory。
2. **metadata.xlsx 路径没配对**：data_factory 依赖 metadata 对齐，路径在 configs/base 没指对会静默读错数据，且不报错。
3. **venv / .env 误进 git**：仓库 6.4 GB 里 venv（约 5 GB）+ .env 是大头，写 .gitignore 时显式排除，并双重确认；.env 可能含本地路径 / key，是敏感件。
4. **探索笔记本与交付笔记本混放**：preexp 和 del 混在一起会导致交付产物被探索稿覆盖，交付时要确认版本。
5. **换机器后本地路径全失效**：`<K盘开发机>/...` 是开发机路径，换机器后 src/configs 里硬编码的本地路径要批量改；建议用 configs/base 的相对路径 + 环境变量。

---

## 原始资产指针（私有，勿提交）

> 敏感原件与大体积资产只写私有指针, 规则见 [[处理规范_脱敏与可见性]]。

- **复刻代码仓库（6.4 GB，含 venv）**：`LQQL_OS/论文流水线/R00-phmfactory/`
  - 其中 `.env/`（venv，约 5 GB）**不上传**，靠 [[30分钟重建conda环境SOP]] 重建。
  - 实验笔记本 `dev/preexp/CFL.ipynb`（8.8 MB）、`exp1_mse_vs_flowpretraining.ipynb`（5.4 MB）体积大，只写指针。
- **数据集（89 GB）**：见 [[PHM-Vibench数据集索引]]，不在本仓库内联。
- **夸克备份镜像**：`博士毕业数据总仓库_202606/06_知识系统与自蒸馏OS/论文流水线/R00-phmfactory/`（代码）。
- **开源镜像**：github.com/PHMbench/PHM-Vibench（公开，换机器失效时用）。

---

## 关联

- [[ViBench项目closeout]] — R00-phmfactory 是 PHM-Vibench 论文的复刻仓库，论文复盘的总入口
- [[PHM-Vibench数据集索引]] — data_factory 读取的 16 数据集 + metadata 对齐的清单
- [[UPHMP七空间框架]] — factory 解耦是七空间框架在工程层的落地
- [[30分钟重建conda环境SOP]] — venv 不上传，复现环境的标准流程
