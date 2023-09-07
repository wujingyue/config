NEWLINE=$'\n'

# Primary prompt.
PS1="%{$fg_bold[cyan]%}%n @ %m : %~ \$(git_prompt_info)%{$reset_color%}${NEWLINE}$ "

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$fg[red]("
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
