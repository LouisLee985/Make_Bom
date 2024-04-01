@echo off
set "src=%~dp0python"
set "dst=%~dp0InteractiveHtmlBom\InteractiveHtmlBom"
robocopy "%src%" "%dst%" /e
pause
