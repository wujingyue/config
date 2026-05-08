# .bashrc runs for every interactive shell.

umask 077

# Prompt color
PS1='\[\033[00;36m\]\u @ \h\[\033[00m\] | \w $ '

[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# This config is very machine dependent, so it lives locally, not in the config
# repo.
[[ -f ~/.bashenv ]] && source ~/.bashenv

# Aliases that are only needed for bash. zshrc installs the `tmux` plugin,
# which comes with the `ta` alias.
alias ta='tmux attach -t'
