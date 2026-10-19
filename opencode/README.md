# OpenCode 配置

## 安装

```bash
git clone --recurse-submodules git@github.com:snxq/.conf.git ~/.conf
mv ~/.config/opencode ~/.config/opencode.bak  # 如果已有旧配置
ln -sfn ~/.conf/opencode ~/.config/opencode
```

## 内容

- `opencode.jsonc`: 主配置（权限、模型服务商、MCP、子代理等）
- `cli.json`: 命令行快捷键
- `AGENTS.md`: 全局工作约定（所有项目默认）

## 注意

- `.secrets/`（API key / token）与 `service.json`（含密码）**不进 git**，需在本机单独维护。
- `skills/frontend-design`、`skills/generate-changelog` 由 cc-switch 管理（软链到 `~/.cc-switch/skills/`），未纳入版本控制。
