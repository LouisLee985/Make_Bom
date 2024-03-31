# powershell -Command "Expand-Archive -Path 'python.zip' -DestinationPath 'InteractiveHtmlBom' -Force"

 robocopy  .\python .\InteractiveHtmlBom /e 
 rmdir /s/q  python

# del extract_zip.bat