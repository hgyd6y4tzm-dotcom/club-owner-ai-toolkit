# AI 自安装指南

当用户说"给我安装AI凯撒智能体"或类似请求时，按以下步骤自动执行：

## 自动安装步骤

### 1. 检查 Node.js
```bash
node --version
```
如果没有 → 引导用户访问 https://nodejs.org/zh-cn 下载安装

### 2. 检查 Git
```bash
git --version
```
如果没有 → Windows: `winget install Git.Git` / Mac: `brew install git`

### 3. 安装 Claude Code
```bash
npm install -g @anthropic-ai/claude-code
```

### 4. 克隆技能包
```bash
cd ~
git clone https://github.com/hgyd6y4tzm-dotcom/club-owner-ai-toolkit.git
cd club-owner-ai-toolkit
```

### 5. 安装到 Claude Code
```bash
# Windows
copy CLAUDE.md %USERPROFILE%\.claude\CLAUDE.md
xcopy memory %USERPROFILE%\.claude\projects\club-owner\memory\ /E /I

# Mac/Linux
cp CLAUDE.md ~/.claude/CLAUDE.md
cp -r memory ~/.claude/projects/club-owner/memory/
```

### 6. 验证
```bash
claude
```
然后问它"你是谁？"，确认回答中包含"俱乐部老板"。

## 完成提示
安装完成后告诉用户：
"✅ AI凯撒智能体安装完成！以后每次想用，打开终端输入 `claude` 回车就行。现在想试试吗？"
