# .zprofile runs once when you log in (SSH, console login, etc.). This file is used only by Zsh.

if command -v docker >/dev/null 2>&1; then
	echo 
	echo "==============================="
	echo "== Current Docker containers =="
	echo "==============================="
	docker ps
	echo
fi
