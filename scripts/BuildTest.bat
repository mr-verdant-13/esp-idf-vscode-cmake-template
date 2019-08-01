@echo off
del "main\main.cpp"
echo:extern "C" > main/main.cpp
echo:{ >> main/main.cpp
echo:#include "test/%testFile%" >> main/main.cpp
echo:void app_main(); >> main/main.cpp
echo:} >> main/main.cpp
rmdir /s /q "build/esp-idf/main"
cls
idf.py build