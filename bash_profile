# .bash_profile runs once when you log in (SSH, console login, etc.). This file
# is used only by Bash.

if [[ -n "$SSH_CONNECTION" && $(hostname) == dlcluster-login* ]]; then
	echo
	echo "===================================="
	echo "== Current Slurm Jobs Owned by Me =="
	echo "===================================="
	squeue -u "$USER"
	echo
fi

if command -v docker >/dev/null 2>&1; then
	echo
	echo "==============================="
	echo "== Current Docker containers =="
	echo "==============================="
	docker ps
	echo
fi

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
