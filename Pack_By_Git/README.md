* Install [Python](https://www.python.org/downloads)
<br>

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