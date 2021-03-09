#!/bin/sh
pgrep -u "$(id -u $USER)" -x "$1">/dev/null || "$@" &
