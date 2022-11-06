#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -all'
alias l='ls -f'
alias la='ls -a'

PS1='[\u@\h \W]\$ '

xset r rate 200 40
alias v='vim $(find -L ~/ -type f | fzf)'
alias vv='vim $(find -L . -type f | fzf)'
alias c='cd $(find -L ~ -type d | fzf);ls'
alias p='project'
alias r='. ranger'


export EDITOR=vim
export VISUAL=vim
export FZF_DEFAULT_COMMAND="find -L . -type f"
export PATH="$HOME/diff-so-fancy:$PATH"

# setxkbmap -option ctrl:nocaps
xmodmap -e "keycode 9 = Caps_Lock"; xmodmap -e "keycode 66 = Escape"
