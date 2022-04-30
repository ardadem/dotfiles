export MOZ_ENABLE_WAYLAND=1

[[ -z ${XDG_RUNTIME_DIR+x} && -d /run/user/$(id -u) ]] && \
	export XDG_RUNTIME_DIR=/run/user/$(id -u)

[[ -z ${DISPLAY} && $(fgconsole) -eq 1 ]] && \
	exec dbus-run-session -- sway
