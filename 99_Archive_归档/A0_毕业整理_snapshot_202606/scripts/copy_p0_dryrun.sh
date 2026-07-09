#!/usr/bin/env bash
# scripts/copy_p0_dryrun.sh
# 模拟复制 P0 (S 级) 资产到 /mnt/t/博士毕业数据总仓库_202606/
# 用法: bash scripts/copy_p0_dryrun.sh
# Dry-run: rsync -avhn (默认)
set -uo pipefail

ROOT="${ROOT:-/mnt/t/博士毕业数据总仓库_202606}"
SRC_ROOT="/mnt/t/A0_毕业整理_v2"
P0_CSV="$SRC_ROOT/manifests/p0_manifest.csv"

if [[ ! -f "$P0_CSV" ]]; then
  echo "[ERR] P0 manifest 不存在: $P0_CSV"
  exit 1
fi

# 通用 exclude 规则
EXCLUDES=(
  --exclude='.git/'
  --exclude='__pycache__/'
  --exclude='.conda/'
  --exclude='wandb/'
  --exclude='checkpoints/'
  --exclude='cache/'
  --exclude='.env'
  --exclude='.DS_Store'
  --exclude='*.pyc'
  --exclude='*.aux'
  --exclude='*.log'
  --exclude='*.fls'
  --exclude='*.fdb_latexmk'
  --exclude='*.synctex.gz'
  --exclude='*.bbl'
  --exclude='*.blg'
  --exclude='_build/'
  --exclude='.ipynb_checkpoints/'
  --exclude='node_modules/'
  --exclude='$RECYCLE.BIN/'
  --exclude='360RecycleBin/'
  --exclude='System Volume Information/'
)

echo "=== P0 Dry-Run 复制计划 ==="
echo "目标根: $ROOT"
echo "清单: $P0_CSV"
echo "模式: rsync -avhn (模拟, 不实际写)"
echo ""

# 跳过 header, 解析 CSV
tail -n +2 "$P0_CSV" | while IFS=',' read -r src dst size score domain os_card notes; do
  # 去除可能的引号
  src="${src//\"/}"
  dst="${dst//\"/}"
  if [[ -z "$src" || -z "$dst" ]]; then continue; fi

  echo "--- [$score] $src -> $dst"
  if [[ -e "$src" ]]; then
    rsync -avhn "${EXCLUDES[@]}" "$src" "$ROOT/${dst#博士毕业数据总仓库_202606/}"
  else
    echo "[WARN] 源不存在: $src"
  fi
  echo ""
done

echo "=== Dry-Run 完成 ==="
echo "下一步: 编辑 scripts/copy_p0_execute.sh 把 USER_CONFIRMED 改为 1 后实际执行"
