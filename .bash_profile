#
# ~/.bash_profile
#

[ -f ~/.bashrc ] && source ~/.bashrc

if [ "$USER" = "anej" ]; then
	exec startx
fi
