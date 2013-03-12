local return_code="%(?..%{$fg[red]%}%?↵ %{$reset_color%})"

local user_host='%{$fg[red]%}%m%{$reset_color%}'
local current_dir='%{$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)'

PROMPT="${user_host} ${current_dir}
%% "
RPROMPT="${return_code} ${git_branch}%1(j.fg[%j].) %@"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
