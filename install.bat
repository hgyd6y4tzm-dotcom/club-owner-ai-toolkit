@echo off
chcp 65001 >nul
title 俱乐部老板AI助手 - 一键安装

echo.
echo   ╔══════════════════════════════════════╗
echo   ║    🎯 俱乐部老板 AI 助手            ║
echo   ║    一键安装中...                    ║
echo   ╚══════════════════════════════════════╝
echo.

:: 检查 Node.js
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 未检测到 Node.js，正在自动安装...
    powershell -Command "Invoke-WebRequest -Uri 'https://nodejs.org/dist/v22.12.0/node-v22.12.0-x64.msi' -OutFile '%TEMP%\nodejs-installer.msi'" 2>nul
    if exist "%TEMP%\nodejs-installer.msi" (
        msiexec /i "%TEMP%\nodejs-installer.msi" /quiet /norestart
        echo ✅ Node.js 安装完成，请重新运行本脚本
        pause
        exit /b
    ) else (
        echo ⚠️ 自动安装失败，请手动下载 Node.js: https://nodejs.org/zh-cn
        pause
        exit /b 1
    )
)

echo ✅ Node.js 已就绪

:: 检查 Claude Code
where claude >nul 2>nul
if %errorlevel% neq 0 (
    echo 📦 正在安装 Claude Code...
    call npm install -g @anthropic-ai/claude-code 2>nul
    if %errorlevel% neq 0 (
        echo ⚠️ Claude Code 安装失败，请检查网络后重试
        pause
        exit /b 1
    )
)

echo ✅ Claude Code 已就绪

:: 检查 Git
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 未检测到 Git，正在自动安装...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/git-for-windows/git/releases/download/v2.47.0.windows.1/Git-2.47.0-64-bit.exe' -OutFile '%TEMP%\git-installer.exe'" 2>nul
    if exist "%TEMP%\git-installer.exe" (
        "%TEMP%\git-installer.exe" /VERYSILENT /NORESTART
        echo ✅ Git 安装完成，请重新运行本脚本
        pause
        exit /b
    ) else (
        echo ⚠️ 自动安装失败，请手动下载 Git: https://git-scm.com/download/win
        pause
        exit /b 1
    )
)

echo ✅ Git 已就绪

:: 下载技能包
echo 📦 正在下载俱乐部老板AI技能包...
cd /d "%USERPROFILE%"

if exist "club-owner-ai-toolkit" (
    echo 📂 已有旧版本，正在更新...
    cd club-owner-ai-toolkit
    git pull origin master 2>nul
    cd ..
) else (
    git clone https://github.com/hgyd6y4tzm-dotcom/club-owner-ai-toolkit.git 2>nul
    if %errorlevel% neq 0 (
        echo ⚠️ 下载失败，请检查网络连接
        pause
        exit /b 1
    )
)

:: 安装到 Claude Code
echo 🔧 正在配置AI助手...
if not exist "%USERPROFILE%\.claude" mkdir "%USERPROFILE%\.claude"
if not exist "%USERPROFILE%\.claude\projects\club-owner" mkdir "%USERPROFILE%\.claude\projects\club-owner"
if not exist "%USERPROFILE%\.claude\projects\club-owner\memory" mkdir "%USERPROFILE%\.claude\projects\club-owner\memory"

copy /Y "%USERPROFILE%\club-owner-ai-toolkit\CLAUDE.md" "%USERPROFILE%\.claude\CLAUDE.md" >nul
xcopy /E /I /Y "%USERPROFILE%\club-owner-ai-toolkit\memory" "%USERPROFILE%\.claude\projects\club-owner\memory\" >nul

echo.
echo   ╔══════════════════════════════════════╗
echo   ║   ✅ 安装完成！                     ║
echo   ║                                    ║
echo   ║   现在打开终端输入: claude          ║
echo   ║   然后说：帮我写一条短视频稿        ║
echo   ╚══════════════════════════════════════╝
echo.
echo   📖 详细指南: https://github.com/hgyd6y4tzm-dotcom/club-owner-ai-toolkit
echo   📖 飞书文档: https://my.feishu.cn/docx/EJbYdPP4konLsTxpwWecUuuJnKf
echo.
pause
