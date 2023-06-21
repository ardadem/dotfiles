# firefox wayland
export MOZ_ENABLE_WAYLAND=1

# flutter sdk path
export PATH=$PATH:$HOME/.flutter-sdk/bin

# sdl2 variables
export SDL_VIDEODRIVER=wayland
export SDL_AUDIODRIVER=pipewire

# vulkan renderer is unstable
# export WLR_RENDERER=vulkan

# xdg-desktop-portal
export XDG_CURRENT_DESKTOP=sway

# force qt apps to use adwaita-dark
export QT_STYLE_OVERRIDE=Adwaita-dark

[[ -z ${DISPLAY} && $(fgconsole) -eq 1 ]] && \
	exec dbus-run-session -- sway
