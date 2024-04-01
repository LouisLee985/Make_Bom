@echo off
set "src=%~dp0python"
set "dst=%~dp0InteractiveHtmlBom\InteractiveHtmlBom"
robocopy "%src%" "%dst%" /e
pause
del "%~dp0*_*.bat"