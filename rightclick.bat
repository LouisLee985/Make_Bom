@echo off
set "rname=MakeBom"
set "bpath=%~dp0makebom.bat"

REG ADD HKEY_CLASSES_ROOT\*\shell\%rname% /t REG_SZ /d %rname% /f
REG ADD HKEY_CLASSES_ROOT\*\shell\%rname%\Command /t REG_SZ /d "%bpath% \"%%1\"" /f
REG ADD HKEY_CLASSES_ROOT\Directory\shell\%rname% /t REG_SZ /d %rname% /f
REG ADD HKEY_CLASSES_ROOT\Directory\shell\%rname%\Command /t REG_SZ /d "%bpath% -n \"%%1\"" /f