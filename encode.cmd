@echo off
setlocal

if "%1"=="encode" (
    powershell -NoProfile -Command ^
    "$x=[int][char]'%~2'; ((7*$x+13)%%256)"
    exit /b
)

if "%1"=="decode" (
    powershell -NoProfile -Command ^
    "$x=%~2; [char]((183*($x-13))%%256)"
    exit /b
)

echo Uso:
echo crypto encode a
echo crypto decode 212
