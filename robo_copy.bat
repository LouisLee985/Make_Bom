@echo off
set "src=%~dp0python"
set "dst=%~dp0InteractiveHtmlBom\InteractiveHtmlBom"
robocopy %~dp0 "%dst%" "*.ini" /mt /z
robocopy "%src%" "%dst%" /e
pause
del "%~dp0*_*.bat"
