@echo off
cd "C:\esp-idf"
call C:\.espressif\idf_cmd_init.bat %localappdata%\Programs\Python\Python37 %programfiles(x86)%\Git\cmd %programfiles%\Git\cmd
cd "%workspaceFolder%"
cls
echo:
echo:'idf.py' ENABLED
echo:'idf.py' HABILITADO