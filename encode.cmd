doskey encode=powershell -NoProfile -Command "$args[0].ToCharArray() ^| %% {[int][char]$_} -join '-'" $*
