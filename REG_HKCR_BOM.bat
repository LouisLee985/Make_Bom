@echo off
setlocal enabledelayedexpansion

:: 检查管理员权限
:: net file 1>NUL 2>NUL || powershell Start-Process -FilePath cmd.exe -ArgumentList """/c pushd %~dp0 && %~s0 %*""" -Verb RunAs -WindowStyle Hidden

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo 正在请求管理员权限...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: ====================== 配置区 ======================
set "EXE_FILE=generate_interactive_bom.exe"
set "PROG_ID=InteractiveBom.Json"
set "MENU_NAME=open_with_interactivebom"
set "MENU_TEXT=InteractiveBOM"
:: ====================================================

set "EXE_PATH=%~dp0%EXE_FILE%"

echo 正在为 .json 文件添加右键菜单：%MENU_TEXT%

:: 1. 设置 .json 的默认 ProgID（推荐用独特名称，避免和其他软件冲突）
REG ADD "HKEY_CLASSES_ROOT\.json" /ve /t REG_SZ /d "%PROG_ID%" /f >nul

:: 2. 创建 ProgID 主键
REG ADD "HKEY_CLASSES_ROOT\%PROG_ID%" /f >nul
REG ADD "HKEY_CLASSES_ROOT\%PROG_ID%\shell" /f >nul

:: 3. 创建右键菜单项
set "MENU_KEY=HKEY_CLASSES_ROOT\%PROG_ID%\shell\%MENU_NAME%"
REG ADD "%MENU_KEY%" /ve /t REG_SZ /d "%MENU_TEXT%" /f >nul

:: 可选：加个小图标（推荐）
REG ADD "%MENU_KEY%" /v "Icon" /t REG_SZ /d "\"%EXE_PATH%\",0" /f >nul

:: 可选：按住 Shift 才显示（去掉则始终显示）
:: 删除下面这行就会一直显示在右键菜单，而不是只有按 Shift 才出现
REG ADD "%MENU_KEY%" /v "Extended" /t REG_SZ /d "" /f >nul

:: 4. 设置执行命令
set "COMMAND_KEY=%MENU_KEY%\command"
REG ADD "%COMMAND_KEY%" /ve /t REG_SZ /d "\"%EXE_PATH%\" \"%%1\"" /f >nul

echo.
echo ========================================
echo    .json 文件Shift+右键 即可看到：
echo   → %MENU_TEXT%
echo ========================================
echo.
pause
del "%~dp0REG_HKCR_BOM.bat"
endlocal
