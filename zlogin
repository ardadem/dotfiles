[ -z $XDG_RUNTIME_DIR ] && export XDG_RUNTIME_DIR=/run/user/$(id -u)
[[ -z $DISPLAY && $(fgconsole) -eq 1 ]] && sway
