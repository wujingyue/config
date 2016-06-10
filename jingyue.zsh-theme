local return_code="%(?..%{$fg[red]%}%?↵ %{$reset_color%})"

local user_host='%{$bg[blue]%}%{$fg[white]%} %m %{$reset_color%}'
local current_dir=' %2~$'

PROMPT="${user_host}${current_dir} "
