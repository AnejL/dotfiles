#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && source "$f"
	done
	unset f
fi

startup

case $WM in
	kde)
		exec startplasma-x11
		;;
	dwm)
		exec dwm
		;;
	*)
		echo "Welcome!"
		;;
esac
