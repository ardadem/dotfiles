# firefox wayland
export MOZ_ENABLE_WAYLAND=1

# android sdk path
export ANDROID_SDK_ROOT=$HOME/.AndroidSDK/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# flutter sdk path
export PATH=$PATH:$HOME/.flutter-sdk/bin

# xdg-desktop-portal
export XDG_CURRENT_DESKTOP=sway

export SDL_VIDEODRIVER=wayland
export SDL_AUDIODRIVER=pipewire

# vulkan renderer is unstable
# export WLR_RENDERER=vulkan

# set up environment and launch sway
[[ -z ${XDG_RUNTIME_DIR+x} && -d /run/user/$(id -u) ]] && \
	export XDG_RUNTIME_DIR=/run/user/$(id -u)

[[ -z ${DISPLAY} && $(fgconsole) -eq 1 ]] && \
	exec dbus-run-session -- sway
