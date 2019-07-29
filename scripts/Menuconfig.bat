@echo off
if not exist main/main.cpp (
    echo.>>main/main.cpp
)
echo:
echo:Executing MENUCONFIG...
echo:Ejecutando MENUCONFIG...
start /wait "MENUCONFIG" cmd.exe /c "idf.py menuconfig"