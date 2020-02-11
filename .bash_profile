#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ "$USER" = "anej" ]; then
	exec startx
fi
