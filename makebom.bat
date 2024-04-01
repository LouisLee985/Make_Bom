@echo off
set pathofEDASourceFile=%1
set FilePath=%~dp0

set option=--dark-mode --name-format %%f --dest-dir ""

set pyFilePath=%FilePath%generate_interactive_bom.py

:_convert_
if not defined pathofEDASourceFile (
	set /p pathofEDASourceFile=%i18n_draghere%
)

echo.
echo  %i18n_converting%
echo.

python %pyFilePath% %pathofEDASourceFile% %option%
set pathofEDASourceFile=

exit
