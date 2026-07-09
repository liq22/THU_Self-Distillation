---
title: PHM-Vibench 数据集索引
created: 2026-07-09
updated: 2026-07-09
type: experiment
status: growing
visibility: public
tags:
  - PHM-Vibench
  - 数据集
  - benchmark
  - PHM
  - 旋转机械
  - 故障诊断
  - RUL
  - 振动
related:
  - "[[ViBench项目closeout]]"
  - "[[UPHMP七空间框架]]"
  - "[[R00-phmfactory代码结构]]"
---

# PHM-Vibench 数据集索引

> 来源：博士毕业源仓库 os_cards/016_PHM-Vibench数据集与论文仓库.md；配套元信息表 `<K盘开发机>/.../R00-phmfactory/data/metadata.xlsx`（39 MB）与 27 篇数据集文献 `data/Reference/RM_001~RM_027`
> 整理日期：2026-07-09
> 适用范围：PHM-Vibench 基准平台集成的 16 个公开旋转机械振动数据集的索引、用途、上位主版本指针；以及 89 GB HDF5 整体的私有/冷存储指针

---

## 边界说明

这页是 **PHM-Vibench 集成的公开数据集清单与指针管理**，覆盖：每个数据集的名称 / 规模 / 采样率 / 用途 / 文献编号 / 上位主版本位置，以及整个 89 GB HDF5 包的私有指针策略。

这页 **不是**：
- 不是 PHM-Vibench 论文本身的复盘 —— 那在 [[ViBench项目closeout]]。
- 不是 UPHMP 七空间框架的解读 —— 那在 [[UPHMP七空间框架]]。
- 不内联任何数据集本体（89 GB）、不内联 metadata.xlsx 全表、不内联学位/评阅/答辩正文。大资产只写指针。
- 具体到每个数据集的故障类别、通道数、采样长度、load 配置等细节字段，以 metadata.xlsx 为权威源；本页只做导航级摘要，字段以"能在不查原表的情况下定位数据集"为限。

> 注：源卡片口径为"16 个 HDF5 数据集（16 个旋转机械振动数据集）"，配套文献库为 27 篇（RM_001_CWRU ~ RM_027_PU）。即 HDF5 集成数（16）与文献编号数（27）不一致——部分文献对应同一数据集的不同子集或引用。下表按 16 个数据集组织，文献列写对应 RM 编号。

---

## 数据集总览

### 16 个公开旋转机械振动数据集

下表是 PHM-Vibench 集成的 16 个数据集导航索引。规模/采样率为源卡片与公开常识可达的部分；标 `以 metadata.xlsx 为准` 的字段需要回元信息表核对，本页不臆造。

| # | 数据集 | 缩写 | 文献编号 | 用途/任务 | 采样率 | 规模 | 备注 |
|---|---|---|---|---|---|---|---|
| 1 | CWRU Bearing | CWRU | RM_001_CWRU | 故障诊断（fault diagnosis），benchmark 入门 | 12 kHz / 48 kHz | 中 | 西储大学，最常用基线 |
| 2 | XJTU-SY Bearing | XJTU | RM_*（XJTU） | RUL 预测（accelerated run-to-failure） | 25.6 kHz | 中 | 西安交大，全寿命 |
| 3 | FEMTO Bearing | FEMTO | RM_*（FEMTO） | RUL 预测（PRONOSTIA 加速退化） | 25.6 kHz | 中 | IEEE PHM 2012 Challenge |
| 4 | IMS Bearing | IMS | RM_*（IMS） | RUL / 故障诊断（run-to-failure） | 20 kHz | 中 | Cincinnati，Rexnord |
| 5 | Paderborn University | PU | RM_027_PU | 故障诊断（真实损伤 + 人工损伤） | 64 kHz | 中 | 真实损伤丰富 |
| 6 | DIRG | DIRG | RM_*（DIRG） | 故障诊断（航空轴承） | 以 metadata.xlsx 为准 | 中 | 高速轴承试验台 |
| 7 | KAIST | KAIST | RM_*（KAIST） | 故障诊断 / 跨工况 | 以 metadata.xlsx 为准 | 以 metadata.xlsx 为准 | 韩国科学技术院 |
| 8 | HUST Bearing | HUST | RM_*（HUST） | 故障诊断（多工况多载荷） | 以 metadata.xlsx 为准 | 大 | 华中科技大学，变工况覆盖广 |
| 9–16 | 其余 8 个数据集 | — | RM_*（对应编号） | 故障诊断 / RUL / 异常检测 | 以 metadata.xlsx 为准 | — | 见 metadata.xlsx + 27 篇文献库；源卡片未逐一列出名称 |

> 上表中 #9–#16 的逐数据集名称，源卡片仅给出"含 CWRU/XJTU/FEMTO/IMS/PU/DIRG/KAIST/HUST 等"的代表性清单，未穷举其余 8 个。要补全这一段，需回 `data/metadata.xlsx`（39 MB）逐行核对 RM 编号 → 数据集名映射，再回填。**这是本页唯一的已知缺口。**

### 文献库（27 篇）

- 编号体系：`RM_001_CWRU` ~ `RM_027_PU`（注意末位 PU = Paderborn）。
- 位置：`LQQL_OS/论文流水线/R00-phmfactory/data/Reference/`。
- 用途：每个数据集的原始论文/数据说明，做横向对比表、综述、引用时的第一手来源。
- 这 27 篇文献本身可公开（公开数据集的公开论文），随代码仓库镜像。

### 元信息表（metadata.xlsx）

- 位置：`<K盘开发机>/.../R00-phmfactory/data/metadata.xlsx`（39 MB）。
- 角色：每个数据集的权威字段源（采样率 / 通道数 / 标签 / load / 时长 / 文件切分等），代码读取数据时以此对齐。
- 可公开（结构 + 字段定义），但 39 MB 体积偏大，建议走代码仓库镜像而非 vault 内联。

---

## 上位主版本与指针策略

> 大资产一律只写指针，不进 git。公开页只记"主版本在哪 + 怎么对齐"，不内联内容。

### 本地主版本（开发机）

- **HDF5 数据本体（89 GB）**：`D01_vibench/` —— 16 个数据集打包成 HDF5，跨域引用源仓库 `04_data`。**体积过大，绝不进 git / 不内联 vault。**
- **元信息表**：`<K盘开发机>/.../R00-phmfactory/data/metadata.xlsx`（39 MB）。
- **文献库**：`<K盘开发机>/.../R00-phmfactory/data/Reference/RM_001~RM_027`。

### 公开镜像（可随代码仓库走）

- **开源代码仓库**：github.com/PHMbench/PHM-Vibench（开源镜像，公开）。
- **文献库 27 篇**：随代码仓库 `data/Reference/` 公开。
- **metadata.xlsx**：建议随代码仓库公开（字段定义有独立价值），注意体积。

### 冷存储 / 私有备份（敏感原件 & 大资产）

> 89 GB HDF5 整体不走公开仓库。冷存储 + 私有指针双保险。

- **夸克冷存储**：`博士毕业数据总仓库_202606/03_实验数据与结果/vibench/`（数据 89 GB）。
- **私有指针区**：`98_Private_LOCAL_勿提交`（含敏感原件、大资产指针，见 vault 私有区）。
- 换机器后本地路径失效，以夸克备份 + 私有指针区为准。

---

## 数据读取与对齐方法（可复用）

源卡片标注的可复用知识之一是"16 个 PHM 公开数据集的访问/读取/对齐方法"。要点（流程级，不内联具体代码）：

1. **以 metadata.xlsx 为单一真相源**：采样率 / 通道 / 标签 / load 全部以元信息表为准，代码读数据时从表里取对齐参数，不在代码里硬编码。
2. **统一成 HDF5**：16 个原生格式各异（.mat / .csv / .txt 等）的数据集统一打包成 HDF5，保证 data_factory 用同一套读取接口（见 [[R00-phmfactory代码结构]] 的 data_factory）。
3. **按 RM 编号寻址**：文献 / metadata / 数据子集三者用同一套 RM_001~RM_027 编号互相对齐，避免名称混乱。
4. **任务分流**：fault diagnosis / RUL prediction / anomaly detection 三类任务各有对应的 load / split 协议，由 task_factory 实例化（见 [[R00-phmfactory代码结构]]）。

---

## 后续使用场景

- **博后研究**：在 ViBench 上做 foundation model / 大模型扩展，直接复用 16 数据集 + metadata 对齐。
- **写综述 / 书**：16 数据集横向对比表（采样率 / 规模 / 任务 / 工况），文献库 27 篇做一手引用。
- **教学**：PHM benchmark 入门讲义素材（CWRU 入门 → FEMTO/IMS 全寿命 → PU 真实损伤）。
- **跨域组合**：与 Yale data / U-PHM 数据组合做新工作（跨系统迁移 / few-shot）。

---

## 最容易卡住的地方

1. **"16 数据集"和"27 篇文献"口径混淆**：HDF5 集成数（16）≠ 文献编号数（27）。引用数据集数量时说 16，引用文献库时说 27，别混。
2. **逐数据集名称没穷举**：上表 #9–#16 名称缺口，靠源卡片补不全，必须回 metadata.xlsx 逐行核对。讨论具体数据集前先确认编号 → 名称映射。
3. **89 GB 误进 git**：HDF5 整包 / metadata.xlsx 39 MB 一旦误提交会撑爆仓库，写 .gitignore 时把数据目录显式排除，并双重确认。
4. **采样率/通道字段硬编码进代码**：正确做法是从 metadata.xlsx 读对齐参数；硬编码会导致换数据集时静默错位。
5. **换机器后本地路径失效**：`<K盘开发机>/...` 是开发机路径，换机器后必须靠夸克冷存储 + 私有指针区定位，不要把本地路径当永久地址写进交付材料。

---

## 关联

- [[ViBench项目closeout]] — PHM-Vibench 论文项目整体复盘（目标/方法/结果/失败），数据是它的资产之一
- [[UPHMP七空间框架]] — data space (D) 是七空间之一，本索引的 16 数据集是 D 的实例池
- [[R00-phmfactory代码结构]] — data_factory 用本索引的数据集 + metadata 做对齐与读取
- [[30分钟重建conda环境SOP]] — 复现数据读取所需环境的标准流程
