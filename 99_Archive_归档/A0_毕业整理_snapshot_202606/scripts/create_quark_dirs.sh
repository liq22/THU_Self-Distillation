#!/usr/bin/env bash
# scripts/create_quark_dirs.sh
# 创建本地"博士毕业数据总仓库_202606"目录结构 (镜像夸克网盘)
# 用法: bash scripts/create_quark_dirs.sh [ROOT]
# 默认 ROOT=/mnt/t/博士毕业数据总仓库_202606
# Dry-run 默认开启. 加 EXEC=1 实际创建.
set -uo pipefail

ROOT="${1:-/mnt/t/博士毕业数据总仓库_202606}"
EXEC="${EXEC:-0}"

if [[ "$EXEC" != "1" ]]; then
  echo "[DRY-RUN] 不会实际创建目录. 设 EXEC=1 后重跑以实际创建."
  echo "[DRY-RUN] 目标根: $ROOT"
fi

mkdir_or_echo() {
  local p="$1"
  if [[ "$EXEC" == "1" ]]; then
    mkdir -p "$p" && echo "[MKDIR] $p"
  else
    echo "[DRY-MKDIR] $p"
  fi
}

# 顶层结构
mkdir_or_echo "$ROOT"
mkdir_or_echo "$ROOT/00_README"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料"
mkdir_or_echo "$ROOT/02_科研项目与代码"
mkdir_or_echo "$ROOT/03_实验数据与结果"
mkdir_or_echo "$ROOT/04_原始备份索引"
mkdir_or_echo "$ROOT/05_个人行政与证明"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS"
mkdir_or_echo "$ROOT/07_媒体与照片视频"
mkdir_or_echo "$ROOT/08_邮件与通讯录"
mkdir_or_echo "$ROOT/09_软件与配置"
mkdir_or_echo "$ROOT/_envs"
mkdir_or_echo "$ROOT/_quarantine"
mkdir_or_echo "$ROOT/99_原始备份索引"

# 01 子目录
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/博士论文定稿"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/博士论文主PDF"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/02_LaTeX源码"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/审稿打磨"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/发表小论文"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/发表小论文源码"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/参考文献库"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/参考文献库/storage"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/参考文献库/zotero_files"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/答辩录像"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/答辩录像/字幕"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/写作要求"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/盲审修改"
mkdir_or_echo "$ROOT/01_毕业论文与学位材料/论文版本历史"

# 06 答辩 PPT
mkdir_or_echo "$ROOT/06_答辩PPT"
mkdir_or_echo "$ROOT/06_答辩PPT/历史版本"
mkdir_or_echo "$ROOT/07_答辩申请"
mkdir_or_echo "$ROOT/07_答辩申请/评阅意见"
mkdir_or_echo "$ROOT/08_答辩后修改"

# 02 科研项目
mkdir_or_echo "$ROOT/02_科研项目与代码/ViBench论文项目"
mkdir_or_echo "$ROOT/02_科研项目与代码/7_11ICASSP_DeepKoopman_NSNet"
mkdir_or_echo "$ROOT/02_科研项目与代码/liki_个人代码库"
mkdir_or_echo "$ROOT/02_科研项目与代码/7_12Moe"
mkdir_or_echo "$ROOT/02_科研项目与代码/7_RL_AlphaGen"
mkdir_or_echo "$ROOT/02_科研项目与代码/7_13logic_神经符号"
mkdir_or_echo "$ROOT/02_科研项目与代码/历史项目归档"
mkdir_or_echo "$ROOT/02_科研项目与代码/TII_TON_archives"
mkdir_or_echo "$ROOT/02_科研项目与代码/_Richie_project_WSL"
mkdir_or_echo "$ROOT/02_科研项目与代码/d_code学习"
mkdir_or_echo "$ROOT/02_科研项目与代码/学习参考"
mkdir_or_echo "$ROOT/02_科研项目与代码/历史项目"
mkdir_or_echo "$ROOT/02_科研项目与代码/nsnet_logic_bundle_v2"
mkdir_or_echo "$ROOT/02_科研项目与代码/飞书会议纪要"

# 03 实验数据
mkdir_or_echo "$ROOT/03_实验数据与结果/vibench"
mkdir_or_echo "$ROOT/03_实验数据与结果/yale"
mkdir_or_echo "$ROOT/03_实验数据与结果/实验过程性"
mkdir_or_echo "$ROOT/03_实验数据与结果/3_dataset"
mkdir_or_echo "$ROOT/03_实验数据与结果/科研数据_d盘"
mkdir_or_echo "$ROOT/03_实验数据与结果/TB日志归档"
mkdir_or_echo "$ROOT/03_实验数据与结果/日志备份"
mkdir_or_echo "$ROOT/03_实验数据与结果/挑战赛"
mkdir_or_echo "$ROOT/03_实验数据与结果/DIRG"
mkdir_or_echo "$ROOT/03_实验数据与结果/PV"

# 04 原始备份索引
mkdir_or_echo "$ROOT/04_原始备份索引/Onedrive备份"
mkdir_or_echo "$ROOT/04_原始下载归档"
mkdir_or_echo "$ROOT/04_原始下载归档/win_download"

# 05 个人行政
mkdir_or_echo "$ROOT/05_个人行政与证明/博后进站"
mkdir_or_echo "$ROOT/05_个人行政与证明/启航奖"
mkdir_or_echo "$ROOT/05_个人行政与证明/优秀毕业生"
mkdir_or_echo "$ROOT/05_个人行政与证明/会员证书"
mkdir_or_echo "$ROOT/05_个人行政与证明/CV"
mkdir_or_echo "$ROOT/05_个人行政与证明/硕士毕业资料"

# 06 知识系统
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/LQQL_OS_全仓"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/LQQL_OS_core"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/canonical_skills"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/全局skills库"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/project_report"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/thesis_仓库_agent配置"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/论文流水线"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/论文流水线/P03_nesy_phm_review"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/论文流水线/R00-phmfactory"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/ViBench_论文复盘文档"
mkdir_or_echo "$ROOT/06_知识系统与自蒸馏OS/个人主页"

# 07 媒体
mkdir_or_echo "$ROOT/07_媒体与照片视频/答辩录像"
mkdir_or_echo "$ROOT/07_媒体与照片视频/学术咨询录音"
mkdir_or_echo "$ROOT/07_媒体与照片视频/照片"

# 08 邮件
mkdir_or_echo "$ROOT/08_邮件与通讯录"

# 09 软件配置
mkdir_or_echo "$ROOT/09_软件与配置/dotfiles"
mkdir_or_echo "$ROOT/09_软件与配置/conda_envs_exported"

# _envs
mkdir_or_echo "$ROOT/_envs/conda_envs_exported"
mkdir_or_echo "$ROOT/_envs/dotfiles"

echo "完成. 总仓库根目录: $ROOT"
echo "下一步: bash scripts/copy_p0_dryrun.sh (dry-run 模拟复制 P0)"
