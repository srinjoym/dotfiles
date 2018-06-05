#link dotfiles to home directory
function linkScripts(){
	for i in *(.); do
		if [[ $i != "setup.zsh" ]]; then
    			echo "Linked $i"
			ln -s "~/.$i" "$i"
		fi
	done
}

#install zsh and antibody
function installZsh(){
	#check if homebrew installed
	command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
	brew install zsh
	sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
	brew install getantibody/tap/antibody
}

installZsh
linkScripts
