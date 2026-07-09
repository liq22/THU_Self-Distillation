#!/usr/bin/env bash
# scripts/hash_check.sh
# 对已上传到 /mnt/t/博士毕业数据总仓库_202606/ 的文件做 md5 校验, 与源对比.
# 用法: bash scripts/hash_check.sh [src_root] [dst_root]
# 默认: src_root 取自 manifests/p0_manifest.csv; dst_root=/mnt/t/博士毕业数据总仓库_202606
set -uo pipefail

SRC_ROOT="${1:-/mnt/t/A0_毕业整理_v2}"
DST_ROOT="${2:-/mnt/t/博士毕业数据总仓库_202606}"
P0_CSV="$SRC_ROOT/manifests/p0_manifest.csv"

LOG_DIR="$SRC_ROOT/_intermediate/logs"
mkdir -p "$LOG_DIR"
TS=$(date +%Y%m%d_%H%M%S)
OUT="$LOG_DIR/hash_check_${TS}.tsv"

echo -e "src_path\tdst_path\tsrc_md5\tdst_md5\tmatch\tsize_src\tsize_dst" > "$OUT"

if [[ ! -f "$P0_CSV" ]]; then
  echo "[ERR] $P0_CSV 不存在"
  exit 1
fi

tail -n +2 "$P0_CSV" | while IFS=',' read -r src dst size score domain os_card notes; do
  src="${src//\"/}"
  dst="${dst//\"/}"
  [[ -z "$src" || -z "$dst" ]] && continue

  # 单文件 (有扩展名) 才做 hash; 目录跳过
  if [[ -d "$src" ]]; then
    echo "[SKIP DIR] $src"
    continue
  fi
  if [[ ! -f "$src" ]]; then
    echo -e "$src\t$dst\tMISSING_SRC\t\t\t\t" >> "$OUT"
    continue
  fi

  dst_full="$DST_ROOT/${dst#博士毕业数据总仓库_202606/}"
  # 目标可能是目录, 补 basename
  if [[ -d "$dst_full" ]]; then
    dst_full="$dst_full/$(basename "$src")"
  fi
  if [[ ! -f "$dst_full" ]]; then
    echo -e "$src\t$dst_full\tOK\tMISSING_DST\t\t$(stat -c %s "$src" 2>/dev/null)\t" >> "$OUT"
    continue
  fi

  src_md5=$(md5sum "$src" | awk '{print $1}')
  dst_md5=$(md5sum "$dst_full" | awk '{print $1}')
  size_src=$(stat -c %s "$src")
  size_dst=$(stat -c %s "$dst_full")
  if [[ "$src_md5" == "$dst_md5" ]]; then
    match="OK"
  else
    match="MISMATCH"
  fi
  echo -e "$src\t$dst_full\t$src_md5\t$dst_md5\t$match\t$size_src\t$size_dst" >> "$OUT"
  echo "[$match] $src"
done

echo ""
echo "=== Hash 校验完成: $OUT ==="
echo "失败行 (MISMATCH / MISSING_*):"
grep -E "MISMATCH|MISSING" "$OUT" || echo "  全部通过"
