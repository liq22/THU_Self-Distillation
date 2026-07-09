#!/usr/bin/env python3
"""
scripts/generate_readme.py
扫描目标目录, 在每个一级/二级子目录生成 README.md.
用法: python3 scripts/generate_readme.py --root /mnt/t/博士毕业数据总仓库_202606 [--depth 2]
"""
import argparse
import os
import sys
from pathlib import Path
from datetime import datetime


def fmt_size(num_bytes: int) -> str:
    n = float(num_bytes)
    for unit in ['B', 'KB', 'MB', 'GB', 'TB']:
        if n < 1024.0 or unit == 'TB':
            return f"{n:.2f} {unit}"
        n /= 1024.0
    return f"{n:.2f} TB"


def count_dir(path: Path):
    """返回 (文件数, 总字节, 最近修改时间)"""
    file_count = 0
    total_bytes = 0
    latest_mtime = 0.0
    for p in path.rglob('*'):
        try:
            if p.is_file():
                st = p.stat()
                file_count += 1
                total_bytes += st.st_size
                if st.st_mtime > latest_mtime:
                    latest_mtime = st.st_mtime
        except (PermissionError, OSError):
            continue
    return file_count, total_bytes, latest_mtime


def list_top(path: Path, max_items: int = 20):
    """列出顶层子项 (按大小降序, 截断 max_items)"""
    items = []
    try:
        for child in path.iterdir():
            if child.name.startswith('.') and child.name != '.git':
                continue
            try:
                if child.is_file():
                    size = child.stat().st_size
                    kind = 'file'
                elif child.is_dir():
                    # 不深入算大小, 用 du 之类会很慢; 仅标 dir
                    size = 0
                    kind = 'dir'
                else:
                    continue
                items.append((child.name, kind, size))
            except (PermissionError, OSError):
                continue
    except (PermissionError, OSError):
        return []
    items.sort(key=lambda x: -x[2])
    return items[:max_items]


def write_readme(target_dir: Path, depth: int, current_depth: int = 0):
    if not target_dir.is_dir():
        return
    if target_dir.name.startswith('.') and target_dir.name != '.git':
        return
    if target_dir.name in {'__pycache__', 'node_modules', '.git', 'wandb', '.cache'}:
        return

    readme = target_dir / 'README.md'
    if readme.exists():
        # 不覆盖已有 README, 但追加更新时间戳
        with open(readme, 'a', encoding='utf-8') as fh:
            fh.write(f"\n> 自动更新: {datetime.now().isoformat(timespec='seconds')}\n")
    else:
        file_count, total_bytes, latest_mtime = count_dir(target_dir)
        items = list_top(target_dir)
        rel = target_dir.as_posix()
        with open(readme, 'w', encoding='utf-8') as fh:
            fh.write(f"# {target_dir.name}\n\n")
            fh.write(f"- **目录**: `{rel}`\n")
            fh.write(f"- **生成时间**: {datetime.now().isoformat(timespec='seconds')}\n")
            fh.write(f"- **文件数**: {file_count}\n")
            fh.write(f"- **总大小**: {fmt_size(total_bytes)}\n")
            if latest_mtime:
                fh.write(f"- **最近修改**: {datetime.fromtimestamp(latest_mtime).date()}\n")
            if items:
                fh.write("\n## 顶层子项\n\n")
                fh.write("| 名称 | 类型 | 大小 |\n|---|---|---:|\n")
                for name, kind, size in items:
                    sz = fmt_size(size) if kind == 'file' else '-'
                    fh.write(f"| {name} | {kind} | {sz} |\n")
            fh.write("\n## 用途\n\n<!-- 在此填写本目录的用途、来源、是否进入 OS、敏感等级 -->\n\n")
            fh.write("## 维护\n\n<!-- 备份/恢复/复现步骤 -->\n")

    # 递归到下一级 (depth 限制)
    if current_depth < depth:
        try:
            for child in target_dir.iterdir():
                if child.is_dir():
                    write_readme(child, depth, current_depth + 1)
        except (PermissionError, OSError):
            pass


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--root', required=True, help='目标根目录')
    parser.add_argument('--depth', type=int, default=2, help='递归深度 (默认 2)')
    args = parser.parse_args()
    root = Path(args.root).resolve()
    if not root.is_dir():
        print(f"[ERR] 根目录不存在: {root}", file=sys.stderr)
        sys.exit(1)
    print(f"[INFO] 生成 README.md 至 {root} (深度 {args.depth})")
    write_readme(root, args.depth, 0)
    print("[OK] 完成")


if __name__ == '__main__':
    main()
