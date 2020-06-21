#
# ~/.bashrc
# by anejL

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ncdu='ncdu --color=dark'

if [ "$USER" = "anej" ]; then
	PS1="\[$(tput setaf 4)\][ \[$(tput sgr0)\]\u@\h \[$(tput setaf 2)\]\w \[$(tput setaf 4)\]] $ \[$(tput sgr0)\]"
else
	PS1="\[$(tput setaf 4)\][ \[$(tput setaf 1)\]\u@\h \[$(tput setaf 2)\]\w \[$(tput setaf 4)\]] $ \[$(tput sgr0)\]"
fi

alias btw='neofetch'
alias vim='nvim'
alias nnn='nnn -dHi'
alias hkd='vim $HOME/.config/sxhkd/sxhkdrc_$PROFILE'

alias o='cd /opt'
alias odw='cd /opt/dwm'
alias ost='cd /opt/st'
alias ox='cd /opt/lampp'

alias f='cd $HOME/Documents/Faks/diplomska'
alias fp='cd $HOME/Documents/Faks/praksa'
alias fds='cd $HOME/Documents/Faks/diplomskiseminar/diploma'
alias ltx='cd $HOME/Documents/Latex'

alias xmp='sudo /opt/lampp/lampp'
alias cdxmp='cd /opt/lampp/'
alias cdhtd='cd /opt/lampp/htdocs'

alias reshell='sudo ln -sf /bin/dash /bin/sh'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias coldstorage='sudo mount /dev/sda2 /mnt/coldstorage && ranger /mnt/coldstorage'
