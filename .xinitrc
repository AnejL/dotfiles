#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && source "$f"
	done
	unset f
fi

startup

[ $WM = "kde" ] && exec startplasma-x11 || exec dwm
