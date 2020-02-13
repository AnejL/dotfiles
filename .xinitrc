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

#-----------------------!daemons

#-----------------------wm and visual changes

wallpaper sf &
amixer set Capture nocap &
amixer set Master mute &

wm=$(cat "$HOME/.config/wm")

if [ "$wm" = "dwm" ]; then
	dbc &
	calendar &  
	st &
	exec dwm
elif [ "$wm" = "i3" ]; then
	exec i3	
fi

#----------------------!wm and visual changes
