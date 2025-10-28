# .bashrc runs for every interactive shell.

umask 077

# Prompt color
PS1='\[\033[00;36m\]\u @ \h\[\033[00m\] | \w $ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Aliases that are only needed for bash. zshrc installs the `tmux` plugin,
# which comes with the `ta` alias.
alias ta='tmux attach -t'
