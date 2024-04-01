@echo off
set "src=%~dp0python"
set "dst=%~dp0InteractiveHtmlBom\InteractiveHtmlBom"
robocopy "%src%" "%dst%" /e
del "%~dp0*_*.bat"
pause
