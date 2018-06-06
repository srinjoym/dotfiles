#install zsh and antibody
function install_zsh(){
        #check if homebrew installed
        command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
        brew install zsh
        chsh -s /usr/local/bin/zsh
        brew install getantibody/tap/antibody
	echo "Installed zsh and antibody"
}

function link_files(){
	ln -s $(pwd)/zshrc ~/.zshrc
	ln -s $(pwd)/zsh_plugins.txt ~/.zsh_plugins.txt
	echo "Linked zsh dot files"
}

install_zsh
link_files
