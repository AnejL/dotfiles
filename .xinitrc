#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#-----------------------intellij wm fix

export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

#-----------------------!intellij wm fix

#-----------------------daemons

xset b off
flameshot &
numlockx &
dunst &


	#----machine specific startups
	sxhkd -c $HOME/.config/sxhkd/sxhkdrc_tp &
	#sxhkd -c $HOME/.config/sxhkd/sxhkdrc_ws &

	soundmgr set-profile tp
	#soundmgr set-profile ws
	#---!machine specific startups


#-----------------------!daemons

#-----------------------dwm and visual changes

wallpaper &

dwmbar &

calendar &  

exec dwm

#----------------------!dwm and visual changes
