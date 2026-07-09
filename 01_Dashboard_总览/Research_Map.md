# Research Map

> 博士科研轴总览：核心研究问题 + 项目地图 + 方法地图。
> 论文产出见 [[Publication_Map]]，时间线见 [[PhD_Timeline]]，学位论文结构见 [[博士论文结构总览]]。

## 核心研究问题

- **Q1 可解释旋转机械故障诊断**：如何让故障诊断模型从黑盒端到端走向全程可解释（透明变换算子、知识显式注入）？代表：[[TON_透明算子网络]]、[[DEN_深度专家网络]]、[[TIFN_透明信息融合网络]]。
- **Q2 跨域迁移与泛化**：当训练域与目标域分布不同时，如何对未见域保持稳定诊断？代表：[[ADIG_早期代表作]]（早期探索）。
- **Q3 神经符号 + Agent 自动信号处理**：如何让大语言模型自主完成信号处理流程，并把领域知识结构化注入？代表：[[Agent_PHM智能体]]、[[神经符号PHM综述]]。

## 项目地图

| 项目 | 状态 | 对应问题 | 关键产出 | 相关论文 | 位置 |
|---|---|---|---|---|---|
| DEN 深度专家网络 | stable | Q1 / Q3 | 知识驱动故障诊断，博士论文第四章 | [[DEN_深度专家网络]] | `03_Papers/01_Manuscripts` |
| TON 透明算子网络 | stable | Q1 | 全可解释信号变换，博士论文第三章 | [[TON_透明算子网络]] | `03_Papers/01_Manuscripts` |
| TIFN 透明信息融合网络 | stable | Q1 | 多源可解释融合，博士论文第五章 | [[TIFN_透明信息融合网络]] | `03_Papers/01_Manuscripts` |
| Agent PHM 智能体 | growing | Q3 | 自主信号处理智能体，博士论文第六章；博后延续方向 | [[Agent_PHM智能体]] | `03_Papers/01_Manuscripts` |
| ViBench / PHM-Vibench | stable | Q1 / Q3 | 故障诊断 benchmark + 基座模型评测，已发表 | [[ViBench项目closeout]] | `02_Research/01_Projects` |
| 神经符号 PHM 综述 | growing | Q1 / Q3 | 神经符号 PHM 范式综述，在投 | [[神经符号PHM综述]] | `03_Papers/01_Manuscripts` |

## 方法地图

| 方法/工具 | 用在何处 | 优点 | 坑点 | 参考资料 |
|---|---|---|---|---|
| UPHMP 七空间框架 | 综述 / benchmark / 知识组织 | 统一描述 PHM 任务空间 | | [[UPHMP七空间框架]] |
| phmfactory 代码结构 | 全部实验 | 统一代码底座 | | [[R00-phmfactory代码结构]] |
| spec-driven 论文写作工作流 | 综述 / Agent / ViBench 打磨 | 文档即规格，可被 AI 协作 | | [[spec_driven论文写作工作流]] |
| 对象分层与控制平面 | 综述框架 / Agent 设计 | 区分"对象层"与"控制平面" | | [[对象分层与控制平面]] |

## 相关入口

- 论文产出闭环：[[Publication_Map]] · [[论文流水线5步法]]
- 数据与代码：[[PHM-Vibench数据集索引]] · [[R00-phmfactory代码结构]]
