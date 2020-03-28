#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && source "$f"
	done
	unset f
fi

# intellij wm fix
wmname LG3D

# daemons
xset b off
flameshot &
numlockx &
dunst &

sxhkd -c $HOME/.config/sxhkd/sxhkdrc_$PROFILE &

amixer set Capture nocap 

if [ ! $PROFILE = "ws" ]; then
	amixer set Master mute 
fi

# wm and visual changes
setbg &
dbc &
calendar & 
st &

exec dwm
