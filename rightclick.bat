@echo off
set "rname=MakeBom"
set "bpath=%~dp0makebom.bat"

REG ADD HKEY_CLASSES_ROOT\*\shell\%rname%             /t REG_SZ        /d %rname% /f
REG ADD HKEY_CLASSES_ROOT\*\shell\%rname%             /t REG_EXPAND_SZ /v "Icon" /d \"%~dp0bomicon.ico\" /f
REG ADD HKEY_CLASSES_ROOT\*\shell\%rname%\Command     /t REG_SZ        /d "\"%bpath%\" \"%%1\"" /f

REG ADD HKEY_CURRENT_USER\Software\Classes\json_auto_file\shell\open\command  /t REG_SZ /d "\"%bpath%\" \"%%1\"" /f

exit
