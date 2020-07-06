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
picom --config ~/.config/i3/picom.conf &

# use kvantum theme for qt5 apps
export QT_STYLE_OVERRIDE=kvantum

# start i3
exec i3
