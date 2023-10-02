NEWLINE=$'\n'

# Pre-condition: DOCKER_CONTAINER contains the docker container name or is
# empty if on the host.  DOCKER_CONTAINER can be set up by `docker run -e
# DOCKER_CONTAINER=<NAME>`.  This way, $DOCKER_CONTAINER is available in the
# container but not on the host.
if [ -z "${DOCKER_CONTAINER}" ]; then
	DOCKER_CONTAINER_INFO=""
else
	DOCKER_CONTAINER_INFO=" : ${DOCKER_CONTAINER}"
fi
DOCKER_CONTAINER_INFO="%{$fg[yellow]%}${DOCKER_CONTAINER_INFO}%{$reset_color%}"

USER_AT_HOST="%{$fg[cyan]%}%n @ %m%{$reset_color%}"

CURRENT_WORKING_DIR="%~"

# Primary prompt.
PROMPT="${USER_AT_HOST}${DOCKER_CONTAINER_INFO} | ${CURRENT_WORKING_DIR} \$(git_prompt_info)${NEWLINE}$ "

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$fg[red]("
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
