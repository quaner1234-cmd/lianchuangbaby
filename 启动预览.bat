@echo off
chcp 65001 >nul
title Lianchuang Baby - Astro 网站启动工具

echo.
echo ================================================
echo   Lianchuang Baby — Astro 网站启动工具
echo ================================================
echo.

:: 检查 Node.js 是否已安装
echo [1/4] 检查 Node.js 是否已安装...
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ❌ 未检测到 Node.js！
    echo.
    echo 请先安装 Node.js：
    echo 1. 打开浏览器访问 https://nodejs.org
    echo 2. 下载 LTS 版本（推荐）
    echo 3. 安装完成后重新双击本脚本
    echo.
    pause
    exit /b
)

for /f "tokens=*" %%i in ('node -v') do set NODE_VER=%%i
echo ✅ Node.js 已安装，版本：%NODE_VER%
echo.

:: 检查是否已有 node_modules
echo [2/4] 检查依赖包...
if exist "node_modules\" (
    echo ✅ 依赖包已存在，跳过安装
) else (
    echo 正在安装依赖包，请稍候（首次约需 1-3 分钟）...
    echo.
    npm install
    if %errorlevel% neq 0 (
        echo.
        echo ❌ 依赖安装失败，请检查网络连接后重试
        pause
        exit /b
    )
    echo.
    echo ✅ 依赖安装完成
)
echo.

:: 提示 Formspree
echo [3/4] 提醒：联系表单设置
echo -----------------------------------------------
echo 如果你还没有替换 Formspree ID，请：
echo 1. 打开 src\pages\index.astro
echo 2. 找到 YOUR_FORM_ID 并替换为你的真实 ID
echo 3. Formspree 免费注册：https://formspree.io
echo -----------------------------------------------
echo.

:: 启动开发服务器
echo [4/4] 启动本地预览服务器...
echo.
echo ✅ 网站启动成功！
echo.
echo 请打开浏览器访问：
echo.
echo    http://localhost:4321
echo.
echo 按 Ctrl + C 可停止服务器
echo ================================================
echo.
npm run dev

pause
