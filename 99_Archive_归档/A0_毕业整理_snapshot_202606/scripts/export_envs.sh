#!/usr/bin/env bash
# scripts/export_envs.sh
# 对每个 conda env 生成 environment.yml + pip freeze.
# 用法: bash scripts/export_envs.sh [DST_DIR]
# 默认 DST_DIR=/mnt/t/博士毕业数据总仓库_202606/_envs/conda_envs_exported
set -uo pipefail

DST_DIR="${1:-/mnt/t/博士毕业数据总仓库_202606/_envs/conda_envs_exported}"
mkdir -p "$DST_DIR"

CONDA="${CONDA_EXE:-conda}"
ENVS_DIR="${ENVS_DIR:-/home/richie_thu/miniconda3/envs}"

if ! command -v "$CONDA" >/dev/null 2>&1; then
  echo "[ERR] conda 未找到. 设 CONDA_EXE=/path/to/conda"
  exit 1
fi

if [[ ! -d "$ENVS_DIR" ]]; then
  echo "[ERR] envs 目录不存在: $ENVS_DIR"
  exit 1
fi

echo "=== Export conda envs -> $DST_DIR ==="

for env_path in "$ENVS_DIR"/*; do
  [[ -d "$env_path" ]] || continue
  env_name=$(basename "$env_path")
  echo ""
  echo "[ENV] $env_name"

  out_yml="$DST_DIR/${env_name}.environment.yml"
  out_pip="$DST_DIR/${env_name}.pip.freeze.txt"
  out_explicit="$DST_DIR/${env_name}.explicit.txt"

  # environment.yml (跨平台)
  "$CONDA" env export -n "$env_name" --no-builds > "$out_yml" 2>/dev/null || {
    echo "[WARN] $env_name env export 失败"; continue; }

  # pip freeze
  if [[ -x "$env_path/bin/pip" ]]; then
    "$env_path/bin/pip" freeze > "$out_pip" 2>/dev/null || echo "[WARN] $env_name pip freeze 失败"
  fi

  # explicit (同平台精确复现)
  "$CONDA" list --explicit -n "$env_name" > "$out_explicit" 2>/dev/null || true

  echo "  -> $out_yml ($(wc -l < "$out_yml") 行)"
  [[ -f "$out_pip" ]] && echo "  -> $out_pip ($(wc -l < "$out_pip") 行)"
done

# dotfiles
DOT_DIR="$DST_DIR/../dotfiles"
mkdir -p "$DOT_DIR"
for f in .bashrc .zshrc .profile .condarc .gitconfig .tmux.conf .vimrc; do
  src="/home/richie_thu/$f"
  if [[ -f "$src" ]]; then
    # 脱敏: 删除含 token/key/secret 的行
    grep -vE "(token|key|secret|password|passwd|api_key)" "$src" > "$DOT_DIR/${f}.sanitized" 2>/dev/null
    echo "[DOT] $src -> $DOT_DIR/${f}.sanitized"
  fi
done

echo ""
echo "=== Export 完成: $DST_DIR ==="
