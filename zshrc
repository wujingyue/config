# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# See this post:
# http://unix.stackexchange.com/questions/34390/zsh-wants-to-correct-vim-to-vim
# Without this alias, 'sudo vim' will ask for correction to .vim, because zsh
# considers the vim here as an argument, and thinks .vim is a closer match.
alias sudo='nocorrect sudo'

# Set the output format of "time".
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

# Disable completing user names
zstyle ':completion:*' users

# copied from .bash_profile
# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors ~/.dir_colors`"
    alias ls='ls --color=auto'
else
    # If dircolors is not available, use the standard LS_COLORS
    # FIXME: port dircolors to Mac OSX
    LSCOLORS=exfxcxdxbxegedabagacad
    alias ls='ls -G'
fi

# alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# customized environmental variables
if [ -f ~/.env_vars ]; then
    . ~/.env_vars
fi
