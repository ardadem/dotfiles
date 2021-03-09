#!/bin/sh
if pgrep -u $UID -x $1>/dev/null
then
	exit 0
fi

$@ &

