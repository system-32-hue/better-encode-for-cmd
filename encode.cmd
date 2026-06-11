@echo off
setlocal

if "%1"=="encode" (
    powershell -NoProfile -Command ^
    "$s='%~2';$o='';foreach($c in $s.ToCharArray()){ $o+=[char](((7*[int][char]$c)+13)%%256)};$o"
)

if "%1"=="decode" (
    powershell -NoProfile -Command ^
    "$s='%~2';$o='';foreach($c in $s.ToCharArray()){ $o+=[char]((183*(([int][char]$c)-13))%%256)};$o"
)
