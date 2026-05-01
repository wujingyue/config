umask 077

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="jingyue"

# I tried the `tmux` plugin at some point but it failed with `tmux
# rename-session`.
plugins=(git history-substring-search)

source $ZSH/oh-my-zsh.sh

# So I can share command history between shells
setopt inc_append_history
setopt share_history

# Set the output format of "time".
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Environmental variables go to ~/.zshenv
