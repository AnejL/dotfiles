#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#-----------------------intellij wm fix

export XDG_CONFIG_HOME=$HOME/.config
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

#-----------------------!intellij wm fix

#-----------------------daemons

xset b off
flameshot &
numlockx &
dunst &

sxhkd -c $HOME/.config/sxhkd/sxhkdrc_$PROFILE &

amixer set Capture nocap 

if [ ! $PROFILE = "ws" ]; then
	amixer set Master mute 
fi

#-----------------------!daemons

#-----------------------wm and visual changes

setbg &

dbc &
calendar & 
st &
exec dwm

#----------------------!wm and visual changes
