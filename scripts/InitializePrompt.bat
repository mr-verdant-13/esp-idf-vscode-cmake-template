@echo off
cd /d "C:\esp-idf"
call C:\.espressif\idf_cmd_init.bat "%localappdata%\Programs\Python\Python37" "%programfiles(x86)%\Git\cmd" "%programfiles%\Git\cmd"
cd /d "%workspaceFolder%"
REM cls
echo:
echo:'idf.py' ENABLED
echo:'idf.py' HABILITADO