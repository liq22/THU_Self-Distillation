# 验证报告

**生成时间**: 2026-06-08
**验证范围**: /mnt/t/A0_毕业整理/ 下全部8个输出文件

---

## 1. 文件存在性检查

| 文件 | 状态 | 大小 |
|------|------|------|
| 00_summary.md | 存在 | 5.6 KB |
| 01_upload_priority.md | 存在 | 9.3 KB |
| 02_high_value_files.csv | 存在 | 8.5 KB |
| 03_high_value_dirs.csv | 存在 | 6.5 KB |
| 04_os_distill_plan.md | 存在 | 5.0 KB |
| 05_sensitive_files.md | 存在 | 7.2 KB |
| 06_delete_candidates.md | 存在 | 10.0 KB |
| 07_next_actions.md | 存在 | 3.8 KB |

**结论**: 8/8 文件全部存在, 均非空文件. **PASS**

---

## 2. P0 路径抽查

从 01_upload_priority.md P0 段抽取前 15 个原路径, 逐个 ls 验证:

| # | 原路径 | 状态 |
|---|--------|------|
| 1 | /mnt/d/paper/thesis/定稿/ | 存在 |
| 2 | /mnt/d/paper/thesis/LQ_<学号_redacted>_thesis.pdf | 存在 |
| 3 | /mnt/d/paper/thesis/0_送审版本/ | 存在 |
| 4 | /mnt/d/paper/thesis/data/ | 存在 |
| 5 | /mnt/d/paper/thesis/figures/ | 存在 |
| 6 | /mnt/d/paper/thesis/ref/ | 存在 |
| 7 | /mnt/d/paper/thesis/_reviewer_pro/ | 存在 |
| 8 | /mnt/d/paper/thesis/LQ/小论文正式版/ | 存在 |
| 9 | /mnt/d/paper/thesis/LQ/小论文tex版/ | 存在 |
| 10 | /mnt/k/申请答辩/毕业答辩V5.pptx | 存在 |
| 11 | /mnt/k/申请答辩/毕业答辩V4.2.pptx | 存在 |
| 12 | /mnt/k/申请答辩/毕业答辩V4.3.pptx | 存在 |
| 13 | C盘 毕业答辩V6.pptx | 存在 |
| 14 | /mnt/k/2_work/win_download/D-机械系博士学位论文-李奇.pdf | 存在 |
| 15 | /mnt/k/博士后/进站材料/ | 存在 |

**结论**: 15/15 P0 原路径全部验证存在. **PASS**

---

## 3. CSV 验证

### 02_high_value_files.csv
- 表头: 评分,原路径,文件名,扩展名,大小,修改时间,建议夸克路径,是否建议进自蒸馏OS,原因,备注 (10列)
- 全部 46 行字段数一致, 均为 10 列.
- **PASS**

### 03_high_value_dirs.csv
- 表头: 评分,原路径,目录名,总大小,文件数量,建议夸克路径,建议处理方式,原因,备注 (9列)
- 全部 37 行字段数一致, 均为 9 列.
- **PASS**

---

## 4. 敏感内容检查

对 05_sensitive_files.md 进行扫描:
- 文件仅包含路径和分类信息 (类型/风险/建议).
- 未发现实际密码明文、Token 值 (sk-/ghp-/eyJ/AKIA 等)、私钥内容.
- 所有条目均以表格形式列出路径和风险等级, 未泄露文件内容.
- 共计 26 个需关注的安全项, 分类清晰 (SSH密钥/API Token/Docker-Jupyter/证件扫描件/电子签名/邮件通知).

**结论**: 无敏感内容泄露. **PASS**

---

## 5. 夸克路径格式检查

- 统一前缀: 博士毕业数据总仓库_202606/
- 01_upload_priority.md 中使用格式正确, 前缀一致.
- CSV 中建议夸克路径均以 `博士毕业数据总仓库_202606/` 开头.
- 涵盖的顶层分类目录:
  - 01_毕业论文与学位材料
  - 02_科研项目与代码
  - 03_实验数据与结果
  - 04_工具链与配置
  - 05_个人行政与证明
  - 06_照片录音视频
  - 99_各来源原始备份

**结论**: 夸克路径格式一致正确. **PASS**

---

## 总结

| 检查项 | 结果 |
|--------|------|
| 1. 文件存在性 (8个) | PASS |
| 2. P0路径抽查 (15个) | PASS |
| 3. CSV字段一致性 | PASS |
| 4. 无敏感内容泄露 | PASS |
| 5. 夸克路径格式正确 | PASS |

**全部 5 项检查通过. 输出文件完整、格式正确、无安全风险.**
