---
title: 13 个 conda env 清单
created: 2026-07-09
updated: 2026-07-09
type: legacy
status: growing
visibility: internal
tags: [conda, 可复现性, 环境清单, legacy, 资产索引]
audience: junior
related:
  - "[[30分钟重建conda环境SOP]]"
  - "[[博士论文结构总览]]"
  - "[[ViBench项目closeout]]"
  - "[[R00-phmfactory代码结构]]"
---

# 13 个 conda env 清单

> 来源: OS 卡片 `008_可复现环境与CondaEnvs导出.md`（A0_毕业整理）
> 整理日期: 2026-07-09
> 适用范围: 博士 5 年间积累的 13 个独立 conda 环境的清单索引

---

## 边界说明

这页是博士期 **13 个 conda env 的清单表**：每个 env 叫什么、做什么、关联哪篇论文 / 项目、对应的 `environment.yml` 在哪。

它和 [[30分钟重建conda环境SOP]] **分工不重叠**：
- [[30分钟重建conda环境SOP]] 管**重建流程**：怎么在新机器上把这 13 个 env 装回来。
- **本页只管清单**：13 个 env 的身份卡 + yml 位置指针。

**这页不列 package 明细**。每个 env 的实际 `environment.yml` / `pip freeze` 是在原博士工作站由 `export_envs.sh` 生成的，源仓库内并未内联这些文件——故本页只记**导出后存放位置指针**，不编造包列表。重建时拿到 yml 后 `conda env create -f` 即可恢复完整包栈。

整个 `~/miniconda3/envs/` 合计 49 GB，**留本地原机器不备份**；只备份 < 5 MB 的文本清单。

---

## 13 个 env 清单

| env 名 | 用途 / 方向 | 关键栈（已知） | 关联项目 / 论文 | 备注 |
|---|---|---|---|---|
| **LQ38** | 博士论文主 env | Python 3.8, torch 1.12.1, sympytorch | 博士论文主体 / 符号回归主线 | 17 GB；**必须导出**，是复现命门 |
| **ODE** | PhySO 论文 env | torch 1.12.1+cu116, torchdiffeq | PhySO / ODE 方向 | 8.1 GB；CUDA 版本绑定（cu116） |
| **NNI** | 神经架构搜索 | nni 3.0 | NAS 相关实验 | 6.7 GB |
| **DSO** | Deep Symbolic Optimization | Python 3.7 | DSO 复现 | 5.4 GB；**唯一 py3.7 env**，兼容老代码 |
| **pysr** | PySR 符号回归 | julia 1.8.1, pysr 0.11.0 | 符号回归 | 1.3 GB；**须先装 Julia runtime**，非纯 pip |
| **autoresearch-py311** | LQQL_OS AI Agent 论文流水线 | Python 3.11 | LQQL_OS / AI Agent | 225 MB；最新最活跃 |
| *(其余 7 个 env)* | 待补 | 待补 | 待补 | 名称 / 用途待源 yml 确认后补齐 |

> 上表 6 个 env 的信息来自源 OS 卡片明确记载；**其余 7 个 env 的名称、用途、关联项目源卡片未列出**，本页不编造。待拿到 `export_envs.sh` 生成的 13 个 yml 后，按同一表格补齐后 7 行（属人工确认项，见末尾"待人工确认"）。

## env 的实际 yml 位置（私有指针）

每个 env 的 `environment.yml` + `pip freeze` 由 `export_envs.sh` 在原博士工作站生成，产物存放位置属**大体积 / 本地路径型资产**，公开页只记指针：

- 导出产物根目录：私有指针，见 `98_Private_LOCAL_勿提交` 私有区（绝对路径记于私有区，公开页不内联）。
- 单个 env 的 yml / pip freeze：位于上述根目录下以 env 名命名的子目录。
- 49 GB 的 `~/miniconda3/envs/` 整目录：留本地原机器，不上传。

## 几个 env 的复现注意点（已知）

源卡片对以下 env 给了明确的复现约束，重建时必须遵守：

- **LQ38**：博士论文主 env，是复现命门，重建优先级最高。详见 [[30分钟重建conda环境SOP]]。
- **ODE**：torch 绑 `cu116`，新机器 CUDA 驱动须兼容 cu116，否则报错。
- **DSO**：唯一 Python 3.7 env，不要随手升到 3.8+，否则老代码跑不动。
- **pysr**：依赖 Julia runtime（julia 1.8.1），**不能纯靠 pip**，须先装 Julia 再装 pysr 0.11.0。

## 最容易卡住的地方

1. **以为 13 个 env 名都能从源卡片读全**：源卡片只明确列了 6 个（LQ38 / ODE / NNI / DSO / pysr / autoresearch-py311），其余 7 个待 yml 确认，**不要凭印象编造 env 名**。
2. **以为清单 = 包列表**：本页是身份卡（名 / 用途 / 关联 / 位置），不是 package 明细；包明细在各自 yml 里。
3. **pysr 单靠 pip 重建**：会失败，须先装 Julia runtime。
4. **ODE 的 CUDA 绑定**：换机后驱动不匹配会直接报错，不是 env 本身坏了。

## 关联

- [[30分钟重建conda环境SOP]] — 新机器一键重建流程（与本页配套）
- [[博士论文结构总览]] — 各 env 对应哪篇论文章节
- [[ViBench项目closeout]] — ViBench 论文（paper_25_9_vibench）对应 env
- [[R00-phmfactory代码结构]] — PHM 方向代码与对应 env

## 待人工确认

- [ ] 后 7 个 env 的名称 / 用途 / 关联项目：待拿到 `export_envs.sh` 生成的 13 个 yml 文件名后补齐表格后 7 行。
- [ ] 各 env 的 yml / pip freeze 实际存放绝对路径：记入私有区 `98_Private_LOCAL_勿提交`，本页只留私有指针。
- [ ] 复现注意点（CUDA 绑定 / Julia 版本）是否还有其他 env 带特殊约束：待逐个 yml 核对。
