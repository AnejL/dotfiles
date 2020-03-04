#
# ~/.bashrc
# by anejL

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

if [ "$(whoami)" = "anej" ]; then
	PS1="\[$(tput setaf 4)\][ \[$(tput sgr0)\]\u@\h \[$(tput setaf 2)\]\w \[$(tput setaf 4)\]] $ \[$(tput sgr0)\]"
else
	PS1="\[$(tput setaf 4)\][ \[$(tput setaf 1)\]\u@\h \[$(tput setaf 2)\]\w \[$(tput setaf 4)\]] $ \[$(tput sgr0)\]"
fi

source "$HOME/.env"

alias hkd='vim $HOME/.config/sxhkd/sxhkdrc_$PROFILE && sxhkd -c $HOME/.config/sxhkd/sxhkdrc_$PROFILE'

alias o='cd /opt'
alias odw='cd /opt/dwm'
alias ost='cd /opt/st'
alias ox='cd /opt/lampp'

alias psyu='sudo pacman -Syu'
alias psyyu='sudo pacman -Syyu'

alias vim='nvim'
alias ds='cd $SCRIPTDIR'
alias dsd='cd $SCRIPTDIR/dbc' 
alias dsa='cd $SCRIPTDIR/archer'
alias dss='cd $SCRIPTDIR/sound'
alias dsb='cd $SCRIPTDIR/backupper'

alias mt='$SCRIPTDIR/mount.sh'

alias aura='$SCRIPTDIR/aura/aura.sh'
alias gc='$SCRIPTDIR/gitpush.sh'

alias brc='vim $HOME/.bashrc'
alias vimrc='vim $HOME/.config/nvim/init.vim'

alias cpwd='$SCRIPTDIR/cpwd.sh'
alias nnn='nnn -dHi'
alias new='$SCRIPTDIR/newbashscript.sh'
alias newc='$SCRIPTDIR/newcprogram.sh'
alias bkpc='$SCRIPTDIR/backupc.sh'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

alias xmp='sudo /opt/lampp/lampp'
alias cdxmp='cd /opt/lampp/'
alias cdhtd='cd /opt/lampp/htdocs'
alias f='cd $HOME/Documents/Faks/diplomska'

alias vrc='nvim $HOME/.config/nvim/init.vim'
alias btw='neofetch'
alias tpo='cd $HOME/Documents/Faks/5_semester/TPO/seminarska/tello-studio'

alias addrule='$SCRIPTDIR/addufwrule.sh'
alias reshell='sudo ln -sf /bin/dash /bin/sh'
alias adddate='vim $SCRIPTDIR/calendar/importantdates'
