#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

eval "$(zoxide init bash)"
source "$HOME/.bash_aliases"
source "$HOME/.bash_secret_aliases"
catnap

# uv
export PATH="/home/dxth/.local/bin:$PATH"
