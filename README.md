# codex-config

个人 Codex `agent 使用说明` 与 `skill` 的公开分发仓库。

## 内容

- `AGENTS.md` —— 全局 agent 工作规范（常驻层）
- `skills/session-closeout/` —— 会话收尾技能（按需加载层）

## 新环境安装

推荐用 `git clone`（比 raw 直链更稳）：

```bash
git clone https://github.com/fuyingke/codex-config.git
cd codex-config

# 1) Agent 全局说明
cp AGENTS.md ~/.codex/AGENTS.md

# 2) session-closeout 技能（放到技能目录，下一回合自动识别，无需注册）
mkdir -p ~/.codex/skills
cp -R skills/session-closeout ~/.codex/skills/
```

> 若新环境里已有 skill-installer，也可在 Codex 中从 `fuyingke/codex-config` 安装路径 `skills/session-closeout`。

> 也可用 raw 直链（部分网络下 `raw.githubusercontent.com` 可能不稳定）：
> `curl -fsSL https://raw.githubusercontent.com/fuyingke/codex-config/main/AGENTS.md -o ~/.codex/AGENTS.md`
