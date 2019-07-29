@echo off
cls
setlocal EnableDelayedExpansion
set fileName=
if %testNumber% lss 10000 (
    set "fileName=000%testNumber%"
    set fileName=!fileName:~-5!
    set "fileName=test!fileName!"
    if exist "main\test\!fileName!.cpp" (
        set "fileName=!fileName!.cpp"
    ) else ( if exist "main\test\!fileName!.c" (
        set "fileName=!fileName!.c"
    ) else (
        cls
        echo:The !fileName! test does not exist
        echo:El test !fileName! no existe
        goto exit
    ))
    @echo extern "C" > main/main.cpp
    @echo { >> main/main.cpp
    @echo #include "test/!fileName!" >> main/main.cpp
    @echo void app_main^(^); >> main/main.cpp
    @echo } >> main/main.cpp
    rmdir /s /q "build/esp-idf/main"
    idf.py build
) else (
    echo:"Test number out of range"
    echo:"Numero de test fuera de rango"
)
:exit