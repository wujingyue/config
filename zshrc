umask 077

SHELL=/bin/zsh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jingyue"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history-substring-search)

source $ZSH/oh-my-zsh.sh

# Disable autocorrect
unsetopt correct_all
unsetopt nomatch

setopt inc_append_history
setopt share_history

# Set the output format of "time".
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

# Disable completing user names
zstyle ':completion:*' users

# alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# customized environmental variables
if [ -f ~/.env_vars ]; then
    . ~/.env_vars
fi
