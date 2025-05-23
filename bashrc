umask 077

# Prompt color
PS1='\[\033[00;32m\]\u@\h\[\033[00m\]:\[\033[00;34m\]\w\[\033[00m\]\$ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
