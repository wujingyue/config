umask 077

# Prompt color
PS1='\[\033[00;36m\]\u @ \h\[\033[00m\] | \w $ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Aliases that are not needed for zsh. zshrc also includes .bash_aliases.
alias ta='tmux attach -t'
