@echo off
setlocal

set URL=https://raw.githubusercontent.com/system-32-hue/better-encode-for-cmd/refs/heads/main/encode.cmd
set FILE=%TEMP%\encode.cmd

echo Baixando...
powershell -Command "Invoke-WebRequest '%URL%' -OutFile '%FILE%'"

echo.
echo Arquivo salvo em:
echo %FILE%

echo.
certutil -hashfile "%FILE%" SHA256

echo.
choice /M "Executar o arquivo baixado"
if errorlevel 2 goto :eof

call "%FILE%"
