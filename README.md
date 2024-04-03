### How to use [InteractiveHtmlBom](https://github.com/openscopeproject/InteractiveHtmlBom/tree/432e702d068a538683c55abd345c5756456e376b)
For [EasyEDA Std Edition](https://easyeda.com/) Windows
<br>

* Install [Python](https://www.python.org/downloads)
<br>

> ```shell
> pip install wxpython
> ```
> ```shell
> git clone --recurse-submodules https://github.com/LouisLee985/Make_Bom.git
> ```
>```shell
>@echo off
>net file 1>NUL 2>NUL || powershell Start-Process -FilePath cmd.exe -ArgumentList """/c pushd %~dp0 && %~s0 %*""" -Verb RunAs -WindowStyle Hidden

>set "rname=MakeBom"
>set "bpath=%~dp0makebom.bat"

>rem REG ADD HKEY_CLASSES_ROOT\*\shell\%rname%             /t REG_SZ        /d %rname% /f
>rem REG ADD HKEY_CLASSES_ROOT\*\shell\%rname%             /t REG_EXPAND_SZ /v "Icon" /d \"%~dp0bomicon.ico\" /f
>rem REG ADD HKEY_CLASSES_ROOT\*\shell\%rname%\Command     /t REG_SZ        /d "\"%bpath%\" \"%%1\"" /f

>REG ADD HKEY_CURRENT_USER\Software\Classes\json_auto_file\shell\open\command  /t REG_SZ /d "\"%bpath%\" \"%%1\"" /f

>del "%~dp0rightclick.bat"

>exit
```

* Double click [rightclick.bat]()

* Right click&emsp; *.json from EasyEDA Std Edition,&emsp;open with makebom.bat
