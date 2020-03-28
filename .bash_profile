#
# ~/.bash_profile
#

[ -f ~/.bashrc ] && source ~/.bashrc

source "$HOME/.config/env"

if [ "$USER" = "anej" ]; then
	exec startx
fi
