#!/bin/bash
set -e

echo ""
echo "  ╔══════════════════════════════════════╗"
echo "  ║    🎯 俱乐部老板 AI 助手            ║"
echo "  ║    一键安装中...                    ║"
echo "  ╚══════════════════════════════════════╝"
echo ""

# 检测 Node.js
if ! command -v node &> /dev/null; then
    echo "❌ 未检测到 Node.js"
    echo "请访问 https://nodejs.org/zh-cn 下载安装后重试"
    exit 1
fi
echo "✅ Node.js 已就绪"

# 检测 Git
if ! command -v git &> /dev/null; then
    echo "📦 正在安装 Git..."
    if command -v brew &> /dev/null; then
        brew install git
    else
        echo "❌ 请先安装 Git: https://git-scm.com/download/mac"
        exit 1
    fi
fi
echo "✅ Git 已就绪"

# 安装 Claude Code
if ! command -v claude &> /dev/null; then
    echo "📦 正在安装 Claude Code..."
    npm install -g @anthropic-ai/claude-code
fi
echo "✅ Claude Code 已就绪"

# 下载技能包
echo "📦 正在下载俱乐部老板AI技能包..."
cd ~

if [ -d "club-owner-ai-toolkit" ]; then
    echo "📂 已有旧版本，正在更新..."
    cd club-owner-ai-toolkit
    git pull origin master 2>/dev/null
    cd ..
else
    git clone https://github.com/hgyd6y4tzm-dotcom/club-owner-ai-toolkit.git
fi

# 安装到 Claude Code
echo "🔧 正在配置AI助手..."
mkdir -p ~/.claude/projects/club-owner/memory
cp -f ~/club-owner-ai-toolkit/CLAUDE.md ~/.claude/CLAUDE.md
cp -rf ~/club-owner-ai-toolkit/memory/* ~/.claude/projects/club-owner/memory/

echo ""
echo "  ╔══════════════════════════════════════╗"
echo "  ║   ✅ 安装完成！                     ║"
echo "  ║                                    ║"
echo "  ║   现在打开终端输入: claude          ║"
echo "  ║   然后说：帮我写一条短视频稿        ║"
echo "  ╚══════════════════════════════════════╝"
echo ""
echo "  📖 GitHub: https://github.com/hgyd6y4tzm-dotcom/club-owner-ai-toolkit"
echo ""
