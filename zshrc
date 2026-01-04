umask 077

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="jingyue"

plugins=(git history-substring-search tmux)

source $ZSH/oh-my-zsh.sh

# So I can share command history between shells
setopt inc_append_history
setopt share_history

# Set the output format of "time".
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.env_vars ]; then
    . ~/.env_vars
fi
