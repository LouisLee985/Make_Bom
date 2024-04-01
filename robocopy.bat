@echo off
setlocal enabledelayedexpansion
set "src=%~dp0python"
set "dst=%~dp0InteractiveHtmlBom\InteractiveHtmlBom"
cd /d "%src%"
copy /y "%src%\*.*" "!dst!\"
for /f "delims=" %%i in ('dir /b /s /ad "%src%"') do (
    set "NewFolder=%%i"
    set "NewFolder=%dst%!NewFolder:%src%=!"
    if not exist "!NewFolder!" (
        md "!NewFolder!"
    )
    copy /y "%%i\*.*" "!NewFolder!\"
)
rem pause
