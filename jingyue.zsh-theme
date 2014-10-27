local return_code="%(?..%{$fg[red]%}%?↵ %{$reset_color%})"

local user_host='%{$fg[red]%}%m%{$reset_color%}'
local current_dir='%{$fg[blue]%}%c%{$reset_color%}'

PROMPT="${user_host} ${current_dir}%% "
RPROMPT="${return_code} %1(j.fg[%j].)"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
