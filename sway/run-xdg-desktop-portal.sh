#!/bin/sh

dbus-update-activation-environment DISPLAY WAYLAND_DISPLAY SWAYSOCK

/usr/libexec/xdg-desktop-portal -r $@
