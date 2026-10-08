#!/usr/bin/env bash
# 同步 ~/.codex 的 agent 说明 + 白名单技能 → GitHub 分发仓库 fuyingke/codex-config
set -euo pipefail
export PATH="/opt/homebrew/bin:$PATH"

REPO_DIR="${CODEX_SYNC_DIR:-$HOME/codex-config}"
SKILLS=(session-closeout)   # ⚠️ 白名单：只公开愿意公开的技能

cd "$REPO_DIR"
git pull --ff-only -q 2>/dev/null || true

cp "$HOME/.codex/AGENTS.md" AGENTS.md
rm -rf skills; mkdir -p skills
for s in "${SKILLS[@]}"; do
  if [ -d "$HOME/.codex/skills/$s" ]; then
    cp -R "$HOME/.codex/skills/$s" "skills/$s"
  fi
done

git add -A
if git diff --cached --quiet; then
  echo "无变更"
  exit 0
fi
git commit -q -m "sync: 更新 agent 说明与技能（$(date '+%F %H:%M')）"
git push
echo "✅ 已同步并推送"
