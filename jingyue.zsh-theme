local return_code="%(?..%{$fg[red]%}%?↵ %{$reset_color%})"

local user_host='%{$bg[red]%}%{$fg[white]%} %m %{$reset_color%}'
local current_dir='%{$bg[blue]%}%{$fg[white]%} %2~ %{$reset_color%}'

PROMPT="${user_host}${current_dir} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
