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
|   
+---.github
|   \---workflows
|           ci.yml
|           release.yml
|           
+---icons
|       baseline-settings-20px.svg
|       bom-grouped-32px.svg
|       bom-left-right-32px.svg
|       bom-netlist-32px.svg
|       bom-only-32px.svg
|       bom-top-bot-32px.svg
|       bom-ungrouped-32px.svg
|       btn-arrow-down.svg
|       btn-arrow-up.svg
|       btn-minus.svg
|       btn-plus.svg
|       btn-question.svg
|       copy-48px.svg
|       io-36px.svg
|       plugin.svg
|       plugin_icon_big.png
|       stats-36px.svg
|       
+---InteractiveHtmlBom
|   |   .gitattributes
|   |   dialog_test.py
|   |   errors.py
|   |   generate_interactive_bom.py
|   |   icon.png
|   |   Run.bat
|   |   version.py
|   |   __init__.py
|   |   
|   +---core
|   |       config.py
|   |       fontparser.py
|   |       ibom.py
|   |       lzstring.py
|   |       newstroke_font.py
|   |       units.py
|   |       __init__.py
|   |       
|   +---dialog
|   |   |   dialog_base.py
|   |   |   settings_dialog.py
|   |   |   __init__.py
|   |   |   
|   |   \---bitmaps
|   |           btn-arrow-down.png
|   |           btn-arrow-up.png
|   |           btn-minus.png
|   |           btn-plus.png
|   |           btn-question.png
|   |           
|   +---ecad
|   |   |   common.py
|   |   |   easyeda.py
|   |   |   fusion_eagle.py
|   |   |   genericjson.py
|   |   |   kicad.py
|   |   |   svgpath.py
|   |   |   __init__.py
|   |   |   
|   |   +---kicad_extra
|   |   |       netlistparser.py
|   |   |       parser_base.py
|   |   |       sexpressions.py
|   |   |       xmlparser.py
|   |   |       __init__.py
|   |   |       
|   |   \---schema
|   |           genericjsonpcbdata_v1.schema
|   |           
|   +---i18n
|   |       language_en.bat
|   |       language_zh.bat
|   |       
|   \---web
|       |   ibom.css
|       |   ibom.html
|       |   ibom.js
|       |   lz-string.js
|       |   pep.js
|       |   render.js
|       |   split.js
|       |   table-util.js
|       |   util.js
|       |   
|       \---user-file-examples
|               user.css
|               user.js
|               userfooter.html
|               userheader.html
|               
\---tests
        test_module.py
```

 * `automated_build.ps1` must be changed to ANSI.
```powershell
Set-ExecutionPolicy -Scope CurrentUser Bypass -Force
```
```powershell
.\automated_build.ps1
```
