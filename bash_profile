# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# prompt
PS1='\[\033[00;32m\]\u@\h\[\033[00m\]:\[\033[00;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors ~/.dir_colors`"
    alias ls='ls --color=auto'
else
    # If dircolors is not available, use the standard LS_COLORS
    # FIXME: port dircolors to Mac OSX
    export LS_COLORS=exfxcxdxbxegedabagacad
    alias ls='ls -G'
fi

# alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# bash completion
# TODO: Do we really need this? Isn't it loaded already?
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# customized environmental variables
if [ -f ~/.env_vars ]; then
    . ~/.env_vars
fi
