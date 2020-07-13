#!/bin/sh

# pass display environemnt
systemctl --user import-environment DISPLAY

# set keyboard layout
setxkbmap tr

# set numlock on
numlockx on

# set wallpaper
~/.fehbg &

# start x compositor
picom --config ~/.config/picom/picom.conf &

# use kvantum theme for qt5 apps
export QT_STYLE_OVERRIDE=kvantum

# start wm
exec bspwm
