# 可删除候选

**警告**: 本文件仅标记可删除候选, 禁止自动删除. 所有删除操作需人工确认.

---

## C盘可删除候选 (~30 GB)

| 原路径 | 类型 | 大小 | 原因 | 是否建议删除 |
|--------|------|------|------|-------------|
| `/mnt/c/Users/Administrator/.conda/pkgs/` | 包缓存 | 15 GB | Conda包缓存(998个包), 可通过conda clean重建 | 是, conda clean --all |
| `/mnt/c/Users/Administrator/.conda/envs/LQ38/` | Conda环境 | 7.1 GB | Conda环境, 可通过environment.yml重建 | 毕业后可删 |
| `/mnt/c/Users/Administrator/.vscode/extensions/` | 编辑器扩展 | 5.3 GB | VSCode扩展(65个), 可重新安装 | 是 |
| `/mnt/c/Users/Administrator/.codex/` | Codex数据 | 706 MB | Codex缓存数据 | 是 |
| `/mnt/c/Users/Administrator/.antigravity/extensions/` | 编辑器扩展 | 599 MB | Antigravity扩展(16个), 可重新安装 | 是 |
| `/mnt/c/Users/Administrator/.cursor/` | Cursor IDE | 413 MB | Cursor IDE数据, 可重新安装 | 是 |
| `/mnt/c/Users/Administrator/.claude/` | Claude数据 | 248 MB | Claude Code配置/历史, 非核心 | 是 |
| `/mnt/c/Users/Administrator/AppData/Local/cherrystudio-updater/` | 更新缓存 | 235 MB | CherryStudio更新缓存 | 是 |
| `/mnt/c/Users/Administrator/.cherrystudio/` | 应用数据 | 112 MB | CherryStudio数据 | 是 |
| `/mnt/c/Users/Administrator/Miniconda3-py39_4.10.3-Linux-x86_64.sh` | 安装包 | 64 MB | Miniconda安装包, 可重新下载 | 是 |
| `/mnt/c/Users/Administrator/Zotero/zotero.sqlite.1.bak` | 数据库备份 | 285 MB | Zotero数据库备份副本1 | 是 |
| `/mnt/c/Users/Administrator/Zotero/zotero.sqlite.bak` | 数据库备份 | 285 MB | Zotero数据库备份副本2 | 是 |
| `/mnt/c/Users/Administrator/Desktop/052126-20515-01.dmp` | 崩溃转储 | 5.0 MB | 崩溃转储文件, 无价值 | 是 |
| `/mnt/c/Users/Administrator/Downloads/~$*.docx` | Office临时文件 | ~1 KB | Word临时锁定文件(7个) | 是 |
| `/mnt/c/Users/Administrator/AppData/Local/Lark/security/` | 飞书日志 | 小 | 飞书加密密钥日志 | 是 |
| `/mnt/c/Users/Administrator/AppData/Roaming/LarkShell/sdk_storage/log/` | 飞书日志 | 小 | 飞书安装/启动日志 | 是 |
| `/mnt/c/Users/Administrator/AppData/Roaming/Microsoft/Office/Recent/*.LNK` | Office快捷方式 | 小 | Office最近文件快捷方式(~20个) | 是 |
| `/mnt/c/Users/Administrator/AppData/Roaming/Microsoft/Windows/Recent/*.lnk` | Windows快捷方式 | 小 | Windows最近文件快捷方式(~60个) | 是 |
| `/mnt/c/Users/Administrator/AppData/Roaming/kingsoft/duba/trashscan/` | 金山毒霸缓存 | 小 | 金山毒霸扫描缓存 | 是 |
| `/mnt/c/tmp/openclaw/` | OpenClaw日志 | 56 KB | OpenClaw日志 | 是 |
| `/mnt/c/Users/Administrator/.zai/` | ZAI日志 | 小 | MCP日志文件 | 是 |
| `/mnt/c/Users/Administrator/seafile_ext.log` | Seafile日志 | 37 KB | Seafile扩展日志 | 是 |

## D盘可删除候选 (~56 GB)

| 原路径 | 类型 | 大小 | 原因 | 是否建议删除 |
|--------|------|------|------|-------------|
| `/mnt/d/software/` | 软件安装包 | 42 GB | 已安装的软件安装包, 可重新下载 | 毕业后可删 |
| `/mnt/d/Anaconda/` | Python环境 | 4.9 GB | Anaconda环境, 可重新安装 | 毕业后可删 |
| `/mnt/d/tmp/` | 临时文件 | 2.4 GB | 临时文件(WPS/Feishu缓存) | 是 |
| `/mnt/d/$RECYCLE.BIN/` | 回收站 | 454 MB | Windows回收站 | 是 |
| `/mnt/d/360Downloads/` | 下载缓存 | 803 MB | 360下载缓存 | 是 |
| `/mnt/d/paper/thesis/.git/` | Git历史 | 171 MB | 论文Git历史(已推送到远程) | 确认远程最新后可删 |
| `/mnt/d/paper/thesis/.texlive-cache/` | TeX缓存 | 70 MB | TeX Live编译缓存 | 是 |
| `/mnt/d/paper/thesis/.obsidian/` | Obsidian缓存 | 73 MB | Obsidian笔记缓存 | 是 |
| `/mnt/d/paper/thesis/.agent/` | Agent缓存 | 小 | AI agent缓存 | 是 |
| `/mnt/d/paper/thesis/.agents/` | Agent缓存 | 小 | AI agents缓存 | 是 |
| `/mnt/d/paper/thesis/.codex/` | Codex缓存 | 小 | Codex缓存 | 是 |
| `/mnt/d/paper/thesis/.vscode/` | VSCode配置 | 小 | VSCode项目配置 | 是 |
| `/mnt/d/paper/thesis/.claude/` | Claude配置 | 小 | Claude项目配置 | 是 |
| `/mnt/d/paper/paper_25_9_vibench/.git/` | Git历史 | 98 MB | Vibench项目Git历史 | 确认远程最新后可删 |
| `/mnt/d/Anaconda/Lib/__pycache__/` | Python缓存 | 3.7 MB | Python字节码缓存 | 是 |
| `/mnt/d/新建文件夹/` | 空目录 | 0 | 空文件夹 | 是 |
| `/mnt/d/新建文件夹dataset/` | 空目录 | 0 | 空文件夹 | 是 |
| `/mnt/d/temp/` | 空目录 | 0 | 空临时文件夹 | 是 |
| `/mnt/d/mathtype/` | 空目录 | 0 | 空MathType文件夹 | 是 |
| `/mnt/d/OneDriveTemp/` | 空目录 | 0 | 空OneDrive临时文件夹 | 是 |

## E盘可删除候选 (~2.6 GB)

| 原路径 | 类型 | 大小 | 原因 | 是否建议删除 |
|--------|------|------|------|-------------|
| `/mnt/e/360RecycleBin/` | 回收站 | 516 MB | 360安全卫士回收站垃圾备份 | 是 |
| `/mnt/e/cudnn_windows/` | CUDA库 | 1.1 GB | cuDNN 8 DLL, NVIDIA官网可重新下载 | 是 |
| `/mnt/e/files to build wsl/CanonicalGroupLimited.UbuntuonWindows...AppxBundle` | 安装包 | 895 MB | Ubuntu 20.04 WSL安装包, 可重新下载 | 是 |
| `/mnt/e/360Downloads/Software/漏洞补丁目录/` | 系统补丁 | 106 MB | Office/Windows补丁包, 已安装 | 是 |
| `/mnt/e/FFOutput/` | 空临时目录 | 0 | Format Factory临时目录 | 是 |

## K盘可删除候选 (~153 GB)

| 原路径 | 类型 | 大小 | 原因 | 是否建议删除 |
|--------|------|------|------|-------------|
| `/mnt/k/5 other/Download/` | 下载缓存 | 137 GB | 旧下载目录(AI安装包/视频/音乐等) | 是 |
| `/mnt/k/迅雷下载/SW_DVD9_Win_Pro_11_25H2...ISO` | Windows ISO | 7.7 GB | Win11 ISO, 可重新下载 | 是 |
| `/mnt/k/2_work/win_download/thesis.zip` | 旧版压缩包 | 3.3 GB | 论文旧版压缩包(已有更新版) | 确认更新版完整后可删 |
| `/mnt/k/2_work/3_dataset/DIRG.zip` | 数据集压缩包 | 2.3 GB | DIRG数据集压缩包(可能已有解压版) | 确认解压版完整后可删 |
| `/mnt/k/2_work/liki/ADIG整理.zip` | 旧整理包 | 2.3 GB | ADIG旧整理包 | 确认源文件完整后可删 |
| `/mnt/k/2_work/7_12Moe/backupall/backupall.zip` | 备份包 | 1.4 GB | MoE旧备份 | 确认最新版完整后可删 |
| `/mnt/k/2_work/win_download/Acrobat2023(64bit).zip` | 软件安装包 | 1.1 GB | Acrobat安装包 | 是 |
| `/mnt/k/2_work/3_dataset/旋转机械故障诊断挑战赛公开数据.zip` | 数据集压缩包 | 1.1 GB | 可能与解压版重复 | 确认后可删 |
| `/mnt/k/1_life/3_steam/` | Steam客户端 | 1.2 GB | Steam游戏客户端文件 | 是 |
| `/mnt/k/D01_vibench/cache.h5` | HDF5缓存 | 528 MB | HDF5缓存文件, 可重新生成 | 是 |
| `/mnt/k/$RECYCLE.BIN/` | 回收站 | 40 MB | Windows回收站 | 是 |
| `/mnt/k/kingsoft/` | WPS缓存 | 347 MB | WPS自动备份, 提取有价值文件后可删 | 提取后可删 |
| `/mnt/k/新建文件夹/Richie1/helloworld-django/.venv` | Python虚拟环境 | 67 MB | Django项目虚拟环境 | 是 |
| 各项目 `__pycache__/` | Python缓存 | ~1 MB | Python字节码缓存 | 是 |
| `/mnt/k/申请答辩/~$*.pptx` (x2) | Office临时文件 | 165B x2 | PPT临时锁定文件 | 是 |
| `/mnt/k/博士后/进站材料/~$*.doc*` (x6) | Office临时文件 | 小 | Word临时锁定文件 | 是 |
| `/mnt/k/2_work/新建文件夹/` (x3) | 空目录 | 0 | 空文件夹 | 是 |
| `/mnt/k/5_other/1_cache/` | 缩略图缓存 | 小 | 缩略图缓存 | 是 |

## WSL_home 可删除候选 (~150 GB)

| 原路径 | 类型 | 大小 | 原因 | 是否建议删除 |
|--------|------|------|------|-------------|
| `/home/richie_thu/.cache/wandb/` | 实验缓存 | 35 GB | W&B实验缓存, 无需备份 | 是 |
| `/home/richie_thu/.cache/pip/` | pip缓存 | 21 GB | pip下载缓存, 可通过pip cache clean | 是 |
| `/home/richie_thu/.cache/uv/` | uv缓存 | 9.3 GB | uv包缓存 | 是 |
| `/home/richie_thu/.cache/torch/` | PyTorch缓存 | 2.1 GB | PyTorch模型hub缓存, 可重新下载 | 是 |
| `/home/richie_thu/.cache/huggingface/` | HuggingFace缓存 | 1.6 GB | HuggingFace模型缓存, 可重新下载 | 是 |
| `/home/richie_thu/.cache/ms-playwright/` | Playwright浏览器 | 631 MB | Playwright浏览器, 可重新安装 | 是 |
| `/home/richie_thu/miniconda3/pkgs/` | Conda包缓存 | 31 GB | Conda包缓存, 可通过conda clean | 是 |
| `/home/richie_thu/miniconda3/envs/` | Conda环境 | 49 GB | Conda环境, 迁移后可删 | 迁移后可删 |
| `/home/richie_thu/Richie1/deep-symbolic-optimization/PhySO/demo/demo.log` | 巨大日志 | 1.4 GB | 单个巨大日志文件 | 是 |
| `/home/richie_thu/Richie1/helloworld-django/.venv/` | Python虚拟环境 | 54 MB | Django项目虚拟环境 | 是 |
| `/home/richie_thu/_Richie_project/Deep symbolic net/fault diagnosis/save_dir_com/*/signal.npy` | 中间结果 | 5.1 GB | 16个超大中间信号npy文件 | 确认无需后可删 |
| `/home/richie_thu/_Richie_project/Deep symbolic net/rul prediction/wandb/` | W&B日志 | 487 MB | W&B训练日志 | 是 |
| `/home/richie_thu/_Richie_project/competition/logs/` + `competition/XF_FD/logs/` | TensorBoard日志 | 1.8 GB | TensorBoard事件日志 | 是 |
| `/home/richie_thu/_Richie_project/Deep symbolic net/fault diagnosis/Ottawainner/` | 中间训练结果 | 137 MB | 中间训练结果 | 是 |
| `/home/richie_thu/Richie1/DeepSymRegTorch/DSRnet/logs/` | TF事件日志 | ~200 MB | 旧TensorFlow事件日志 | 是 |
| `/home/richie_thu/Richie1/deep-symbolic-optimization/PhySO/demo/*.log` | 日志文件 | >100 MB | PhySO demo日志 | 是 |
| `__pycache__/` (多处) | Python缓存 | ~200 KB | Python字节码缓存 | 是 |
| `/home/richie_thu/.bashrc.swp` | Vim swap | 16 KB | Vim swap文件 | 是 |

---

**可删除总量汇总**: ~389 GB

| 来源 | 可释放空间 |
|------|-----------|
| C盘 | ~30 GB |
| D盘 | ~56 GB |
| E盘 | ~2.6 GB |
| K盘 | ~153 GB |
| WSL_home | ~150 GB |
