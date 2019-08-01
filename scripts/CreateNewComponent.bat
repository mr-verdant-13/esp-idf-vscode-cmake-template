@echo off
cls
cd components
mkdir "%componentName%"
xcopy "_ComponentTemplate_" "%componentName%" /s /e
echo:
echo:%componentName% component created
echo:Componente %componentName% creado