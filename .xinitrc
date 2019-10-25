#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

export DOTNET_CLI_TELEMETRY_OPTOUT=1

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

# dockd --daemon

profile=$(cat $HOME/.config/profile)
sxhkd -c $HOME/.config/sxhkd/sxhkdrc_$profile &
soundmgr "set-profile" "$profile"

#-----------------------!daemons

#-----------------------dwm and visual changes

wallpaper sf &

dwmbar &

calendar &  

exec dwm

#----------------------!dwm and visual changes
