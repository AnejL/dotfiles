#!/bin/bash

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

#-----------------------hotkeys and system utilities

xset b off

#xrdb -load /home/anej/.Xresources

flameshot &

#sxhkd -c $HOME/.config/sxhkd/sxhkdrc_tp &
sxhkd -c $HOME/.config/sxhkd/sxhkdrc_ws &

numlockx &

dunst &

#-----------------------!hotkeys and system utilities

#-----------------------dwm

feh --bg-scale /home/anej/Pictures/Wallpapers/arch_2.jpg

dwmbar &

calendar &  

exec dwm

#----------------------!dwm
