---
title: 30 分钟重建 conda 环境 SOP（给师弟妹）
created: 2026-07-09
updated: 2026-07-09
type: legacy-guide
status: growing
visibility: internal
tags: [conda, 可复现性, dotfiles, SOP, legacy, 师弟妹]
audience: junior
related:
  - "[[博士论文结构总览]]"
  - "[[ViBench项目closeout]]"
  - "[[R00-phmfactory代码结构]]"
  - "[[13个env清单]]"
---

# 30 分钟重建 conda 环境 SOP（给师弟妹）

> 来源: OS 卡片 `008_可复现环境与CondaEnvs导出.md`（A0_毕业整理）
> 整理日期: 2026-07-09
> 适用范围: 新机器（含博后入职新实验室、论文一作要求复现）一键重建博士期 13 个 conda 环境

---

## 边界说明

这页是写给师弟妹 / 自己博后入职的**新机器环境重建 SOP**：换了一台 Linux 工作站，怎么在 30 分钟内把博士期所有论文的运行环境恢复到位。

它解决的是"**论文代码即使上传也无法运行**"这条复现命门——代码上传 GitHub 不等于可复现，缺了 `environment.yml` + `pip freeze` + dotfiles，下游拿到代码也跑不起来。

**这页是什么**：离线安装器 + 13 个 env 清单 + dotfiles + vscode 设置的**部署流程与判据**。
**这页不是什么**：不是 13 个 env 各自装了什么包。每个 env 的用途、关联项目、实际 yml 位置见 [[13个env清单]]。

dotfiles 里的 `.condarc` 镜像源（清华源等）可公开，但**提交前已确认不含 token / auth**；任何含密钥的私钥 / `.env` / `auth.json` 不进本页，只在私有区记指针。

---

## 适合谁读

- 博后入职新实验室、要在新工作站上恢复博士期所有论文运行环境的人。
- 第一次给论文一作 / 合作者准备"可复现环境包"、不知道该交什么的人。
- 想把"换机即重建"工程化、避免每次都从零配 conda 的人。

## 读完能做什么

- 知道一键重建需要哪 **4 类资产**（离线安装器 / env 清单 / dotfiles / vscode 设置），以及它们各自解决什么断点。
- 知道新机器上从零到 13 个 env 就绪的标准步骤与顺序。
- 避开"只导 yml 漏了 pip 包 / dotfiles 丢了等于环境失忆 / Julia 类 env 单靠 pip 装不上"三个最常见的坑。

## 前置条件

- 新机器是 Linux x86_64（与博士期工作站一致）；Windows 侧可走 WSL2。
- 手头有 4 类资产的一份拷贝（U 盘 / 网盘 / 私有仓库克隆），具体存放位置见下文"四类资产清单"。
- 各 env 的实际 `environment.yml` 已由 `export_envs.sh` 导出（导出方法见下文"导出"小节）。

## 四类资产清单

整套"可复现包"不是 49 GB 的 `envs/` 整目录（太大、不可整目录备份），而是 < 5 MB 的**文本清单 + 配置**，分四类：

| 资产 | 解决的断点 | 体量 |
|---|---|---|
| **Miniconda 离线安装器** | 无网 / 离线环境唯一能重建 conda 的钥匙；没有它，新机器连 conda 都没有 | 66.7 MB（`Miniconda3-py39_4.10.3-Linux-x86_64.sh`） |
| **13 个 environment.yml + 13 个 pip freeze** | 每个 env 的 conda 包 + pip 包全量清单；`conda env create -f` 一次到位 | 合计 < 5 MB 文本 |
| **dotfiles**（`.bashrc` / `.zshrc` / `.profile` / `.condarc` / `.gitconfig` / `.tmux.conf`） | 决定命令行行为：自定义别名、conda init、PATH、清华镜像源；丢了等于"环境失忆" | 6 个文件，`.bashrc` 约 204 行 |
| **vscode `settings.json`** | 编辑器行为（Python 解释器绑定、lint、格式化）；论文项目 `.vscode/settings.json` | 单文件 |

> 关键认知：**49 GB 的 `envs/` 整目录留在本地原机器不备份**，只备份上面这 < 5 MB 的文本清单。重建靠的是"装 Miniconda → 逐个 `conda env create -f`"，不是拷贝整目录。

## 标准流程

### 1. 装好 Miniconda 基座

```bash
bash Miniconda3-py39_4.10.3-Linux-x86_64.sh -b -p $HOME/miniconda3
# -b 静默安装，-p 指定路径；装完 source 一下让 conda 进 PATH
source $HOME/miniconda3/bin/activate
```

判据：`conda --version` 能出版本号。离线 / 无网场景下，**离线安装器是唯一入口**，务必随包携带。

### 2. 落 dotfiles，恢复命令行行为

把 6 个 dotfiles 放回 `$HOME/`，重点核对：

- `.bashrc` / `.zshrc`：自定义别名、`conda init` 段、PATH（这一步决定后续 `conda activate <env>` 能不能用）。
- `.condarc`：清华镜像源（conda 装包走国内镜像，否则后续重建会卡在下载）。
- `.gitconfig`：用户名 / 邮箱（**提交前确认无 token / 凭据**，密钥类不放公开仓）。
- `.tmux.conf`：会话行为。

> `.condarc` 镜像源可写进公开页，但提交前必须确认里面**没有 token / auth 字段**；任何 `.netrc` / 凭据 / 私钥只在私有区记指针。

### 3. 逐个 `conda env create -f` 重建 13 个 env

```bash
# 对每个 env：
conda env create -f <env>/environment.yml
# 若该 env 还依赖 pip 包（yml 里没覆盖全），进入 env 后补 pip freeze
conda activate <env>
pip install -r <env>/pip_freeze.txt
```

13 个 env 的**名称、用途、关联项目、实际 yml 存放位置**见 [[13个env清单]]，本页不重复列。

> 重建顺序建议：先建主 env（LQ38 / autoresearch-py311），再建论文专用 env（ODE / DSO / pysr 等）。pysr 这类需 Julia runtime 的 env 不能纯靠 pip，见下文"常见坑"。

### 4. 落 vscode settings，绑定解释器

把论文项目的 `.vscode/settings.json` 放回对应项目目录，确认 `python.defaultInterpreterPath` 指向正确的 env python（如 `$HOME/miniconda3/envs/LQ38/bin/python`）。

### 5. 冒烟验证

每个 env 至少跑一次"该 env 对应论文的入口脚本"或 `python -c "import torch; print(torch.__version__)"`，确认核心依赖（torch / julia / nni）能 import。13 个 env 验证清单见 [[13个env清单]]。

## 导出（原机器端，做一次就够）

这套"可复现包"是在**原博士工作站**上由 `export_envs.sh` 一次性导出的，导出动作只做一次：

- 运行 `export_envs.sh`，对 `~/miniconda3/envs/` 下 13 个 env 各执行 `conda env export` + `pip freeze`。
- 导出产物（13 个 yml + 13 个 pip freeze + 6 个 dotfiles + vscode settings）的**存放位置是私有指针**（涉及本地绝对路径与可能含敏感配置的 dotfiles），见下"敏感原件指针"。

## 常见坑

| 坑 | 表现 | 解决办法 |
|---|---|---|
| 只导 `environment.yml` 漏 pip 包 | `conda env create -f` 后仍 `ModuleNotFoundError` | pip 装的包不在 yml 里，必须同时带 `pip freeze` 并 `pip install -r` |
| dotfiles 丢了 | 命令行别名 / `conda init` / PATH 全没，等于"环境失忆" | dotfiles 必须随包携带，不是可选项 |
| pysr 类 env 单靠 pip 装不上 | `import pysr` 报 Julia 相关错误 | pysr 依赖 Julia runtime（julia 1.8.1）+ pysr 0.11.0，须先装 Julia，不是纯 pip |
| CUDA 版本绑定 | ODE env（torch 1.12.1+cu116）在新机器 CUDA 版本不匹配时报错 | yml 里带 `+cu116`，新机器驱动要兼容对应 CUDA 版本 |
| `.condarc` 含 token | 镜像源里混进了私钥 / 凭据 | 提交前确认 `.condarc` 只剩镜像 URL，无 auth 字段 |
| 拷 49 GB 整目录当备份 | 又慢又不可移植，换机即废 | 永远只备份 < 5 MB 文本清单，重建靠 `conda env create` |

## 检查清单

- [ ] Miniconda 离线安装器已携带（66.7 MB，离线唯一钥匙）
- [ ] 13 个 `environment.yml` + 13 个 `pip freeze` 全部就位
- [ ] 6 个 dotfiles 落回 `$HOME/`，`conda activate` 可用
- [ ] `.condarc` 镜像源已确认无 token / auth
- [ ] vscode `settings.json` 落回论文项目，解释器路径正确
- [ ] 每个 env 至少跑过一次冒烟验证（import torch / julia / nni）
- [ ] pysr 类 Julia env 已单独装 Julia runtime
- [ ] 公开仓不含私钥 / `.env` / 凭据原件（只在私有区记指针）

## 敏感原件指针

> 以下为**流程方法型**信息。实际导出产物（含可能含敏感配置的 dotfiles 全文、本地绝对路径）属大体积 / 敏感资产，**只记私有指针**：

- 导出脚本：`export_envs.sh`（原博士工作站）
- 导出产物存放位置：私有指针，见 `98_Private_LOCAL_勿提交` 私有区（绝对路径记于私有区，公开页不内联）。
- 49 GB 的 `~/miniconda3/envs/` 整目录：留本地原机器，不备份、不上传。

## 示例

LQ38 是博士论文主 env（17 GB，Python 3.8，torch 1.12.1 + sympytorch）。它的重建不是拷 17 GB 目录，而是：拿到 `LQ38/environment.yml` + `LQ38/pip_freeze.txt` → `conda env create -f LQ38/environment.yml` → `pip install -r LQ38/pip_freeze.txt` → 冒烟 `python -c "import sympytorch"`。文本清单 < 1 MB，重建后与原 env 等价。其余 12 个 env 同理，清单见 [[13个env清单]]。

## 延伸阅读

- [[13个env清单]] — 13 个 conda env 的名称 / 用途 / 关联项目 / yml 位置（与本页配套）
- [[博士论文结构总览]] — 各 env 对应哪篇论文章节
- [[ViBench项目closeout]] — ViBench 论文（paper_25_9_vibench）对应的 env 与复现
- [[R00-phmfactory代码结构]] — PHM 方向代码结构与对应 env

## 关联

- [[13个env清单]]
- [[博士论文结构总览]]
- [[ViBench项目closeout]]
- [[R00-phmfactory代码结构]]
