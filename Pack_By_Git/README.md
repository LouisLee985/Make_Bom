* Install [Python](https://www.python.org/downloads)
```cmd
set "http_proxy=http://192.168.10.103:10810"
set "https_proxy=http://192.168.10.103:10810"
# set "http_proxy=http://127.0.0.1:10808
# set "https_proxy=http://127.0.0.1:10808
```
```cmd
python.exe -m pip install --upgrade pip
pip install pyinstaller
```
```
git clone --recurse-submodules https://github.com/openscopeproject/InteractiveHtmlBom.git
```
```txt
InteractiveHtmlBom
|   .gitignore
|   .jsbeautifyrc
|   automated_build.ps1
|   bomicon.ico
|   DATAFORMAT.md
|   LICENSE
|   pyproject.toml
|   README.md
|   settings_dialog.fbp
|   __init__.py
+---.github
+---icons
+---InteractiveHtmlBom
\---tests
```

 * `automated_build.ps1` must be changed to ANSI.
```powershell
Set-ExecutionPolicy -Scope CurrentUser Bypass -Force
```
```powershell
.\automated_build.ps1
```

 * Copy `REG_HKCR_BOM.bat` into `InteractiveHtmlBom\dist\generate_interactive_bom\` , then share `generate_interactive_bom`.
