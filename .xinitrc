#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#-----------------------spyware fix

export DOTNET_CLI_TELEMETRY_OPTOUT=1 
export FREETYPE_PROPERTIES="truetype:interpreter-version=35"

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

profile=$(cat $HOME/.config/profile)
sxhkd -c $HOME/.config/sxhkd/sxhkdrc_$profile &
soundmgr "set-profile" "$profile"

#-----------------------!daemons

#-----------------------wm and visual changes

wallpaper sf &

wm=$(cat "$HOME/.config/wm")

if [ "$wm" = "dwm" ]; then
	dwmbar &
	calendar &  
	exec dwm
elif [ "$wm" = "i3" ]; then
	exec i3	
else
	exec bspwm
fi

#----------------------!wm and visual changes
