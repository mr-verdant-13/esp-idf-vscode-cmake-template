@echo off
SetLocal EnableDelayedExpansion
set "tempFile=tempFile.json"

powershell -Command "& { Select-String -Path .vscode\tasks.json -Pattern '\"serialPort\"' -Context 1000,1 | ForEach { $_.Context.PreContext,$_.Line,$_.Context.PostContext } | Out-File "%tempFile%" }"

powershell -Command "& { $COMportList = change port ; ForEach ($COMport in $COMportList) { $([char]9) + $([char]9) + $([char]9) + $([char]9) + '\"' + $COMport.Split(' ')[0] + '\"' + ',' | Out-File "%tempFile%" -Append } }"

powershell -Command "& { $content = Get-Content "%tempFile%" ; $content[-1] = $content[-1] -replace ',', ' ' ; $content | Out-File "%tempFile%" }"

powershell -Command "& { Select-String -Path .vscode\tasks.json -Pattern '\"serialPort\"' -Context 0,1000 | ForEach { $FollowingLines=$_.Context.PostContext ; $FollowingLines | Select-String -Pattern ']' -Context 0,1000 | ForEach { $_.Line,$_.Context.PostContext ; break } | Out-File "%tempFile%" -Append ; break } }"

powershell -Command "& { Get-Content "%tempFile%" | Set-Content ".vscode\tasks.json" }"

del %tempFile%
