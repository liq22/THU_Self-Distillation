# 敏感文件清单

**警告**: 本文件仅记录路径和类型, 绝不输出文件内容. 上传夸克前必须排除以下文件.

---

## SSH 密钥

| 原路径 | 类型 | 风险 | 建议 |
|--------|------|------|------|
| `/mnt/c/Users/Administrator/.ssh/id_rsa` | SSH私钥(RSA) | 高 -- 可用于登录远程服务器 | 上传前排除, 单独安全存储 |
| `/mnt/c/Users/Administrator/.ssh/id_rsa.pub` | SSH公钥(RSA) | 低 -- 公钥可公开 | 可上传 |
| `/mnt/c/Users/Administrator/.ssh/Lq2511.pem` | PEM证书 | 高 -- 云服务器SSH密钥 | 上传前排除 |
| `/mnt/c/Users/Administrator/.ssh/config` | SSH配置 | 中 -- 含服务器地址和用户名 | 上传前排除 |
| `/mnt/c/Users/Administrator/.ssh/known_hosts` | SSH已知主机 | 低 -- 含连接过的服务器指纹 | 可上传 |
| `/home/richie_thu/.ssh/id_rsa` | SSH私钥(RSA) | 高 -- WSL的RSA私钥 | 上传前排除 |
| `/home/richie_thu/.ssh/id_rsa.pub` | SSH公钥(RSA) | 低 -- 公钥可公开 | 可上传 |
| `/home/richie_thu/.ssh/id_ed25519` | SSH私钥(Ed25519) | 高 -- WSL的Ed25519私钥 | 上传前排除 |
| `/home/richie_thu/.ssh/id_ed25519.pub` | SSH公钥(Ed25519) | 低 -- 公钥可公开 | 可上传 |
| `/mnt/k/2_work/win_download/id_rsa.pub` | SSH公钥 | 低 -- 仅有公钥 | 可上传 |
| `/mnt/k/5_other/Download/LightsailDefaultKey-us-west-2.pem` | AWS PEM密钥 | 高 -- AWS Lightsail私钥 | 上传前排除 |
| `/mnt/k/5_other/Download/Lq2511.pem` | PEM密钥 | 高 -- SSH私钥(与C盘同文件副本) | 上传前排除 |
| `/mnt/k/5_other/Download/Lq2511 (1).pem` | PEM密钥副本 | 高 -- SSH私钥副本 | 上传前排除 |

## API 密钥 / Token / 凭证

| 原路径 | 类型 | 风险 | 建议 |
|--------|------|------|------|
| `/home/richie_thu/.netrc` | API Token(W&B) | 高 -- 含wandb.ai API token | 上传前排除, 备份后删除token |
| `/mnt/c/Users/Administrator/.antigravity_cockpit/credentials.json` | 凭证文件 | 高 -- Antigravity Cockpit凭证 | 上传前排除 |
| `/mnt/c/Users/Administrator/.streamlit/credentials.toml` | 凭证文件 | 中 -- Streamlit凭证 | 上传前排除 |
| `/mnt/c/Users/Administrator/.codex/.sandbox-secrets/sandbox_users.json` | 凭证文件 | 高 -- Codex沙箱用户信息 | 上传前排除 |
| `/mnt/c/Users/Administrator/.openclaw/identity/device-auth.json` | 设备认证 | 中 -- 设备身份认证 | 上传前排除 |
| `/mnt/c/Users/Administrator/.openclaw/identity/device.json` | 设备信息 | 中 -- 设备信息 | 上传前排除 |
| `/mnt/k/2_work/LQQL_OS/.codex/.env` | 环境变量(API密钥) | 高 -- 含API密钥(75字节) | 上传前排除 |
| `/mnt/k/2_work/LQQL_OS/lqql_06_工作与项目/03_论文流水线/P02_agent_langraph/.env` | 环境变量 | 高 -- 项目配置含密钥 | 上传前排除 |
| `/mnt/k/5_other/Download/a_feishu/PHMGA-NVTA_2025_Version/.../PHMGA-NVTA_2025_Version/.env` | 环境变量 | 中 -- 项目配置 | 上传前排除 |

## Docker / Jupyter 密钥

| 原路径 | 类型 | 风险 | 建议 |
|--------|------|------|------|
| `/home/richie_thu/.docker/.token_seed` | Docker Token | 中 -- Docker凭据种子 | 上传前排除 |
| `/home/richie_thu/.docker/.token_seed.lock` | Docker Token锁 | 低 -- 锁文件 | 可上传 |
| `/home/richie_thu/.local/share/jupyter/notebook_secret` | Jupyter密钥 | 中 -- Notebook密钥 | 上传前排除 |
| `/home/richie_thu/.local/share/jupyter/runtime/notebook_cookie_secret` | Jupyter Cookie | 中 -- Cookie密钥 | 上传前排除 |

## 证件扫描件

| 原路径 | 类型 | 风险 | 建议 |
|--------|------|------|------|
| `/mnt/d/drive/OneDrive.../999 博士入学/1. 入学文件/李奇 身份证.pdf` | 身份证 | 高 -- 身份证扫描件 | 加密存储, 限制访问 |
| `/mnt/d/drive/OneDrive.../999 博士入学/1. 入学文件/李奇 身份证.png` | 身份证 | 高 -- 身份证扫描件 | 加密存储, 限制访问 |
| `/mnt/d/drive/OneDrive.../999 博士入学/1. 入学文件/李奇 学生证.pdf` | 学生证 | 中 -- 学生证 | 加密存储 |
| `/mnt/d/drive/OneDrive.../999 博士入学/1. 入学文件/李奇 本科&硕士毕业证+学位证.pdf` | 毕业证+学位证 | 中 -- 学历证明 | 加密存储 |
| `/mnt/d/drive/OneDrive.../0 过程管理/6 社会实践/李奇 学生证.pdf` | 学生证 | 中 -- 学生证副本 | 加密存储 |
| `/mnt/d/drive/OneDrive.../0 过程管理/6 社会实践/李奇 本科&硕士毕业证+学位证.pdf` | 毕业证+学位证 | 中 -- 学历证明副本 | 加密存储 |
| `/mnt/d/drive/OneDrive.../999 博士入学/9. 入学前资格审查材料/成绩单原件.pdf` | 成绩单 | 中 -- 学业成绩 | 加密存储 |
| `/mnt/d/drive/OneDrive.../0 过程管理/6 社会实践/硕士学位证书s.jpg` | 硕士学位证 | 中 -- 学位证明 | 加密存储 |
| `/mnt/d/drive/OneDrive.../0 过程管理/6 社会实践/硕士毕业证书s.jpg` | 硕士毕业证 | 中 -- 学历证明 | 加密存储 |

## 电子签名 / 财务

| 原路径 | 类型 | 风险 | 建议 |
|--------|------|------|------|
| `/mnt/d/drive/OneDrive.../_博生活_Richie/签名大.png` | 电子签名 | 高 -- 可被冒用签名 | 加密存储, 限制访问 |
| `/mnt/d/drive/OneDrive.../_博生活_Richie/签名亮2.0.jpg` | 电子签名 | 高 -- 可被冒用签名 | 加密存储, 限制访问 |
| `/mnt/d/drive/OneDrive.../_博工作_Richie/7IEEEmenber/liqi_ieee收据.pdf` | IEEE缴费收据 | 低 -- 财务凭证 | 可上传 |
| `/mnt/d/drive/OneDrive.../_博工作_Richie/7IEEEmenber/liqi_微信支付记录.jpg` | 支付记录 | 低 -- 支付凭证 | 可上传 |

## 邮件中的敏感通知

| 原路径 | 类型 | 风险 | 建议 |
|--------|------|------|------|
| `/mnt/k/mails/2025-06-05 ... [GitHub] A personal access token...eml` (x2) | GitHub Token通知 | 中 -- 暗示存在活跃token | 邮件归档整体上传, 不单独处理 |
| `/mnt/k/mails/2025-09-07 ... [GitHub] A fine-grained personal access token...eml` | GitHub Token通知 | 中 -- 暗示存在活跃token | 同上 |
| `/mnt/k/mails/2026-01-05 ... Azure DevOps personal access token...eml` | Azure Token通知 | 中 -- 暗示存在活跃token | 同上 |
| `/mnt/k/mails/2026-03-10 ... [GitHub] A fine-grained personal access token...eml` | GitHub Token通知 | 中 -- 暗示存在活跃token | 同上 |
| `/mnt/k/mails/2026-03-29 ... Azure DevOps personal access token nearing expiration.eml` | Azure Token通知 | 中 -- 暗示存在活跃token | 同上 |

## 软件自带证书 (低风险, 不需特殊处理)

| 原路径 | 类型 | 风险 | 建议 |
|--------|------|------|------|
| `/mnt/d/software/OpenSSL-Win64/bin/PEM/` | OpenSSL测试证书 | 无 -- 软件自带 | 正常处理 |
| `/mnt/d/software/OpenSSL-Win64/tests/certs/` | OpenSSL测试证书 | 无 -- 软件自带 | 正常处理 |
| `/mnt/d/software/Git/mingw64/ssl/cert.pem` | Git自带CA证书 | 无 -- 软件自带 | 正常处理 |
| `/mnt/d/software/Adobe Photoshop 2023/Required/cacert.pem` | Adobe自带CA证书 | 无 -- 软件自带 | 正常处理 |
| `/mnt/k/2_work/7_gpt_academy/.../chat_secrets.log` | 空日志(0字节) | 无 -- 空文件 | 可删除 |

---

**总计**: 26个需要关注的安全项 (排除软件自带证书和邮件通知)
