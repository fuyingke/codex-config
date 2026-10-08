# codex-config

个人 Codex `agent 使用说明` 与 `skill` 的公开分发仓库。

## 内容

- `AGENTS.md` —— 全局 agent 工作规范（常驻层）
- `skills/session-closeout/` —— 会话收尾技能（按需加载层）

## 在新环境安装

### 1. Agent 说明（全局规范）

```bash
curl -fsSL https://raw.githubusercontent.com/fuyingke/codex-config/main/AGENTS.md -o ~/.codex/AGENTS.md
```

### 2. session-closeout 技能

方式 A（在 Codex 里用 skill-installer）：

```
从 GitHub 安装：fuyingke/codex-config，路径 skills/session-closeout
```

方式 B（直接克隆复制）：

```bash
git clone https://github.com/fuyingke/codex-config.git
cp -R codex-config/skills/session-closeout ~/.codex/skills/
```

> 新技能在下一回合会话启动时被自动识别，无需注册。
