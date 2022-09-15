# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d ~/afs/bin ] ; then
	export PATH=~/afs/bin:$PATH
fi

if [ -d ~/.local/bin ] ; then
	export PATH=~/.local/bin:$PATH
fi

eval `dircolors /home/merlin.farez/afs/.ls_color`

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=vim
#export EDITOR=emacs

# Color support for less
#export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias ls='ls --color=auto'
alias grep='grep --color -n'

#Shortcuts
alias cs='clear; ls'

#Cd shortcuts
alias pis='cd ~/afs/piscine/merlin.farez-piscine-2024'
alias proj='cd ~/afs/projects'
alias 42='cd ~/afs/42SH'
alias cours='cd ~/afs/cours'
alias tigr='cd ~/afs/cpp/tigrecompile/'

#C/C++
alias gc='gcc -Wall -Wextra -Werror -pedantic -std=c99 -g'
alias g+='g++ -Wall -Wextra -Werror -pedantic -std=c++20 -g'

#Clang
alias c+='clang-format -i */*.cc; clang-format -i */*.hh; clang-format -i */*.hxx;'
alias clrde='
     find . -type f -name "*.cc" -exec clang-format --style=file -i {} ";";
     find . -type f -name "*.hh" -exec clang-format --style=file -i {} ";";
     find . -type f -name "*.hxx" -exec clang-format --style=file -i {} ";"'

#Python
alias p3='python3'

#Git
alias gp='git push --follow-tags'
alias gd='git add'
alias com='git commit -asm'
alias gt='git tag -a'
alias gst='git status'
alias glo='git log --oneline'

term_size 14;


PS1="\[\033[38;5;220m\]{\A}\[$(tput sgr0)\]\[\033[38;5;214m\] \u:\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;208m\]\w \[$(tput sgr0)\]\[\033[38;5;4m\][\[$(tput sgr0)\]\[\033[38;5;196m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\[\033[38;5;4m\]]\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;14m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
#PS1="\[\033[38;5;220m\]{\A}\[$(tput sgr0)\]\[\033[38;5;214m\] \u:\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;208m\]\w\[$(tput sgr0)\]\n$(git branch 2>/dev/null | grep ‘“‘“‘^*’”‘“‘ | colrm 1 2)[\e[0m]\n\]\$ \[$(tput sgr0)\]"
#PS1='[\u@\h \W]\$ '
