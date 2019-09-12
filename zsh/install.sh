#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

#install zsh and antibody
function install_zsh(){
        if [[ "$OSTYPE" == "darwin"* ]]; then
                #check if homebrew installed
                command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
                /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
                brew install zsh
                chsh -s /usr/local/bin/zsh
        elif [[ "$OSTYPE" == "linux-gnu" ]]; then
                sudo apt-get install zsh
                chsh -s $(which zsh)
        fi
t
        curl -sL git.io/antibody | sh -s
	echo "Installed zsh and antibody"
}

function link_files(){
	ln -s $DIR/zshrc ~/.zshrc
	ln -s $DIR/zsh_plugins.txt ~/.zsh_plugins.txt
	echo "Linked zsh dot files"
}

install_zsh
link_files
