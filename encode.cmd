@echo off
setlocal EnableDelayedExpansion

:loop
set /p input=^

for /f "delims=" %%A in ('powershell -NoProfile -Command ^
"$s='%input%';" ^
"if($s -match '^encode\((.*)\)$'){" ^
"  ($matches[1].ToCharArray() ^| ForEach-Object {[int][char]$_}) -join '-'" ^
"} elseif($s -match '^decode\((.*)\)$'){" ^
"  $out=''; foreach($n in $matches[1].Split('-')){$out += [char][int]$n}; $out" ^
"} else {" ^
"  'Use: encode(texto) ou decode(numeros)'" ^
"}"') do echo %%A

goto loop
