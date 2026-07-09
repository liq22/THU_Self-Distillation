#!/usr/bin/env bash
# scripts/copy_p0_execute.sh
# 实际复制 P0 (S 级) 资产. **必须人工确认** USER_CONFIRMED=1 后才执行.
# 用法: 编辑本文件把 USER_CONFIRMED=0 改为 1, 然后 bash scripts/copy_p0_execute.sh
set -euo pipefail

USER_CONFIRMED=0   # !!! 改为 1 才会实际执行 !!!

if [[ "$USER_CONFIRMED" != "1" ]]; then
  echo "[REFUSE] USER_CONFIRMED=0. 请打开本脚本, 把 USER_CONFIRMED 改为 1 后再跑."
  echo "[REFUSE] 同时请先用 scripts/copy_p0_dryrun.sh 模拟确认无误."
  exit 1
fi

ROOT="${ROOT:-/mnt/t/博士毕业数据总仓库_202606}"
SRC_ROOT="/mnt/t/A0_毕业整理_v2"
P0_CSV="$SRC_ROOT/manifests/p0_manifest.csv"

if [[ ! -f "$P0_CSV" ]]; then
  echo "[ERR] P0 manifest 不存在: $P0_CSV"
  exit 1
fi

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
)

LOG_DIR="$SRC_ROOT/_intermediate/logs"
mkdir -p "$LOG_DIR"
TS=$(date +%Y%m%d_%H%M%S)
LOG="$LOG_DIR/copy_p0_${TS}.log"

echo "=== P0 实际复制 ==="
echo "目标根: $ROOT"
echo "日志: $LOG"
read -p "回车继续, Ctrl-C 中止: " _ok

tail -n +2 "$P0_CSV" | while IFS=',' read -r src dst size score domain os_card notes; do
  src="${src//\"/}"
  dst="${dst//\"/}"
  if [[ -z "$src" || -z "$dst" ]]; then continue; fi
  echo "[$(date +%T)] COPY [$score] $src -> $dst" | tee -a "$LOG"
  if [[ -e "$src" ]]; then
    rsync -avh "${EXCLUDES[@]}" --stats "$src" "$ROOT/${dst#博士毕业数据总仓库_202606/}" 2>&1 | tee -a "$LOG"
  else
    echo "[WARN] 源不存在: $src" | tee -a "$LOG"
  fi
done

echo "=== P0 复制完成. 日志: $LOG ==="
echo "下一步: bash scripts/hash_check.sh 验证完整性"
