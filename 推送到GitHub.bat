@echo off
chcp 65001 >nul
title Lianchuang Baby - 推送到 GitHub

echo.
echo ================================================
echo   Lianchuang Baby — 推送到 GitHub
echo ================================================
echo.

:: 检查 git 是否安装
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ 未检测到 Git！
    echo.
    echo 请先安装 Git：
    echo 访问 https://git-scm.com 下载安装
    echo 安装后重新运行本脚本
    echo.
    pause
    exit /b
)
echo ✅ Git 已安装
echo.

:: 输入 GitHub 仓库地址
echo 请输入你的 GitHub 仓库地址
echo 格式示例：https://github.com/你的账号/lianchuangbaby.git
echo.
set /p REPO_URL=仓库地址：
echo.

if "%REPO_URL%"=="" (
    echo ❌ 地址不能为空，请重新运行
    pause
    exit /b
)

:: 初始化并推送
echo 正在初始化 Git 仓库...
git init
git add .
git commit -m "deploy: lianchuang baby sleeping bag astro site"
git branch -M main
git remote remove origin >nul 2>&1
git remote add origin %REPO_URL%

echo.
echo 正在推送到 GitHub...
git push -u origin main

if %errorlevel% neq 0 (
    echo.
    echo ❌ 推送失败。可能原因：
    echo    1. 仓库地址输入有误
    echo    2. 未登录 GitHub（首次需要输入账号密码或Token）
    echo    3. 网络问题
    echo.
) else (
    echo.
    echo ================================================
    echo ✅ 推送成功！
    echo.
    echo 下一步：去 Cloudflare Pages 连接这个仓库
    echo 1. 登录 cloudflare.com
    echo 2. Workers ^& Pages → Create → Pages
    echo 3. Connect to Git → 选择仓库
    echo 4. Build command: npm run build
    echo 5. Output directory: dist
    echo ================================================
)
echo.
pause
