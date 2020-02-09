#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ "$(whoami)" = "anej" ]; then
	exec startx
fi
