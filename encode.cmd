@echo off

if /I "%1"=="encode" (
    powershell -NoProfile -Command ^
    "$x=[int][char]('%~2');" ^
    "$e=(7*$x+13)%%256;" ^
    "Write-Output $e"
    exit /b
)

if /I "%1"=="decode" (
    powershell -NoProfile -Command ^
    "$x=%~2;" ^
    "$d=(183*($x-13))%%256;" ^
    "[char]$d"
    exit /b
)
