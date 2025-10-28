# .bash_profile runs once when you log in (SSH, console login, etc.)

# Run only when SSHing into dlcluster machines
if [[ -n "$SSH_CONNECTION" && $(hostname) == dlcluster-login* ]]; then
	echo
	echo "===================================="
	echo "== Current Slurm Jobs Owned by Me =="
	echo "===================================="
	squeue -u "$USER"
	echo
fi


if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
