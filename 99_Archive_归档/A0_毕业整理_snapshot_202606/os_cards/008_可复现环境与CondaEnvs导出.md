# 可复现环境与 Conda Envs 导出方案

## 来源文件/目录
- `/home/richie_thu/miniconda3/envs/` (13 个 envs, 49 GB 整体)
- `/home/richie_thu/.bashrc`, `.zshrc`, `.profile`, `.condarc`, `.gitconfig`, `.tmux.conf`
- `/home/richie_thu/Richie1/DeepSymRegTorch/environment.yml`
- `/home/richie_thu/_Richie_project/U-PHM/environment.yml`
- `/mnt/d/paper/paper_25_9_vibench/config/requirements.txt`
- `/mnt/d/paper/thesis/.vscode/settings.json`
- `/mnt/c/Users/Administrator/Miniconda3-py39_4.10.3-Linux-x86_64.sh` (66.7 MB 离线安装器)

## 核心价值
博士 5 年间在符号回归 / ODE / PHM / 时序预测 / NNI 神经架构搜索 / PySR / S4 / AI Agent 等方向积累的 **13 个独立 conda 环境**, 每个对应一篇或多篇论文/会议的复现栈。环境本身 49 GB 不可整目录备份, 但通过 `conda env export` + `pip freeze` 导出为 < 5 MB 的文本清单, 即可在新机器上一键重建。这是**自蒸馏 OS 中"可复现"维度的命门**: 没有这些 yml, 论文代码即使上传也无法运行。

## 可复用知识
- LQ38 (17 GB, Python 3.8, torch 1.12.1+sympytorch) 是博士论文主 env, 必须导出
- ODE (8.1 GB, torch 1.12.1+cu116+torchdiffeq) — PhySO 论文 env, 含 CUDA 版本绑定
- NNI (6.7 GB, nni 3.0) — 神经架构搜索
- DSO (5.4 GB, Python 3.7) — Deep Symbolic Optimization, 唯一 py3.7 env, 兼容老代码
- pysr (1.3 GB, julia 1.8.1 + pysr 0.11.0) — 须先装 Julia runtime, 不是单纯 pip
- autoresearch-py311 (225 MB, Python 3.11) — LQQL_OS AI Agent 论文流水线, 最新最活跃
- 整套 dotfiles (.bashrc 204 行含自定义别名/conda init/路径; .condarc 含清华镜像源) — 决定命令行行为, 丢了等于"环境失忆"
- Miniconda 离线安装器 (66.7 MB, py39 4.10.3) — 离线/无网环境唯一可重建 conda 的钥匙

## 后续使用场景
- 代码复现: 论文一作要求复现时, 提供 `environment.yml` + `pip freeze` 即可让他们在新机器上 `conda env create -f` 一次到位
- 博后规划: 进入新实验室时, dotfiles + envs 导出是"30 分钟内重建工作环境"的秘诀
- 写论文 rebuttal / 补实验: 须复现某个特定 env 跑 ablation
- 个人简历: "构建并维护 13 个独立 conda 环境, 涵盖 SR/ODE/PHM/RL/Agent 多方向" 是工程能力证明

## 建议标签
#博士毕业 #科研资产 #可复现性 #conda #环境配置 #dotfiles #OS核心

## 建议链接
- 对应夸克路径: `毕业整理_v2/_envs/conda_envs_exported/` (13 个 yml + 13 个 pip freeze + 6 个 dotfiles + vscode 设置)
- 对应本地路径: `/home/richie_thu/miniconda3/envs/` (整目录 49 GB 留本地, 仅文本导出上传) + `/mnt/t/A0_毕业整理_v2/_intermediate/envs_exported/` (运行 `export_envs.sh` 后生成)
